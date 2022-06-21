import { Add, InvertColorsOffTwoTone, Remove, RestoreSharp } from "@material-ui/icons"
import { isFulfilled } from "@reduxjs/toolkit"
import { useEffect, useState } from "react"
import { useDispatch, useSelector } from "react-redux"
import { Navigate, useLocation } from "react-router-dom"
import styled from "styled-components"
import Announcement from "../components/Announcement"
import Footer from "../components/Footer"
import Navbar from "../components/Navbar"
import Newsletter from "../components/Newsletter"
import { addProductToCartServer, testCartServer } from "../redux/apiCart"
import { getImageOfProductServer, getProductServer, getRelatedProductServer } from "../redux/apiProductCall"
import { addProduct } from "../redux/cartRedux"
import { mobile } from "../responsive"


import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';
import ProductsRelated from "../components/ProductsRelated"


const Container = styled.div`
height: 100vh;
`
const Wrapper = styled.div`
min-height: 100vh;
display:flex;
padding: 50px;
${mobile({ padding: "10px", flexDirection: "column" })}
`
const ImgContainer = styled.div`
flex:1;
display: flex;
flex-direction: column;
`
const Image = styled.img`
width:100%;
height:90vh;
object-fit: cover;
${mobile({ height: "40vh" })};
`

const ListImage = styled.div`
    display: flex;
    padding: 20px 0px;
    flex-wrap: nowrap;
    gap:20px;
`
const ImageChild = styled.img`
width: 22.8%;
flex-basis: 22.8%;

`


const InfoContainer = styled.div`
flex:1;
padding:0px 50px;
${mobile({ padding: "10px" })}
`
const Title = styled.h1`
font-weight: 200;
`
const Desc = styled.p`
margin:20px 0px;
`
const Price = styled.span`
font-weight:100;
font-size: 40px;
`
const FilterContainer = styled.div`
    display: flex;
    margin: 30px 0px;
    width: 50%;
    justify-content: space-between;
    align-items: center;
    ${mobile({ width: "100%" })}
`
const Filter = styled.div`
display: flex;
align-content: center;
justify-content: center;
`
const FilterTitle = styled.span`
    font-size: 20px;
    font-weight: 200;
`
const FilterColor = styled.button`
    width: 20px;
    height: 20px;
    border-radius: 50%;
    background-color: ${props => props.color};
    margin: 0 5px;
    outline: none;
    border:none;
 
    &:focus {
        color: palevioletred;
        transform: scale(1.5);
        border:2px solid teal
    }
    /* &:focus{border:3px solid teal} */
    cursor: pointer;
`
const FilterSize = styled.select`
margin-left: 10px;
padding: 3px;
justify-content: center;
align-items: center;
`
const FilterSizeOption = styled.option`

`
// add to cart
const AddContainer = styled.div`
 display: flex;
 align-items: center;
 width: 50%;
 justify-content: space-between;
 ${mobile({ width: "100%" })}
`
const AmountContainer = styled.div`
    display: flex;
    align-items: center;
    font-weight: 700;
`

const Amount = styled.span`
width: 30px;
height: 30px;
border-radius: 10px;
border: 1px solid teal;
display: flex;
align-items: center;
justify-content: center;
margin: 0px 5px;
`

