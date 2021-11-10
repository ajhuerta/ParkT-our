import React from 'react'
import { Link } from 'react-router-dom'

const DashboardHeader = () => {
    return (
        <>
            <header className="header">
                <div>
                    <Link className = "links" to = "/profile">My Home</Link>
                </div>

                <nav className = "navbar">
                    <ul>
                        <Link className = "links" to = "/my-plans">My plans</Link>
                        <Link className = "links" to = "/park-activities"> Park activity matcher</Link>
                        <Link className = "links" to = "/manage-account">Manage Account</Link>
                    </ul>
                </nav>
            </header>
        </>
    )
}

export default DashboardHeader