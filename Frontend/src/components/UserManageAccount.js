import React, {useState} from 'react';
import Axios from 'axios';

const UserManageAccount = () => {
    //used to delete user account
    const [userID, setUserID] = useState("");

    //used to change the email associated with a user
    const [newEmail, setNewEmail] = useState(""); 
    const [confirmUserID, setConfirmUserID] = useState("");

    //function to delete a user form the database
    const deleteUser = () => {
        Axios.post('http://localhost:3001/api/user-delete', {
            userID: userID}).then(() => {
            alert("user has been deleted");
        });
    };

    //function update the email address of a user
    const updateEmail = () => {
        Axios.post('http://localhost:3001/api/change-email', {
            confirmUserID: confirmUserID,
            newEmail: newEmail}).then(() => {
                alert("user has changed email address");
            });
    }

    return (
        <>
            <h1>DELETE ACCCOUNT</h1>
            <form className="form"> 
            <input type = "text" name = "userID" id = "userID" onChange = {(e) => {
                            setUserID(e.target.value);
                        }}
                        placeholder = "Enter UserID" required/>
                <button type = "submit" onClick = {deleteUser} >Submit Changes</button>
            </form>

            <h1>UPDATE Email</h1>
            <form className="form"> 
            <input type = "text" name = "userID" id = "userID" onChange = {(e) => {
                            setConfirmUserID(e.target.value);
                        }}
                        placeholder = "Enter UserID" required/>

            <input type = "text" name = "email" id = "email" onChange = {(e) => {
                            setNewEmail(e.target.value);
                        }}
                        placeholder = "Enter New Email" required/>
                <button type = "submit" onClick = {updateEmail} >Submit Changes</button>
            </form>
        </>
    )
}

export default UserManageAccount