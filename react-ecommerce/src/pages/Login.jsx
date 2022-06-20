import React, { SyntheticEvent, useState } from 'react';
import styled from "styled-components"
import { mobile } from "../responsive"
import { login } from '../redux/apiCall';
import { useDispatch, useSelector } from 'react-redux';
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
    width: 25%;
    background-color: white;
    ${mobile({ width: "75%" })}
`
const Title = styled.h1`
font-size: 24px;
font-weight: 300;
`
const Form = styled.form`
    display: flex;
    flex-direction: column;
`

const Input = styled.input`
   flex:1;
   min-width: 40%;
    padding: 10px;
    margin: 10px 0px ;
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
    margin-bottom: 10px;
    &:hover {
        background-color: #023f3f;
    }
    &:disabled{
        color:green;
        cursor: not-allowed;
    }
`
const Link = styled.a`
margin:5px 0px;
font-size: 12px;
text-decoration: underline;
cursor: pointer;

`
const Error = styled.div`
    color:red;
`



const Login = () => {
    const [email, setEmail] = useState('');
    const [password, setPassword] = useState("");
    const dispatch = useDispatch();
    const { isFetching, error } = useSelector((state) => state.user);
    // console.log(error)
    const submit = async (e) => {
        e.preventDefault();

        // LOGIN
        let response = await login(dispatch, { email, password });
        console.log(response);

    }
    return (
        <Container>
            <Wrapper >
                <Title >SIGN IN</Title>
                <Form onSubmit={submit}>

                    {/* <Input placeholder="username"  /> */}
                    <Input placeholder="email" type="email" value={email} onChange={(e) => setEmail(e.target.value)} />
                    <Input placeholder="password" type="password" value={password} onChange={(e) => setPassword(e.target.value)} />

                    {/* <Button disabled={isFetching} >LOGIN</Button> */}
                    <Button  >LOGIN</Button>
                    {error && <Error>Something went wrong...</Error>}
                    <Link>DO NOT REMEMBER THE PASSWORD?</Link>
                    <Link>CREATE A NEW ACCOUNT</Link>
                </Form>
            </Wrapper>
        </Container>
    )
}
export default Login