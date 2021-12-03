import React, { useState } from 'react';
import Axios from "axios";

const SignUp = () => {
    const [userName, setUserName] = useState("");
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    const [firstName, setFirstName] = useState("");
    const [lastName, setLastName] = useState("");

    const createNewUser = () => {
        Axios.post('http://localhost:3001/api/insert', {
            userName: userName, 
            password: password, 
            firstName: firstName, 
            lastName: lastName,
            email: email}).then(() => {
            alert("successful insert");
        });
    };
    return (
        <>
            <section className = "showcase login">
                <div className = "overlay">
                    <form className = "form">

                        <input type = "text" name = "username" id = "username" onChange = {(e) => {
                            setUserName(e.target.value);
                        }}
                        placeholder = "Username" required/>

                        <input type = "email" name = "email" id = "email" onChange = {(e) => {
                            setEmail(e.target.value);
                        }}
                        placeholder = "Your email address" required/>

                        <input type = "password" name = "password" id = "password" onChange = {(e) => {
                            setPassword(e.target.value);
                        }}
                        placeholder = "Enter your password" required/>

                        <input type = "text" name = "FirstName" id = "F_Name" onChange = {(e) => {
                            setFirstName(e.target.value);
                        }}
                        placeholder = "First Name" required/>

                        <input type = "text" name = "LastName" id = "L_Name" onChange = {(e) => {
                            setLastName(e.target.value);
                        }}
                        placeholder = "Last Name" required/>

                        <button type = "submit" onClick = {createNewUser} >Create your account</button>
                    </form>
                </div>
            </section>
        </>
    )
}

export default SignUp 