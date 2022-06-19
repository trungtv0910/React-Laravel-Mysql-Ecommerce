import styled from "styled-components"
import Product from './Product';
const Container = styled.div`
margin: 15px 0;
/* display: flex; */
flex-wrap: wrap;
padding: 20px;
background-color: #e2e1e1;
`
const Wrapper = styled.div`
display: flex;
flex-wrap: nowrap;
padding: 0px  ;
justify-content:flex-start;
`
const Title = styled.h2`
    margin: 5px 10px 30px;
    font-weight: 300;
    border-bottom: 1px solid gray;
`
const ProductsRelated = ({ productsRelated }) => {

    return (
        <Container>
            <Title>Sản Phẩm Tương Tự</Title>
            <Wrapper>
                {productsRelated.slice(0, 5).map((item, index) => (
                    <Product item={item} width={18.6} key={item.id}></Product>
                ))}
            </Wrapper>


        </Container>
    )
}
export default ProductsRelated