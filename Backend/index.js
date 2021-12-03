const express = require("express");
const cors = require('cors');
const app = express();
const mysql = require("mysql");

//var db = mysql.createConnection({
const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'D3@3v3i3d',
  database: 'cs411',
  multipleStatements: true
});

// middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded());

connection.connect((err) => {
  if (err) throw err;
  console.log('Connected to MySQL Server!');
  
});

app.post("/api/insert", (req, res) => {

    const userName = req.body.userName;
    const email = req.body.email;
    const password = req.body.password;
    const firstName = req.body.firstName;
    const lastName = req.body.lastName;
    console.log(userName);

    var sqlInsertUser = "INSERT INTO User (UserID, Password, Firstname, Lastname, Email) VALUES (?, ?, ?, ?, ?)";
    connection.query(sqlInsertUser, [userName, password, firstName, lastName, email], (err, result) => {
        if(err) throw err;
        
        console.log(result);

    });
});

app.post("/api/PlanConfirm", (req, res) => {

    const UserID = req.body.UserID;
    const email = req.body.email;
    const ParkCode = req.body.ParkCode;
    const Confirm_Date = req.body.Confirm_Date;

    var sqlPlanConfirm = "INSERT INTO Plan_Confirmed (UserID, email, ParkCode, Confirm_Date) VALUES (?, ?, ?, ?)";
    connection.query(sqlPlanConfirm, [UserID, email, ParkCode, Confirm_Date], (err, result) => {
        if(err) throw err;
        
        console.log(result);
        res.json({ message: "User Plan is received" });

    });
});

/*
app.post("/api/activity", (req, res) => {
    const activity = req.body.activity;
    console.log(activity)
    var sqlSearchActivity = "SELECT ParkCode FROM Activities WHERE ActivityName = ?";
    connection.query(sqlSearchActivity, [activity], (err, result) => {
        if(err) throw err;
        console.log(result);
        console.log("query search successful");
        console.log(sqlSearchActivity, activity);
        res.send(result);
    });
});
*/
app.get("/api/activitysearch/:activity", (req, res) => {
    const activity = "%" + req.params.activity + "%";
    const sqlSearchActivity = "SELECT Park.ParkName, ActivityName FROM Activities NATURAL JOIN Park WHERE ActivityName LIKE ?";
    connection.query(sqlSearchActivity, [activity], (err, result) => {
        if(err) throw err;
        console.log(result);
        console.log("query search successful");
        console.log(sqlSearchActivity, activity);
        res.send(result);
      }
    );
});

app.get("/api/showallparkcode", (req, res) => {
    connection.query("SELECT * FROM Activities WHERE ActivityName = 'Biking'", (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result);
      }
    });
});

app.post("/api/login", (req, res) => {
    const userID = req.body.userID;
    const password = req.body.password;
  
    connection.query(
      "SELECT * FROM User WHERE userID = ?",
      userID,
      (err, results) => {
        if (err) {
          console.log(err);
        }
        if (results.length > 0) {
          if (password == results[0].password) {
            res.json({ loggedIn: true, userID: userID });
            console.log("Login Success");
          } else {
            console.log("Login Failed");
            res.json({
              loggedIn: false,
              message: "Wrong userID/password combo!",
            });
          }
        } else {
          res.json({ loggedIn: false, message: "User doesn't exist" });
        }
      }
    );
});

app.post("/api/user-delete", (req, res) => {
    const userID = req.body.userID;

    var sqlDeleteUser = "DELETE FROM User WHERE UserID = ?";
    connection.query(sqlDeleteUser, [userID], (err, result) => {
        if(err) throw err;
        console.log(result);
        res.json({message: "User Account is deleted" });
    });
});


app.post("/api/create_recommendation", (req, res) => {

    const Park_Keyword = "%" + req.body.Park_Keyword + "%";
    const Act_Keyword = "%" + req.body.Act_Keyword + "%";
    const select_date = req.body.select_date;

    let convert = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']
    const dateData = new Date(select_date);
    const select_day = convert[dateData.getDay()];
    console.log(select_day);

    var sqlSearchEng = "call rec(?, ?, ?, ?)";
    connection.query(sqlSearchEng, [Park_Keyword, select_date, select_day, Act_Keyword], (err, result) => {
        if(err) throw err;
        console.log(result);
        console.log("query search successful");
        res.send(result);
    });
});

app.get("/api/ShowRec", (req, res) => {
    connection.query("SELECT * FROM Recommendation", (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result);
      }
    });
});


app.get("/api/create_recommendation/:Park_Keyword&:Act_Keyword&:select_date", (req, res) => {

    const Park_Keyword = "%" + req.params.Park_Keyword + "%";
    const Act_Keyword = "%" + req.params.Act_Keyword + "%";
    const select_date = req.params.select_date;

    let convert = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday']
    const dateData = new Date(select_date);
    const select_day = convert[dateData.getDay()];
    console.log(select_day);

    const sqlSearchEng = "call rec(?, ?, ?, ?)";
    connection.query(sqlSearchEng, [Park_Keyword, select_date, select_day, Act_Keyword], (err, result) => {
        if(err) throw err;
        console.log(result);
        console.log("query search successful");
        res.send(result);
      }
    );
});

app.post("/api/change-email", (req, res) => {
    const confirmUserID = req.body.confirmUserID;
    const newEmail = req.body.newEmail;

    var sqlUpdateEmail = "UPDATE User SET Email = ? WHERE UserID = ?";
    connection.query(sqlUpdateEmail, [newEmail, confirmUserID], (err, result) => {
        if(err) throw err;

        console.log(result);
        res.json({message: "User Email is changed" });
    });
});
/*
app.post("/api/park-count", (req, res) => {
    const artsAndCrafts = req.body.artsAndCrafts;
    const astronomy = req.body.astronomy;
    const stargazing = req.body.stargazing;
    const entranceFeeQuery1 = req.body.entranceFeeQuery1;

    console.log("park-count called");

    var sqlParkCount = "";
    connection.query(sqlParkCount, (err, result) => {
        if(err) throw err;

        console.log(result)
    });
});
*/

app.post("/api/budget", (req,res) => {
    const entranceFeeQuery2 = req.body.entranceFeeQuery2;
    const temperature = req.body.temperature

    console.log("budget called");

    var sqlbudget = "SELECT * FROM Park INNER JOIN Weather ON Park.ParkCode = Weather.ParkCode WHERE Entrance_Fee < (SELECT AVG(";
    connection.query(sqlbudget, (err, result) => {
        if(err) throw err;

        console.log(result);
    })
});

app.listen(3001, () => {
    console.log("running on port 3001");
});

