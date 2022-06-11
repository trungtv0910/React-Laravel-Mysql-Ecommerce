import { Add, Remove } from "@material-ui/icons"
import styled from "styled-components"
import Announcement from "../components/Announcement"
import Footer from "../components/Footer"
import Navbar from "../components/Navbar"
import Newsletter from "../components/Newsletter"
import { mobile } from "../responsive"

const Container = styled.div`
height: 100vh;
`
const Wrapper = styled.div`
display:flex;
padding: 50px;
${mobile({ padding: "10px", flexDirection: "column" })}
`
const ImgContainer = styled.div`
flex:1;
`
const Image = styled.img`
width:100%;
height:90vh;
object-fit: cover;
${mobile({ height: "40vh" })};
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
const FilterColor = styled.div`
    width: 20px;
    height: 20px;
    border-radius: 50%;
    background-color: ${props => props.color};
    margin: 0 5px;
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
    return (
        <Container>
            <Navbar />
            <Announcement />
            <Wrapper>
                <ImgContainer>
                    <Image src="https://i.ibb.co/S6qMxwr/jean.jpg" />
                </ImgContainer>
                <InfoContainer>
                    <Title>Denim Jumpsuit</Title>
                    <Desc>Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam cumque ullam assumenda reprehenderit porro dignissimos at nostrum expedita itaque nemo!
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam cumque ullam assumenda
                    </Desc>
                    <Price>400.000 d</Price>
                    <FilterContainer>
                        <Filter>
                            <FilterTitle>Color</FilterTitle>
                            <FilterColor color="black" />
                            <FilterColor color="gray" />
                            <FilterColor color="red" />
                            <FilterColor color="blue" />
                        </Filter>
                        <Filter>
                            <FilterTitle>Size</FilterTitle>
                            <FilterSize>
                                <FilterSizeOption>XS</FilterSizeOption>
                                <FilterSizeOption>M</FilterSizeOption>
                                <FilterSizeOption>L</FilterSizeOption>
                                <FilterSizeOption>XL</FilterSizeOption>
                            </FilterSize>
                        </Filter>
                    </FilterContainer>
                    <AddContainer>
                        <AmountContainer>
                            <Remove />
                            <Amount>1</Amount>
                            <Add />
                        </AmountContainer>
                        <Button>Add To Cart</Button>
                    </AddContainer>
                </InfoContainer>
            </Wrapper>
            {/* <Newsletter /> */}
            <Footer />

        </Container>
    )
}
export default Product