
import { ContactMailTwoTone, Facebook, Instagram, MailOutline, Phone, Pinterest, Room, Twitter } from '@material-ui/icons'
import styled from 'styled-components'
import { mobile } from '../responsive'

const Container = styled.div`
display:flex;
${mobile({ flexDirection: "column" })}
`
const Left = styled.div`
flex:1;
display: flex;
flex-direction: column;
padding: 20px;
`

const Logo = styled.h1`
    
`
const Desc = styled.p`
    margin: 20px 0px;
`
const SocialContainer = styled.div`
display: flex;
`

const SocialIcon = styled.div`
width: 40px;
height: 40px;
border-radius: 50%;
color:white;
background-color: #${props => props.color};
display: flex;
align-items: center;
justify-content: center;
margin-right: 20px;
cursor: pointer;
transition: all 0.5s ease;
&:hover {transform:scale(1.2)}
`
const Center = styled.div`
flex:1;
padding: 20px;
${mobile({ display: "none" })}
`
const Title = styled.h3`
margin-bottom: 30px;
`

const List = styled.ul`
margin: 0;
padding: 0;
display: flex;
flex-wrap: wrap;
list-style: none;
`
const ListItem = styled.li`
width: 50%;
margin-bottom: 20px;
`


const Right = styled.div`
flex:1;
padding: 20px;
${mobile({ backgroundColor: "#fff8f8" })}
`
const ContactItem = styled.div`
display: flex;
margin-bottom: 20px;
align-items: center;
`
const Payment = styled.img`
width:50%;
`


const Footer = () => {
    return (
        <Container>
            <Left>
                <Logo>WECO.</Logo>
                <Desc>
                    There are many variations of passages of Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore vitae, obcaecati praesentium architecto magni expedita non dolor. Ducimus quod ab saepe quae quibusdam cumque, esse, facilis ipsam laudantium inventore possimus.
                </Desc>
                <SocialContainer>
                    <SocialIcon color="3B5999">
                        <Facebook></Facebook>
                    </SocialIcon>
                    <SocialIcon color="E4405F">
                        <Instagram></Instagram>
                    </SocialIcon>
                    <SocialIcon color="55ACEE">
                        <Twitter></Twitter>
                    </SocialIcon>
                    <SocialIcon color="E60023">
                        <Pinterest></Pinterest>
                    </SocialIcon>
                </SocialContainer>
            </Left>
            <Center>
                <Title>Li??n K???t</Title>
                <List>
                    <ListItem>Trang Ch???</ListItem>
                    <ListItem>Gi??? H??ng</ListItem>
                    <ListItem>li??n k???t</ListItem>
                    <ListItem>Y??u Th??ch</ListItem>
                    <ListItem>????n H??ng</ListItem>
                    <ListItem>Ki???m Tra ????n H??ng</ListItem>
                    <ListItem>Thanh To??n</ListItem>
                    <ListItem>Thanh To??n</ListItem>
                </List>
            </Center>
            <Right>
                <Title>Li??n h???</Title>
                <ContactItem>
                    <Room style={{ marginRight: "10px" }} />
                    123 Tr???n Ph??, ???? N???ng
                </ContactItem>
                <ContactItem>
                    <Phone style={{ marginRight: "10px" }} />
                    +84 0912345678
                </ContactItem>
                <ContactItem>
                    <MailOutline style={{ marginRight: "10px" }} />
                    trungtv0910@gmail.com
                </ContactItem>
                <Payment src="https://i.ibb.co/Qfvn4z6/payment.png" />

            </Right>
        </Container>
    )
}

export default Footer
