import React from 'react'
import styled from 'styled-components'
import { popularProducts } from '../data'
import Product from './Product'

const Container = styled.div`
display: flex;
padding: 20px;
flex-wrap: wrap;
justify-content: space-between;
`
const Products = () => {
    return (
        <Container>
            {popularProducts &&
                popularProducts.map((item, index) => (
                    <Product item={item} key={item.id}></Product>
                ))

            }


        </Container>
    )
}
export default Products