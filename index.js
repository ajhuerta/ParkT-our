const express = require("express");
const cors = require('cors');
const app = express();
const mysql = require("mysql");

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: 'Snoopy12345@',
  database: 'cs411'
});

// middleware
app.use(cors());
app.use(express.json());
app.use(express.urlencoded());

connection.connect((err) => {
  if (err) throw err;
  console.log('Connected to MySQL Server!');
  //var sqlinsert = "INSERT INTO Activities (ParkCode, ActivityID, ActivityName) VALUES ('test', 'testID', 'Astronomy')";
  //connection.query(sqlinsert, (err, result) => {
    //  if(err) throw err;
      //console.log("new record inserted")
  //});
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


app.post("/api/activity", (req, res) => {
    const activity = req.body.activity;

    console.log(activity)

    var sqlSearchActivity = "SELECT ParkCode FROM Activities WHERE ActivityName = ?";
    connection.query(sqlSearchActivity, [activity], (err, result) => {
        if(err) throw err;

        console.log(result);
        console.log("query search successful");
    });
});

app.post("/api/user-delete", (req, res) => {
    const userID = req.body.userID;

    var sqlDeleteUser = "DELETE FROM User WHERE UserID = ?";
    connection.query(sqlDeleteUser, [userID], (err, result) => {
        if(err) throw err;

        console.log(result);
    });
});

app.post("/api/change-email", (req, res) => {
    const confirmUserID = req.body.confirmUserID;
    const newEmail = req.body.newEmail;

    var sqlUpdateEmail = "UPDATE User SET Email = ? WHERE UserID = ?";
    connection.query(sqlUpdateEmail, [newEmail, confirmUserID], (err, result) => {
        if(err) throw err;

        console.log(result);
    });
});

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
})

app.post("/api/budget", (req,res) => {
    const entranceFeeQuery2 = req.body.entranceFeeQuery2;
    const temperature = req.body.temperature

    console.log("budget called");

    var sqlbudget = "SELECT * FROM Park INNER JOIN Weather ON Park.ParkCode = Weather.ParkCode WHERE Entrance_Fee < (SELECT AVG(";
    connection.query(sqlbudget, (err, result) => {
        if(err) throw err;

        console.log(result);
    })
})

app.listen(3001, () => {
    console.log("running on port 3001");
});