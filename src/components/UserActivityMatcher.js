import React, {useState} from 'react';
import Axios from 'axios';

const UserActivityMatcher = () => {
    const [activity, setActivity] = useState("");

    const searchActivity = () => {
        Axios.post('http://localhost:3001/api/activity', {
            activity: activity}).then(() => {
            alert("successful insert");
        });
    };

    return (
        <>
            <form className="form"> 
            <input type = "text" name = "activity" id = "activity" onChange = {(e) => {
                            setActivity(e.target.value);
                        }}
                        placeholder = "What activity are you looking for?" required/>
                <button type = "submit" onClick = {searchActivity} >Search Parks</button>
            </form>
        </>
    )
}

export default UserActivityMatcher