import React, { useEffect, useState } from 'react'
import { useSelector } from 'react-redux'
import { Link, useLocation } from 'react-router-dom'
import styled from 'styled-components'
import { apiAddToCartServer } from '../redux/apiCheckoutCart'



const Container = styled.div`
    height   :100vh ;
    width: 100%;
`
const Wrapper = styled.div`
    display: flex;
    flex-direction: column;
    width: 100%;
    background-color: #beb1b1;
    align-items: center;
    justify-content: center;
    height: 100vh;

`
const success = () => {
    const location = useLocation();

    const data = location.state.stripeData;
    const cart = location.state.cart;
    const [orderId, setOrderId] = useState(null);
    useEffect(() => {
        const createOrder = async () => {
            try {
                let resOrder = await apiAddToCartServer(cart);
                console.log('resORder', resOrder.data);
                setOrderId(resOrder.data.id);
            } catch (error) {

            }

        };
        createOrder();
    }, [cart]);

    // const currentUser = useSelector((state) => state.user.currentUser);
    // console.log('currentUser', currentUser);

    return (

        <Container>

            <Wrapper>
                <div style={{ padding: 10 }}>
                    {orderId ? `Order has been created successfully. Your order number is ${orderId}` : `
                    
                        Ordering ! The system is updating
                    `}
                </div>

                <Link to="/">
                    <button style={{ padding: 10, marginTop: 20, cursor: "pointer" }}>Go to Homepage</button>
                </Link>

            </Wrapper>

        </Container>
    )
}
export default success