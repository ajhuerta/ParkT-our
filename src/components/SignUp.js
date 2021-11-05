import React from 'react'

const SignUp = () => {
    return (
        <>
            <section className = "showcase login">
                <div className = "overlay">
                    <form className = "form">
                        <input type = "text" name = "username" id = "username"
                        placeholder = "Username" required/>

                        <input type = "email" name = "email" id = "email"
                        placeholder = "Your email address" required/>

                        <input type = "password" name = "password" id = "password"
                        placeholder = "Enter your password" required/>

                        <input type = "password" name = "password2" id = "password2"
                        placeholder = "Confirm your password" required/>

                        <button type = "submit">Create your account</button>
                    </form>
                </div>
            </section>
        </>
    )
}

export default SignUp 