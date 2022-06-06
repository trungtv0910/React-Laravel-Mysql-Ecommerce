import { Badge } from '@material-ui/core';
import { Search } from '@material-ui/icons';
import React from 'react';
import styled from 'styled-components';
import MailIcon from '@material-ui/icons/Mail';
import ShoppingCartOutlinedIcon from '@material-ui/icons/ShoppingCartOutlined';


const Container = styled.div`
    height:60px;
    
`
const Warapper = styled.div`
padding:10px 20px;
display:flex;
align-items:center;
justify-content : space-between;

`
const Left = styled.div`
flex:1;
display:flex;
align-items:center;
`

const Language = styled.span`
    font-size:14px;
    cursor:pointer;
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

`
const Right = styled.div`
flex:1;
display:flex;
align-items:center;
justify-content:flex-end;
`
const Center = styled.div`
flex:1;

`
const Logo = styled.h1`
font-weight:bold;
text-align:center;
`
const MenuItem = styled.div`
font-size:14px;
cursor:pointer;
margin-left:25px;
`

const Navbar = () => {
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
                    <Logo>WECO</Logo>
                </Center>
                <Right>
                    <MenuItem>REGISTER</MenuItem>
                    <MenuItem>SIGN IN</MenuItem>

                    <MenuItem>
                        <Badge badgeContent={4} color="primary">
                            <ShoppingCartOutlinedIcon />
                        </Badge>
                    </MenuItem>

                </Right>
            </Warapper>
        </Container>
    )
}

export default Navbar