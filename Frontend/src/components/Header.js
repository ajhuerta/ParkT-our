import React,  { useEffect, useState } from 'react'
import { Link } from 'react-router-dom'


const Header = () => {

    const [loggedIn, setLoggedIn] = useState(false);

    useEffect(() => {
        console.log(localStorage.getItem("loggedIn"));
        setLoggedIn(localStorage.getItem("loggedIn"));
        console.log(loggedIn);
    }, [localStorage.getItem("loggedIn")]);

    return (
        <>
            <header className="header">
                <div>
                    <Link className = "links" to = "/">Home</Link>
                </div>
                {!loggedIn ? (
                    <div>
                        <Link className = "links" to = "/search-engine"> Search</Link>
                        <Link className = "links" to = "/login">Login another account</Link>
                        <Link className = "links" to = "/signup"> Sign Up</Link>
                    </div>
                ) : (
                    <div>
                        <Link className = "links" to = "/login">Login</Link>
                        <Link className = "links" to = "/signup"> Sign Up</Link>
                    </div>
                )}
            </header>
        </>
    )
}

export default Header