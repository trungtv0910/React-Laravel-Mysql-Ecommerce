import React from 'react'
import Announcement from '../components/Announcement'

import Navbar from '../components/Navbar'
import Slide from '../components/Slide'

const Home = () => {
    return (
        <div>
            <Announcement />
            <Navbar />
            <Slide />
        </div>
    )
}

export default Home