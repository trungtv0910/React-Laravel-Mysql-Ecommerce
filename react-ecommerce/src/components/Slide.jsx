
import { ArrowLeftOutlined, ArrowRightOutlined } from "@material-ui/icons"
import styled from "styled-components"
import Button from '@material-ui/core/Button';
import React, { useState } from "react";
import { slideItems } from "../data";
import { mobile } from "../responsive";

const Container = styled.div`
    width:100%;
    height:80vh;
    display:flex;
    position: relative;
    overflow: hidden;
    ${mobile({ display: "none" })}
    margin-bottom: 15px;
`
const Arrow = styled.div`
    width: 50px;
    height:50px;
    background-color: #fff7f7;
    border-radius:50%;
    display: flex;
    align-items: center;
    justify-content: center;
    position: absolute;
    top:45%;
    /* bottom:0; */
    left:${props => props.direction === "left" && "10px"};
    right:${props => props.direction === "right" && "10px"};
    margin:auto;
    cursor: pointer;
    opacity: 0.5;
    z-index: 2;
    &:hover{
        background-color: #1d1d1d;
        color:#fff;
    }
`


const Wrapper = styled.div`
height:100%;
display: flex;
transform: translateX(${props => props.slideIndex * -100}vw);
transition:  all 1.5s ease;
`
const Slider = styled.div`
    width: 100vw;
    height: 80vh;
    display: flex;
    align-items: center;
    background-color: #${props => props.bg};
 

`
const ImgContainer = styled.div`
    height: 100%;
    flex:1;
`
const Image = styled.img`
    height: 100%;
    width: 100%;
`
const InfoContainer = styled.div`
      flex:1;
      padding:50px;
`
const Title = styled.h1`
font-size:70px;`
const Desc = styled.p`
margin:50px 0px;
font-size:20px;
font-weight:500;
letter-spacing:3px ;
`





const Slide = () => {
    const [slideIndex, setSlideIndex] = useState(0);
    // HANDLE
    const handleClick = (direction) => {
        if (direction === 'left') {
            setSlideIndex(slideIndex > 0 ? slideIndex - 1 : 2);
        } else {
            setSlideIndex(slideIndex < 2 ? slideIndex + 1 : 0);
        }
    }
    return (
        <Container>
            <Arrow direction="left" onClick={() => handleClick('left')}>
                <ArrowLeftOutlined></ArrowLeftOutlined>
            </Arrow>
            <Wrapper slideIndex={slideIndex}>
                {slideItems && slideItems.map((item, index) => (
                    <Slider bg={item.bg} key={item.id} >
                        <ImgContainer>
                            <Image src={item.img} />
                            {/* <InfoContainer>
                            <Title>{item.title}</Title>
                            <Desc>{item.desc}</Desc>
                            <Button style={{ cursor: 'pointer' }} variant="outlined" color="secondary">
                                SHOW NOW
                            </Button>
                        </InfoContainer> */}
                        </ImgContainer>

                    </Slider>
                ))
                }
            </Wrapper>
            <Arrow direction="right" onClick={() => handleClick('right')}>
                <ArrowRightOutlined ></ArrowRightOutlined>
            </Arrow>
        </Container>
    )
}
export default Slide