const Button = styled.button`
    padding:  15px;
    cursor: pointer;
    border: 2px solid teal;
    background-color: white;
    transition: all 0.5s ease;
    font-weight: 500;
    &:hover {
        background-color: teal;
        color:#fff;
    }
`
const Product = () => {
    const location = useLocation();
    const id = location.pathname.split('/')[2];
    const [product, setProduct] = useState({});
    const [productsRelated, setProductsRelated] = useState([]);
    const [listImage, setListImage] = useState([]);
    //set list color and size form server
    const [listColor, setlistColor] = useState([]);
    const [listSize, setlistSize] = useState([]);

    const [quantity, setquantity] = useState(1);
    // set color and size while customer choose
    const [color, setColor] = useState("");
    const [size, setSize] = useState("");
    const [ADDTOCART, setADDTOCART] = useState(false);
    const dispatch = useDispatch();


    // check user exist
    const { currentUser, error } = useSelector((state) => state.user);



    useEffect(() => {
        window.scrollTo(0, 0);
    }, [id]);



    useEffect(() => {
        const getProductByid = async () => {
            try {
                const res = await getProductServer(id);
                if (res && res.data.status === 200) {

                    setProduct(res.data.data);

                    let arrayColor = (res.data.data.color).replace(/'/g, '"');
                    if (arrayColor) {
                        setlistColor(JSON.parse(arrayColor));
                    }
                    let arraySize = (res.data.data.size).replace(/'/g, '"');
                    if (arraySize) {
                        setlistSize(JSON.parse(arraySize));
                    }
                    //  sau khi truy xuất được 1 sản phẩm thì ta tiếp tục với sản phẩm liên quan
                    let resProductRelated = await getRelatedProductServer(res.data.data.id);
                    if (resProductRelated && resProductRelated.data.status === 200) {
                        setProductsRelated(resProductRelated.data.data);
                    }
                    let resImageList = await getImageOfProductServer(res.data.data.id);

                    if (resImageList) {
                        setListImage(resImageList.data.data);
                    }

                } else {
                    console.log('Lỗi truy xuất sản phẩm id')
                }
            } catch (error) {
                console.log(error);

            }
        }
        getProductByid();

    }, [id]);

    const handleQuantity = (type) => {
        if (type == "remove") {
            quantity > 1 &&
                setquantity(quantity - 1);
        } else {
            setquantity(quantity + 1);
        }
    }


    const handleAddToCart = async () => {
        if (currentUser) {
            try {
                let res = await addProductToCartServer({ product, quantity, color, size });
                if (res && res.data.status === 200) {
                    dispatch(addProduct({ ...product, quantity, color, size }))
                    return toast.success("The product has been added to Cart");
                } else if (res && res.data.status === 401) {
                    return toast.warn("You are not logged in")
                } else if (res && res.data.status === 500) {
                    return toast.error("Server Not Connect");
                } else {
                    return toast.error("Error");
                }
                return toast.error("Error");
            } catch (error) {
                toast.warn("You are not login");
                console.log(error)
            }
        } else {
            toast.warn("You must be logged in to purchase");
        }



    }


    return (
        <Container>
            <Navbar />
            <Announcement />
            <Wrapper>
                <ToastContainer theme="colored" />
                <ImgContainer>
                    <Image src={process.env.REACT_APP_BACKEND_URL + product.feature_image_path} />
                    <ListImage>
                        {listImage && listImage.map((item, index) => (

                            <ImageChild key={index} src={process.env.REACT_APP_BACKEND_URL + item.image_path} />


                        ))}


                    </ListImage>
                </ImgContainer>

                <InfoContainer>
                    <Title>{product.name}</Title>

                    <Desc
                        dangerouslySetInnerHTML={{
                            __html: product.desc
                        }}></Desc>

                    <Price>{product.price} đ</Price>

                    <FilterContainer>
                        <Filter>
                            <FilterTitle>Color</FilterTitle>
                            {
                                listColor.map((itemColor) => (
                                    <FilterColor key={itemColor} color={itemColor} onClick={() => setColor(itemColor)} />
                                ))
                            }
                        </Filter>
                        <Filter>
                            <FilterTitle>Size</FilterTitle>
                            <FilterSize defaultValue="null" onChange={(e) => setSize(e.target.value)} >
                                <option value="null" disabled >None</option>
                                {
                                    listSize.map((itemSize) => (
                                        <FilterSizeOption key={itemSize} value={itemSize} >{itemSize}</FilterSizeOption>
                                    ))
                                }

                            </FilterSize>
                        </Filter>
                    </FilterContainer>
                    <AddContainer>
                        <AmountContainer>
                            <Remove onClick={() => handleQuantity('remove')} style={{ cursor: "pointer" }} />
                            <Amount>{quantity}</Amount>
                            <Add onClick={() => handleQuantity('add')} style={{ cursor: "pointer" }} />
                        </AmountContainer>
                        <Button onClick={() => handleAddToCart()}>Thêm Giỏ Hàng</Button>
                    </AddContainer>
                </InfoContainer>
            </Wrapper>
            <ProductsRelated productsRelated={productsRelated}></ProductsRelated>
            {/* <Newsletter /> */}
            <Footer />

        </Container >
    )
}
export default Product