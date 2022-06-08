import styled from "styled-components"
import { mobile } from "../responsive"

const Container = styled.div`
    width: 100vw;
    height: 100vh;
    background: rgb(34,193,195);
    background: linear-gradient(135deg, rgba(34,193,195,1) 0%,     rgba(253,187,45,1) 100%);
    display: flex;
    align-items: center;
    justify-content: center;
`
const Wrapper = styled.div`
    padding: 20px;
    width: 40%;
    background-color: white;
    ${mobile({ width: "75%" })}
`
const Title = styled.h1`
font-size: 24px;
font-weight: 300;
`
const Form = styled.form`
    display: flex;
    flex-wrap: wrap;
`

const Input = styled.input`
   flex:1;
   min-width: 40%;
    padding: 10px;
    margin: 20px 10px 0px 0px;
`
const Agreement = styled.p`
    font-size: 12px;
    margin: 20px 0px;
`
const Button = styled.button`
    width: 40%;
    border:none;
    padding: 12px 20px;
    background-color: teal;
    color:white;
    cursor: pointer;
    transition: all 0.5s ease;
    &:hover {
        background-color: #023f3f;
    }
`



const Register = () => {
    return (
        <Container >
            <Wrapper >
                <Title >CREATE AN ACOUNT</Title>
                <Form>
                    <Input placeholder="name" />
                    <Input placeholder="last name" />
                    <Input placeholder="username" />
                    <Input placeholder="email" />
                    <Input placeholder="password" />
                    <Input placeholder="confirm password" />
                    <Agreement>
                        By creating an account, I consent to the processing of my personal data
                        in accordance with the <b>PRIVACY POLICY</b>
                    </Agreement>
                    <Button>Create</Button>
                </Form>
            </Wrapper>
        </Container>
    )
}
export default Register