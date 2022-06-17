import { Accordion, AccordionDetails, AccordionSummary, Badge, Button, Collapse, IconButton, List, ListItem, ListItemIcon, ListItemText, ListSubheader, makeStyles, Menu } from '@material-ui/core';
import { ExpandLess, ReorderOutlined, Search, StarBorder, ViewList } from '@material-ui/icons';
import React, { useState } from 'react';
import styled from 'styled-components';
import MailIcon from '@material-ui/icons/Mail';
import ShoppingCartOutlinedIcon from '@material-ui/icons/ShoppingCartOutlined';
import { mobile } from '../responsive';
import { Link } from 'react-router-dom';
import { useSelector } from 'react-redux';
import MenuIcon from '@material-ui/icons/Menu';
import './navbar.css';

import Typography from '@material-ui/core/Typography';
import ExpandMoreIcon from '@material-ui/icons/ExpandMore';

import SendIcon from '@material-ui/icons/Send';
import InboxIcon from '@material-ui/icons/MoveToInbox';

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
const useStyles = makeStyles((theme) => ({
    root: {
        width: '100%',
    },
    heading: {
        fontSize: theme.typography.pxToRem(15),
        fontWeight: theme.typography.fontWeightRegular,
    },
}));

const Navbar = () => {
    const quantity = useSelector(state => state.cart.quantityProduct);
    const user = useSelector(state => state.user.currentUser);
    // menu category
    const [anchorEl, setAnchorEl] = useState(null);

    const handleClick = (event) => {
        setAnchorEl(event.currentTarget);
    };

    const handleClose = () => {
        setAnchorEl(null);
    };
    // end menu category
    // handlde click child menu

    const classes = useStyles();

    return (
        <Container>
            <Warapper >
                <Left>

                    <Button aria-controls="simple-menu" aria-haspopup="true" onClick={handleClick}>
                        <MenuIcon />
                    </Button>
                    <Menu className="menu-cate"
                        id="simple-menu"
                        anchorEl={anchorEl}
                        keepMounted
                        open={Boolean(anchorEl)}
                        onClose={handleClose}

                    >
                        <ListItem button>
                            <ListItemIcon>
                                <ReorderOutlined onClick={handleClose} />
                            </ListItemIcon>
                            <ListItemText primary="All Categories" />
                        </ListItem>
                        {/* <MenuItem onClick={handleClose}> */}
                        <Accordion>
                            <AccordionSummary
                                expandIcon={<ExpandMoreIcon />}
                                aria-controls="panel1a-content"
                                id="panel1a-header"
                            >
                                <Typography className={classes.heading}>Accordion 1</Typography>
                            </AccordionSummary>
                            <List component="nav" aria-label="main mailbox folders">
                                <ListItem button onClick={handleClose}>
                                    <ListItemIcon>
                                        <InboxIcon />
                                    </ListItemIcon>
                                    <ListItemText primary="Inbox" />
                                </ListItem>
                                <ListItem button onClick={handleClose}>
                                    <ListItemIcon>
                                        <InboxIcon />
                                    </ListItemIcon>
                                    <ListItemText primary="Inbox" />
                                </ListItem>
                            </List>
                        </Accordion>
                        <Accordion>
                            <AccordionSummary
                                expandIcon={<ExpandMoreIcon />}
                                aria-controls="panel2a-content"
                                id="panel2a-header"
                            >
                                <Typography className={classes.heading}>Accordion 2</Typography>
                            </AccordionSummary>

                            <List component="nav" aria-label="main mailbox folders">
                                <ListItem button onClick={handleClose}>
                                    <ListItemIcon>
                                        <InboxIcon />
                                    </ListItemIcon>
                                    <ListItemText primary="Inbox" />
                                </ListItem>
                                <ListItem button onClick={handleClose}>
                                    <ListItemIcon>
                                        <InboxIcon />
                                    </ListItemIcon>
                                    <ListItemText primary="Inbox" />
                                </ListItem>
                            </List>

                        </Accordion>
                        {/* </MenuItem> */}

                    </Menu>


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
                    {!user ? <>
                        <StyledLink to="/register">
                            <MenuItem>REGISTER</MenuItem>
                        </StyledLink>
                        <StyledLink to="/login" > <MenuItem>SIGN IN</MenuItem></StyledLink>
                    </>
                        :
                        <>
                            <MenuItem>Tài khoản: {user.user.name}</MenuItem>
                            <StyledLink to="/logout" > <MenuItem>LOGOUT</MenuItem></StyledLink>
                        </>
                    }
                    <StyledLink to="/cart" >
                        <MenuItem>
                            <Badge badgeContent={quantity > 0 ? quantity : 0} color="primary">
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