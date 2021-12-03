import React, {useState} from 'react'
import Axios from 'axios';

const UserDashboard = () => {
    //Variables for query 1
    const [artsAndCrafts, setartsAndCrafts] = useState(false);
    const [astronomy, setastronomy] = useState(false);
    const [stargazing, setStargazing] = useState(false);
    const [entranceFeeQuery1, setEntranceFeeQuery1] = useState("");

    //Variables for query 2
    const [entranceFeeQuery2, setEntranceFeeQuery2] = useState("");
    const [temperature, setTemperature] = useState("");

    const activityQuery = () => {
        Axios.post('http://localhost:3001/api/park-count', {
            artsAndCrafts: artsAndCrafts, 
            astronomy: astronomy, 
            stargazing: stargazing, 
            entranceFeeQuery1: entranceFeeQuery1}).then(() => {
            alert("activity query worked");
        });
    }
    
        const budgetQuery = () => {
            Axios.post('http://localhost:3001/api/budget', {
                entranceFeeQuery2: entranceFeeQuery2,
                temperature: temperature}).then(() => {
                alert("budget query worked");
            });
        }

    return (
        <>
        <h1>Find how many parks have your favorite activity!</h1>
        <div>
            <label>
                <input type="checkbox" checked = {artsAndCrafts} onChange = {(e) => setartsAndCrafts(e.target.checked)} />
                Arts and Crafts
            </label>
        </div>

        <div>
            <label>
                <input type="checkbox" checked = {astronomy} onChange = {(e) => setastronomy(e.target.checked)} />
                Astronomy
            </label>
        </div>

        <div>
            <label>
                <input type="checkbox" checked = {stargazing} onChange = {(e) => setStargazing(e.target.checked)}/>
                Stargazing
            </label>
        </div>
        <h3>Extra Filters:</h3>
        <form className="form"> 
            <input type = "text" name = "entrancefee1" id = "entrancefee1" onChange = {(e) => {
                            setEntranceFeeQuery1(e.target.value);
                        }}
                        placeholder = "Enter Entrace Fee Preference" required/>
                <button type = "submit"  onClick = {activityQuery}>Submit Request</button>
            </form>

            <h1>On a budget? Find the park for you!</h1>

            <form className="form"> 
            <input type = "text" name = "entrancefee2" id = "entrancefee2" onChange = {(e) => {
                            setEntranceFeeQuery2(e.target.value);
                        }}
                        placeholder = "Enter Entrace Fee Preference" required/>
            
            <h3>Extra Filters:</h3>
            <input type = "text" name = "temperature" id = "userID" onChange = {(e) => {
                            setTemperature(e.target.value);
                        }}
                        placeholder = "Enter Entrace Fee Preference" required/>
                <button type = "submit" onClick = {budgetQuery}>Submit Request</button>
            </form>
        </>
    )
}
export default UserDashboard