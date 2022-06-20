import {
  FavoriteBorderOutlined,

  SearchOutlined,
  ShoppingCartOutlined,
} from "@material-ui/icons";
import { Link } from "react-router-dom";
import styled from 'styled-components';

const Info = styled.div`
 
  opacity: 0;
  width: 100%;
  height: 100%;
  position: absolute;
  border-radius: 20px !important;
  top: 0;
  left: 0;
  background-color: rgba(0, 0, 0, 0.2);
  z-index: 3;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: all 0.5s ease;
  cursor: pointer;
`;

const Container = styled.div`
    /* flex: 1; */

    margin: 10px;
    flex-basis:${props => props.width}%;
    /* min-width:calc(100% * (1/5) - 2px); */
    /* min-width: 290px; */
    /* height: 500px; */
    height: 400px;
    border-radius: 20px !important;
 
    align-items: center; 
     justify-content: center; 
    
  
    position: relative;
    &:hover ${Info}{
    opacity: 1;
    
  }
    `
const Warapper = styled.div`
width:100%;
height: 80%;
`

const Circle = styled.div`
  width: 200px;
  height: 200px;
  border-radius: 50%;
  background-color: white;
  position: absolute;
`;
const Image = styled.img`
 border-radius: 20px !important;
  height: 100%;
  width: 100%;
  object-fit: cover;
  z-index: 2;
`;


const Icon = styled.div`
  width: 40px;
  height: 40px;
  border-radius: 50%;
  background-color: white;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 10px;
  transition: all 0.5s ease;
  &:hover {
    background-color: #e9f5f5;
    transform: scale(1.1);
  }
`;

const InfoProduct = styled.div`
height: 20%;
width: 100%;
align-items:flex-start;
justify-content: center;
display: flex;
flex-direction: column;

/* width: 100%; */
`
const Title = styled.h2`
  font-weight: 700;
  font-size: 16px;
  color:#231f20;
  margin-bottom: 3px;
  /* color:red; */

  line-height: 1.2em;
`
const Price = styled.p`
  .del{color:red}
`
const StyledLink = styled(Link)`
    text-decoration: none;
    color: black;

    &:focus, &:hover, &:visited, &:link, &:active {
        text-decoration: none;
    }
`;
const Product = ({ item, width }) => {
  return (
    <>
      <Container width={width} >
        <Warapper>
          {/* <Circle /> */}
          <Image src={process.env.REACT_APP_BACKEND_URL + item.feature_image_path} />
          <Info>
            <StyledLink to={`/product/${item.id}`} >
              <Icon>
                <ShoppingCartOutlined />
              </Icon>
            </StyledLink>
            <StyledLink to={`/product/${item.id}`} >
              <Icon>
                <SearchOutlined />
              </Icon>
            </StyledLink>
            <Icon>
              <FavoriteBorderOutlined />
            </Icon>
          </Info>
        </Warapper>
        <InfoProduct>
          <Title>{item.name}</Title>
          <Price> {new Intl.NumberFormat('it-IT', { style: 'currency', currency: 'VND' }).format(item.price)} <del>{item.discount ? new Intl.NumberFormat('it-IT', { style: 'currency', currency: 'VND' }).format(item.price) : ''}</del></Price>
        </InfoProduct>
      </Container>

    </>
  )
}
export default Product