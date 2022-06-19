import React from 'react'
import styled from 'styled-components'
import Announcement from '../components/Announcement'
import Categories from '../components/Categories'
import Footer from '../components/Footer'

import Navbar from '../components/Navbar'
import Newsletter from '../components/Newsletter'

import Products from '../components/Products'
import Slide from '../components/Slide'
const Title = styled.h2`
    margin: 35px auto 10px;
    font-weight: 600;
    padding-bottom: 7px;
    text-align: center;
    justify-content:center;
    border-bottom: 1px solid gray;
    width: 400px;
    display: block;
`
const Home = () => {
    return (
        <div>
            <Announcement />
            <Navbar />
            <Slide />
            <Categories />
            <Title>SẢN PHẨM NỔI BẬT</Title>
            <Products />
            <Newsletter />
            <Footer />
        </div>
    )
}

export default Home