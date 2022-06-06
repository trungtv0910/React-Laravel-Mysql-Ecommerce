
import { ArrowLeftOutlined, ArrowRightOutlined } from "@material-ui/icons"
import styled from "styled-components"
import Button from '@material-ui/core/Button';
const Container = styled.div`
    width:100%;
    height:100vh;
    display:flex;
    position: relative;
    overflow: hidden;
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
    top:0;
    bottom:0;
    left:${props => props.direction === "left" && "10px"};
    right:${props => props.direction === "right" && "10px"};
    margin:auto;
    cursor: pointer;
    opacity: 0.5;
    z-index: 2;
`


const Wrapper = styled.div`
height:100%;
display: flex;
transform: translateX(0vw);
`
const Slider = styled.div`
    width: 100vw;
    height: 100vh;
    display: flex;
    align-items: center;
    background-color: #${props => props.bg};

`
const ImgContainer = styled.div`
height: 100%;
    flex:1;
`
const Image = styled.img`
    height: 80%;
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
    // HANDLE
    const handleClick = (direction) => {

    }
    return (
        <Container>
            <Arrow direction="left" onClick={() => handleClick('left')}>
                <ArrowLeftOutlined ></ArrowLeftOutlined>
            </Arrow>
            <Wrapper>
                <Slider bg="f5fafd">
                    <ImgContainer>
                        <Image src="https://free.vector6.com/wp-content/uploads/2021/03/freepng1423-hinh-ve-nhan-vat-co-gai-xinh-dep-quyen-ru-png-13.png" />
                    </ImgContainer>
                    <InfoContainer>
                        <Title>SUMMER SALE</Title>
                        <Desc>DONT'T COMPROMISE ON STYLE! GET FLAT 30% OFF FOR NEW ARRIVALS</Desc>
                        <Button style={{ cursor: 'pointer' }} variant="outlined" color="secondary">
                            SHOW NOW
                        </Button>
                    </InfoContainer>
                </Slider>
                <Slider bg="fcf1ed">
                    <ImgContainer>
                        <Image src="https://free.vector6.com/wp-content/uploads/2021/03/freepng1452-hinh-ve-nhan-vat-co-gai-xinh-dep-quyen-ru-png-42.png" />
                    </ImgContainer>
                    <InfoContainer>
                        <Title>WINTER SALE</Title>
                        <Desc>DONT'T COMPROMISE ON STYLE! GET FLAT 30% OFF FOR NEW ARRIVALS</Desc>
                        <Button style={{ cursor: 'pointer' }} variant="outlined" color="secondary">
                            SHOW NOW
                        </Button>
                    </InfoContainer>
                </Slider>
                <Slider bg="fbf0f4">
                    <ImgContainer>
                        <Image src="https://free.vector6.com/wp-content/uploads/2021/03/freepng1439-hinh-ve-nhan-vat-co-gai-xinh-dep-quyen-ru-png-29.png" />
                    </ImgContainer>
                    <InfoContainer>
                        <Title>FLASH SALE</Title>
                        <Desc>DONT'T COMPROMISE ON STYLE! GET FLAT 30% OFF FOR NEW ARRIVALS</Desc>
                        <Button style={{ cursor: 'pointer' }} variant="outlined" color="secondary">
                            SHOW NOW
                        </Button>
                    </InfoContainer>
                </Slider>

            </Wrapper>
            <Arrow direction="right" onClick={() => handleClick('right')}>
                <ArrowRightOutlined ></ArrowRightOutlined>
            </Arrow>
        </Container>
    )
}
export default Slide