
import styled from 'styled-components'
import { mobile } from '../responsive'

const Container = styled.div`
flex:1;
margin: 3px;
height:70vh;
position: relative;
`
const Image = styled.img`
width: 100%;
height: 100%;
object-fit: cover;
${mobile({ height: "20vh" })}
`
const Info = styled.div`
position: absolute;
width: 100%;
height:100%;
top:0;
bottom: 0;
margin: auto;
display: flex;
flex-direction: column;
justify-content: center;
align-items: center;
`
const Title = styled.h1`
color:white;
margin-bottom: 20px;
`
const Button = styled.button`
    padding: 5px 10px;
    border: none;
    outline: none;
    background-color:white;
    color:gray;
    cursor: pointer;
    font-weight: 600;
    &:hover{background-color: palevioletred; color: #fff;}
    &:focus {
        color: palevioletred;
    }
`
const CategoryItem = ({ item }) => {
    return (
        <Container>
            <Image src={item.img} />
            <Info>
                <Title> {item.title}</Title>
                <Button>SHOP NOW</Button>
            </Info>


        </Container>
    )
}
export default CategoryItem