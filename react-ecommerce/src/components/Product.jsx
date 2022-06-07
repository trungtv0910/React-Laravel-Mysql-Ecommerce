import {
  FavoriteBorderOutlined,

  SearchOutlined,
  ShoppingCartOutlined,
} from "@material-ui/icons";
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
    flex: 1;
    margin: 10px;
    min-width:calc(100% * (1/5) - 2px);
    height: 500px;
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
  
`
const Price = styled.p`
  .del{color:red}
`
const Product = ({ item }) => {
  return (
    <>
      <Container>
        <Warapper>
          {/* <Circle /> */}
          <Image src={item.img} />
          <Info>
            <Icon>
              <ShoppingCartOutlined />
            </Icon>
            <Icon>

              <SearchOutlined />

            </Icon>
            <Icon>
              <FavoriteBorderOutlined />
            </Icon>
          </Info>
        </Warapper>
        <InfoProduct>
          <Title>{item.title}</Title>
          <Price>{item.price}đ <del>390.000d</del> </Price>
        </InfoProduct>
      </Container>

    </>
  )
}
export default Product