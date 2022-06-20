
import { Add, AlbumRounded, Delete, Remove } from '@material-ui/icons'
import React, { useEffect, useState } from 'react'
import { useDispatch, useSelector } from 'react-redux'
import styled from 'styled-components'
import Announcement from '../components/Announcement'
import Footer from '../components/Footer'
import Navbar from '../components/Navbar'
import { mobile } from '../responsive'
import { Link, useNavigate } from 'react-router-dom';
import { handleProductCountDown, handleProductCountUp, removeProductInCart } from '../redux/cartRedux'
// import StripeCheckout from "react-stripe-checkout";


// const KEY = process.env.REACT_APP_STRIPE;


const Container = styled.div`
    
`
const Wrapper = styled.div`
     padding: 20px;
     ${mobile({ padding: "10px" })}
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
     ${mobile({ display: "none" })}
`
const TopText = styled.span`
    text-decoration: underline;
    cursor: pointer;
    margin: 0 10px;
`
const Bottom = styled.div`
    display: flex;
    justify-content: space-between;
    ${mobile({ flexDirection: "column" })}
`
const Info = styled.div`
flex:3;
`
const Product = styled.div`
display: flex;
justify-content: space-between;
${mobile({ flexDirection: "column" })}
`
const ProductDetail = styled.div`
flex: 2;
display: flex;
`
const Image = styled.img`
    width: 130px;
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
    ${mobile({ margin: "5px 15px" })}
`

const ProductPrice = styled.div`
    font-size: 30px;
    font-weight: 200;
    ${mobile({ marginBottom: "20px" })}
`
const Hr = styled.hr`
   background-color :#eee ;
   border:none;
   height: 1px;
   margin-top: 15px;
   margin-bottom: 15px;

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
const IconDelete = styled.div`
    
transition: all 0.5s ease;
    &:hover .deleteRemove{
        cursor: pointer;
        transform: scale(1.2);
        color: red;
    }
`

const StyledLink = styled(Link)`
    text-decoration: none;
    color: black;

    &:focus, &:hover, &:visited, &:link, &:active {
        text-decoration: none;
    }
`;



const Cart = () => {
    const cart = useSelector((state) => state.cart);
    const user = useSelector(state => state.user.currentUser);
    const [stripeToken, setStripeToken] = useState(null);
    const navigate = useNavigate();
    const dispatch = useDispatch();

    const onToken = (token) => {
        setStripeToken(token);
    };


    const handleCheckOut = () => {
        let clientConfirm = confirm("Bạn Xác Nhận Thanh Toán?");
        if (clientConfirm) {
            navigate("/success", {
                state: {
                    cart: cart,
                    stripeData: "Trungdata",
                    userCurrent: user
                },

            });
        }

    }

    const handleRemoveProduct = (item) => {
        // Chú ý bạn không nên gọi thẳng removePropduct in cart như vậy mà phải kiểm tra database xem có cart rồi xoá luôn ở database
        dispatch(removeProductInCart(item));
    }
    const handleQuantityProduct = (type, item, index) => {
        if (type === "up") {
            dispatch(handleProductCountUp(item))
        } else {
            dispatch(handleProductCountDown(item))
        }
    }

    return (
        <Container>
            <Announcement />
            <Navbar />
            <Wrapper>
                <Title>GIỎ HÀNG</Title>
                <Top>
                    <StyledLink to="/">
                        <TopButton>Tiếp Tục Mua Sắm</TopButton>
                    </StyledLink>

                    <TopTexts>
                        <TopText>Túi Đồ(2)</TopText>
                        <TopText>Yêu Thích(2)</TopText>
                    </TopTexts>
                    <TopButton type="filled">Mua Hàng Ngay</TopButton>
                </Top>
                <Bottom>
                    <Info>

                        {cart.products.map((item, index) => (
                            <>
                                < Product key={item.id}>
                                    <ProductDetail >
                                        <Image src={process.env.REACT_APP_BACKEND_URL + item.feature_image_path} />
                                        <Details>
                                            <ProductName> <b>Sản phẩm: </b>{item.name}</ProductName>
                                            <ProductId> <b>ID:</b>{item.id}</ProductId>
                                            <ProductColor color={item.color ? item.color : "black"} />
                                            <ProductSize> <b>size:</b>{item.size ? item.size : "Ngẫu nhiên"}</ProductSize>
                                        </Details>
                                    </ProductDetail>
                                    <PriceDetail>
                                        {new Intl.NumberFormat('it-IT', { style: 'currency', currency: 'VND' }).format(item.price)}/1
                                    </PriceDetail>
                                    <PriceDetail>
                                        <ProductAmountContainer>
                                            <Add style={{ cursor: "pointer" }} onClick={() => handleQuantityProduct("up", item, index)} />
                                            <ProductAmount>{item.quantity}</ProductAmount>
                                            <Remove style={{ cursor: "pointer" }} onClick={() => handleQuantityProduct("down", item, index)} />

                                        </ProductAmountContainer>
                                        <ProductPrice>  {new Intl.NumberFormat('it-IT', { style: 'currency', currency: 'VND' }).format(item.quantity * item.price)}</ProductPrice>
                                    </PriceDetail>
                                    <PriceDetail style={{ width: "100px" }}>
                                        <IconDelete onClick={() => handleRemoveProduct(item)}>
                                            <Delete className="deleteRemove" ></Delete>
                                        </IconDelete>

                                    </PriceDetail>
                                </Product>
                                <Hr />
                            </>
                        ))}

                    </Info>
                    <Summary>
                        <SummaryTitle>Đơn Hàng Tóm Tắt</SummaryTitle>
                        <SummaryItem>
                            <SummaryItemText>Tổng Tiền</SummaryItemText>
                            <SummaryItemPrice>
                                {new Intl.NumberFormat('it-IT', { style: 'currency', currency: 'VND' }).format(cart.total)}</SummaryItemPrice>
                        </SummaryItem>
                        <SummaryItem>
                            <SummaryItemText>Phí Vận Chuyển</SummaryItemText>
                            <SummaryItemPrice>20.000đ</SummaryItemPrice>
                        </SummaryItem>
                        <SummaryItem>
                            <SummaryItemText>Mã Giảm Giá</SummaryItemText>
                            <SummaryItemPrice>-20.000đ</SummaryItemPrice>
                        </SummaryItem>
                        <SummaryItem type="total">
                            <SummaryItemText >Thành Tiền</SummaryItemText>
                            <SummaryItemPrice>  {new Intl.NumberFormat('it-IT', { style: 'currency', currency: 'VND' }).format(cart.total)}</SummaryItemPrice>
                        </SummaryItem>
                        {/* <StripeCheckout
                            name="Weco Shop"
                            image="https://avatars.githubusercontent.com/u/1486366?v=4"
                            billingAddress
                            shippingAddress
                            description={`Your total is ${cart.total}`}
                            amount={cart.total * 100}
                            token={onToken}
                            stripeKey={KEY}
                        /> */}

                        <SummaryButton onClick={handleCheckOut} >THANH TOÁN NGAY</SummaryButton >
                    </Summary>
                </Bottom>
            </Wrapper >
            <Footer />
        </Container >
    )
}
export default Cart