
import { Send } from '@material-ui/icons'

import styled from 'styled-components'
import { mobile } from '../responsive'

const Container = styled.div`
height: 60vh;
background-color: #fcf5f5;
display:flex;
align-items: center;
justify-content: center;
flex-direction: column;
`
const Title = styled.h1`
font-size:70px;
margin-bottom: 20px;
${mobile({ fontSize: "50px" })}
`
const Description = styled.div`
font-size: 24px;
font-weight: 300;
margin-bottom: 20px;
${mobile({ textAlign: "center" })}
`
const InputContainer = styled.div`
width: 50%;
height:40px;
background-color: #fff;
display: flex;
justify-content: space-between;
border:1px solid lightgray;
${mobile({ width: "80%" })}
`
const Input = styled.input`
border:none;
outline: none;
flex:9;
padding-left: 20px;
`
const Button = styled.button`
flex:1;
border-radius: 0px;
border:1px solid gray;
background-color: teal;
cursor: pointer;
color:#fff;
&:hover{
    background-color: #015555;
}
`



const Newsletter = () => {
    return (
        <Container>
            <Title>Tin Mới </Title>
            <Description>Nhận cập nhập kịp thời từ các sản phẩm yêu thích của bạn.</Description>
            <InputContainer>
                <Input />
                <Button>
                    <Send></Send>
                </Button>
            </InputContainer>
        </Container>
    )
}

export default Newsletter