import React, { useState } from 'react';
import Axios from "axios";

const UserPlans = () => {

    const [UserID, setUserID] = useState("");
    const [email, setEmail] = useState("");
    const [ParkCode, setParkCode] = useState("");
    const [Confirm_Date, setConfirm_Date] = useState("");
    const [errorMessage, setErrorMessage] = useState("");

    const PlanConfirm = () => {
        Axios.post('http://localhost:3001/api/PlanConfirm', {
            UserID: UserID, 
            ParkCode: ParkCode, 
            Confirm_Date: Confirm_Date,
            email: email}).then((response) => {
                setErrorMessage(response.data.message);
        });
    };

    return (
        <>
            <section className = "showcase login">
                <div className = "overlay">
                    <div className = "form">

                        <input type = "text" name = "UserID" id = "UserID" onChange = {(e) => {
                            setUserID(e.target.value);
                        }}
                        placeholder = "UserID" required/>

                        <input type = "email" name = "email" id = "email" onChange = {(e) => {
                            setEmail(e.target.value);
                        }}
                        placeholder = "Your email address" required/>

                        <label for="start">Confirm_Date:</label>
                        <input type="date" id="start" name="Confirm_Date"
                            min="2021-11-01" max="2022-12-31" onChange = {(e) => {
                                setConfirm_Date(e.target.value);
                            }} required/>

                        <input type = "text" name = "ParkCode" id = "ParkCode" onChange = {(e) => {
                            setParkCode(e.target.value);
                        }}
                        placeholder = "Enter ParkCode You want to go" required/>

                        <button type = "submit" onClick = {PlanConfirm} >Plan Confirmed</button>
                        <h1>{errorMessage} </h1>
                        
                    </div>
                </div>
            </section>
        </>
    )
}

export default UserPlans