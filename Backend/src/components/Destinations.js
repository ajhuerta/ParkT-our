import React from 'react'
import image2 from '../assets/field.jpg'
import image3 from '../assets/canyon.jpg'
import image4 from '../assets/stargazing.png'


const Destinations = () => {
    return (
        <>
            <section className = "grid">
                <h3>From the East Coast all the way to the Bay.</h3>
                    <h3>Find the perfect match for you!</h3>

                <div className = "grid-items">
                    <div>
                        <img src = {image2} alt = ""/>
                        <h4>View the mountains</h4>
                        <p>Discover </p>
                    </div>


                    <div>
                        <img src = {image3} alt = ""/>
                        <h4>Gaze upon the stars</h4>
                        <p>lorem ipsum</p>
                    </div>


                    <div>
                        <img src = {image4} alt = ""/>
                        <h4>Savour Hawaii</h4>
                        <p>lorem ipsum</p>
                    </div>
                </div>

            </section>
        </>

    )
}

export default Destinations