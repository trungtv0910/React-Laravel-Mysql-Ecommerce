
import { Add, Remove } from '@material-ui/icons'
import React from 'react'
import styled from 'styled-components'
import Announcement from '../components/Announcement'
import Footer from '../components/Footer'
import Navbar from '../components/Navbar'

const Container = styled.div`
    /* padding: 20px; */
`
const Wrapper = styled.div`
     padding: 20px;
`
const Title = styled.h1`
    font-weight: 300;
    text-align   :center ;
`
const Top = styled.div`
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding:20px;
`
const TopButton = styled.button`
  padding: 10px;
  font-weight: 600;
  cursor: pointer;
  border : ${props => props.type === "filled" && "none"};
  background-color : ${props => props.type === "filled" ? "black" : "transparent"};
  color : ${props => props.type === "filled" && "white"};
`

const TopTexts = styled.div`
    
`
const TopText = styled.span`
    text-decoration: underline;
    cursor: pointer;
    margin: 0 10px;
`
const Bottom = styled.div`
    display: flex;
    justify-content: space-between;
`
const Info = styled.div`
flex:3;
`
const Product = styled.div`
display: flex;
justify-content: space-between;
`
const ProductDetail = styled.div`
flex: 2;
display: flex;
`
const Image = styled.img`
    width: 200px;
`
const Details = styled.div`
    padding: 20px;
    display: flex;
    flex-direction: column;
    justify-content: space-around;
`
const ProductName = styled.span`

`
const ProductId = styled.span`

`
const ProductColor = styled.div`
width:20px;
height: 20px;
border-radius: 50%;
background-color: ${props => props.color};
`
const ProductSize = styled.span`

`
const PriceDetail = styled.div`
flex: 1;
display: flex;
align-items:center;
flex-direction: column;
justify-content: center;

`
const ProductAmountContainer = styled.div`
/* flex:1; */
    display: flex;
    align-items: center;
    margin-bottom: 20px;
`
const ProductAmount = styled.div`
font-size:24px ;
margin: 5px;
`

const ProductPrice = styled.div`
font-size: 30px;
font-weight: 200;
`
const Hr = styled.hr`
   background-color :#eee ;
   border:none;
   height: 1px;

`

const Summary = styled.div`
flex:1;
border: 0.5px solid lightgray;
padding: 20px;
border-radius: 10px;
height: 65vh;
`
const SummaryTitle = styled.h1`
    font-weight: 200;
`
const SummaryItem = styled.div`
margin: 30px 0px ;
display: flex;
justify-content: space-between;
align-items: center;
font-weight: ${props => props.type === "total" && "500"};
font-size: ${props => props.type === "total" && "24px"};
`
const SummaryItemText = styled.div``
const SummaryItemPrice = styled.div``
const SummaryButton = styled.button`
width: 100%;
padding: 10px;
background-color: black;
color:white;
font-weight: 600;
font-size: 18px;
cursor: pointer;
border: none;
outline: none;
transition: all 0.5s ease;
&:hover{
    transform: scale(1.05);
    background-color: #208120;
}
/* justify-content: flex-end; */

`



const Cart = () => {
    return (
        <Container>
            <Announcement />
            <Navbar />
            <Wrapper>
                <Title>YOUR BAG</Title>
                <Top>
                    <TopButton>CONTINUE SHOPPING</TopButton>
                    <TopTexts>
                        <TopText>Shopping Bag(2)</TopText>
                        <TopText>Withlist(2)</TopText>
                    </TopTexts>
                    <TopButton type="filled">CHECKOUT NOW</TopButton>
                </Top>
                <Bottom>
                    <Info>
                        <Product>
                            <ProductDetail>
                                <Image src="https://cf.shopee.vn/file/6b57bb1827f921ab4ce8d6ef46d4f420" />
                                <Details>
                                    <ProductName> <b>Product:</b>JESSIE THUNDER SHOES</ProductName>
                                    <ProductId> <b>ID:</b>948512324</ProductId>
                                    <ProductColor color="black" />
                                    <ProductSize> <b>size:</b>M</ProductSize>
                                </Details>
                            </ProductDetail>
                            <PriceDetail>
                                <ProductAmountContainer>
                                    <Add />
                                    <ProductAmount>2</ProductAmount>
                                    <Remove />

                                </ProductAmountContainer>
                                <ProductPrice> 200.000d</ProductPrice>
                            </PriceDetail>
                        </Product>
                        <Hr />
                        <Product>
                            <ProductDetail>
                                <Image src="https://cf.shopee.vn/file/6b57bb1827f921ab4ce8d6ef46d4f420" />
                                <Details>
                                    <ProductName> <b>Product:</b>JESSIE THUNDER SHOES</ProductName>
                                    <ProductId> <b>ID:</b>948512324</ProductId>
                                    <ProductColor color="gray" />
                                    <ProductSize> <b>size:</b>M</ProductSize>
                                </Details>
                            </ProductDetail>
                            <PriceDetail>
                                <ProductAmountContainer>
                                    <Add />
                                    <ProductAmount>2</ProductAmount>
                                    <Remove />

                                </ProductAmountContainer>
                                <ProductPrice> 200.000d</ProductPrice>
                            </PriceDetail>
                        </Product>

                    </Info>
                    <Summary>
                        <SummaryTitle>ORDER SUMMARY</SummaryTitle>
                        <SummaryItem>
                            <SummaryItemText>Subtotal</SummaryItemText>
                            <SummaryItemPrice>200.000đ</SummaryItemPrice>
                        </SummaryItem>
                        <SummaryItem>
                            <SummaryItemText>Shinging Discount</SummaryItemText>
                            <SummaryItemPrice>-20.000đ</SummaryItemPrice>
                        </SummaryItem>
                        <SummaryItem type="total">
                            <SummaryItemText >Total</SummaryItemText>
                            <SummaryItemPrice>220.000đ</SummaryItemPrice>
                        </SummaryItem>

                        <SummaryButton >CHECKOUT NOW</SummaryButton >


                    </Summary>
                </Bottom>
            </Wrapper>
            <Footer />
        </Container>
    )
}
export default Cart