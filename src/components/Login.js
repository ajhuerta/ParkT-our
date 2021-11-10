import React, { useState, useEffect } from 'react'
import Axios from 'axios';

const Login = () => {
    const [userEmail, setUserEmail] = useState('');
    const [userPassword, setuserPassword] = useState('');

    const submitForm = () => {
        Axios.post('')
    }

    return (
        <>
            <section className = "showcase login">
                <div className = "overlay">
                    <form className = "form">
                        <input type = "email" name = "email" id = "email"
                        placeholder = "Your email address" required onChange ={(e) => {
                        setUserEmail(e.target.value)}}
                        />
                        <input type = "password" name = "password" id = "password"
                        placeholder = "Enter your password" required onChange ={(e) => {
                        setuserPassword(e.target.value)}}/>

                        <button type = "submit" onClick = {submitForm} >Log In</button>
                    </form>
                </div>
            </section>
        </>
    )
}

export default Login