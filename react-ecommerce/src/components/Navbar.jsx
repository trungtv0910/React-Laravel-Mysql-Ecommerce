import { Badge } from '@material-ui/core';
import { Search } from '@material-ui/icons';
import React from 'react';
import styled from 'styled-components';
import MailIcon from '@material-ui/icons/Mail';
import ShoppingCartOutlinedIcon from '@material-ui/icons/ShoppingCartOutlined';
import { mobile } from '../responsive';
import { Link } from 'react-router-dom';

const Container = styled.div`
    height:60px;
    ${mobile({ height: "50px" })};
     
`
const Warapper = styled.div`
    padding:10px 20px;
    display:flex;
    align-items:center;
    justify-content : space-between;
    ${mobile({ padding: "10px 0px" })}
`
const Left = styled.div`
flex:1;
display:flex;
align-items:center;
`

const Language = styled.span`
    font-size:14px;
    cursor:pointer;
    ${mobile({ display: "none" })}
`
const SearchContainer = styled.div`
border:0.5px solid lightgray;
display:flex;
align-items:center;
margin-left:25px;
padding:5px;
`

const Input = styled.input`
    border:none;
    ${mobile({ width: "50px" })}

`

const Center = styled.div`
flex:1;

`
const Logo = styled.h1`
font-weight:bold;
text-align:center;
${mobile({ fontSize: "24px" })};
`
const Right = styled.div`
flex:1;
display:flex;
align-items:center;
justify-content:flex-end;
${mobile({ flex: 2, justifyContent: "center" })}
`
const MenuItem = styled.div`
font-size:14px;
cursor:pointer;
margin-left:25px;
${mobile({ fontSize: "12px", marginLeft: "10px" })}
`

const StyledLink = styled(Link)`
    text-decoration: none;
    color: black;

    &:focus, &:hover, &:visited, &:link, &:active {
        text-decoration: none;
    }
`;


const Navbar = () => {
    let user = true;
    return (
        <Container>
            <Warapper >
                <Left>
                    <Language>EN</Language>
                    <SearchContainer>
                        <Input />
                        <Search style={{ color: "gray", fontSize: 16 }}></Search>
                    </SearchContainer>
                </Left>
                <Center>

                    <StyledLink to="/" >
                        <Logo>WECO</Logo>
                    </StyledLink>




                </Center>
                <Right>
                    {user ? <>
                        <StyledLink to="/register">
                            <MenuItem>REGISTER</MenuItem>
                        </StyledLink>
                        <StyledLink to="/login" > <MenuItem>SIGN IN</MenuItem></StyledLink>
                    </>
                        :
                        <a href="">Logout</a>
                    }
                    <StyledLink to="/cart" >
                        <MenuItem>
                            <Badge badgeContent={4} color="primary">
                                <ShoppingCartOutlinedIcon />
                            </Badge>
                        </MenuItem>
                    </StyledLink>
                </Right>
            </Warapper >
        </Container >
    )
}

export default Navbar