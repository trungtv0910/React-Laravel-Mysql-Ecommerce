import React from 'react'
import Announcement from '../components/Announcement'
import Categories from '../components/Categories'
import Footer from '../components/Footer'

import Navbar from '../components/Navbar'
import Newsletter from '../components/Newsletter'

import Products from '../components/Products'
import Slide from '../components/Slide'

const Home = () => {
    return (
        <div>
            <Announcement />
            <Navbar />
            <Slide />
            <Categories />
            <Products />
            <Newsletter />
            <Footer />
        </div>
    )
}

export default Home