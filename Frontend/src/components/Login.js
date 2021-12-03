import React, { useState } from 'react'
import Axios from 'axios';
import { useHistory } from "react-router-dom";

const Login = () => {
    const [userID, setuserID] = useState("");
    const [password, setpassword] = useState("");

    const [errorMessage, setErrorMessage] = useState("");

    let history = useHistory();
  
    const login = () => {
      Axios.post('http://localhost:3001/api/login', {
        userID: userID,
        password: password,
      }).then((response) => {
        if (response.data.loggedIn) {
            localStorage.setItem("loggedIn", true);
            localStorage.setItem("userID", response.data.userID);
            history.push("/search-engine");
        } else {
            localStorage.setItem("loggedIn", false);
            localStorage.setItem("userID", "");
            setErrorMessage(response.data.message);
        }
      });
    };
  

    return (
        <>
            <section className = "showcase login">
                <div className = "overlay">
                    <div className = "form">
                        <input type = "text" name = "text" id = "text"
                        placeholder = "Your userID"           
                        onChange={(event) => {
                            setuserID(event.target.value);
                          }}
                        />
                        <input type = "password" name = "password" id = "password"
                        placeholder = "Enter your password" 
                        onChange={(event) => {
                            setpassword(event.target.value);
                        }}/>

                        <button onClick={login}>Login</button>
                        <h1 style={{ color: "red" }}>{errorMessage} </h1>
                    </div>
                </div>
            </section>
        </>
    )
}

export default Login