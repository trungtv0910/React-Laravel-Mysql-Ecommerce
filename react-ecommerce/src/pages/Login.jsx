import styled from "styled-components"

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
`
const Link = styled.a`
margin:5px 0px;
font-size: 12px;
text-decoration: underline;
cursor: pointer;

`

const Login = () => {
    return (
        <Container>
            <Wrapper >
                <Title >SIGN IN</Title>
                <Form>

                    <Input placeholder="username" />
                    <Input placeholder="email" />
                    <Input placeholder="password" />

                    <Button>LOGIN</Button>
                    <Link>DO NOT REMEMBER THE PASSWORD?</Link>
                    <Link>CREATE A NEW ACCOUNT</Link>
                </Form>
            </Wrapper>
        </Container>
    )
}
export default Login