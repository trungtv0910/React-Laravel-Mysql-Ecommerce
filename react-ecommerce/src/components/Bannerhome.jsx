import { Link } from "react-router-dom"
import styled from "styled-components"


const Container = styled.div`
/* margin: 15px 0; */
display: flex;
flex-wrap: wrap;
/* padding: 20px; */
margin: 50px 20px ;
background-color: #f9f86c;
border-radius: 50px;
`
const ImageBanner = styled.img`
    flex: 1;
    width: 100%;
`
const InfoBanner = styled.div`
    flex: 1;
    padding: 70px 40px 80px 60px;
    display:flex;
    flex-direction: column;
    justify-content: space-between;
`
const AboutHeader = styled.h2`
    font-weight: 500;
    font-size: 54px;
    line-height: 1.15em;
`
const AboutDescription = styled.div`
    font-weight: 600;
    margin-bottom: 5px;
    font-size: 14px;
    line-height: 1.5;
    color: #231f20;
    text-align: left;
`
const AboutButton = styled.button`
    border-radius: 50px;
    padding: 15px 35px;
    outline: none;border:none;
    font-weight: 600;
    font-size: 14px;
    background-color: #fff;
    cursor: pointer;
    &:hover{
        background-color:teal;
        color: #fff;
    }
`
const StyledLink = styled(Link)`
    text-decoration: none;
    color: black;

    &:focus, &:hover, &:visited, &:link, &:active {
        text-decoration: none;
    }
`;

const Bannerhome = () => {
    return (
        <Container>
            <ImageBanner src="https://mcdn.coolmate.me/image/June2022/mceclip2_87.png"></ImageBanner>
            <InfoBanner>
                <AboutHeader>Trải nghiệm mua sắm hài lòng với #Weco</AboutHeader>
                <AboutDescription>
                    <p>Giá cả hợp lý</p>

                    <p>Dịch vụ 100% hài lòng</p>

                    <p>60 ngày đổi trả</p>

                    <p>Tự hào sản xuất tại Việt Nam</p>
                </AboutDescription>
                <StyledLink to="" >
                    <AboutButton>Tìm hiểu thêm</AboutButton>
                </StyledLink>

            </InfoBanner>
        </Container>
    )
}
export default Bannerhome