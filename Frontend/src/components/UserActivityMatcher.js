import React, {useState} from 'react';
import Axios from 'axios';

const UserActivityMatcher = () => {
    const [activity, setActivity] = useState("");
    const [activitylist, setActivitylist] = useState([]);
    
    const searchActivity = () => {
        Axios.get(`http://localhost:3001/api/activitysearch/${activity}`).then((response) => {
            setActivitylist(response.data);   
        });
    };
    
    //const showActivity = () => {
    //    Axios.get("http://localhost:3001/api/showallparkcode").then((response) => {
    //        setActivitylist(response.data);
    //    });
    //};

    /*
    useEffect(() => {
        Axios.get("http://localhost:3001/api/showallparkcode").then((response) => {
            setActivitylist(response.data);
        });
    }, []);
    */

    /*
    const searchActivity = () => {
        Axios.post('http://localhost:3001/api/activity', {
            activity: activity}).then((response) => {
                setActivitylist(response.data);
        });
    };
    */
    return (
        <>
            <div className="form"> 
            <input type = "text" name = "activity" id = "activity" onChange = {(e) => {
                            setActivity(e.target.value);
                        }}
                        placeholder = "What activity are you looking for?" required/>
            <button onClick={searchActivity}>Search Parks</button>
            {activitylist.map((val) => {
                    return<p> ParkName: {val.ParkName} | ActivityName: {val.ActivityName}
                    </p>
            })}
            </div>
        </>
        
    )
}

export default UserActivityMatcher