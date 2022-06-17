import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
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
    const user = location.state.userCurrent?.user;
    const dispatch = useDispatch();

    const [orderId, setOrderId] = useState(null);
    useEffect(() => {
        const createOrder = async () => {
            try {
                cart['user'] = user;
                let resOrder = await apiAddToCartServer(dispatch, cart);
                setOrderId(resOrder.data.id);
            } catch (error) {
                console.log(error);
            }

        };
        createOrder();
    }, [cart]);
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