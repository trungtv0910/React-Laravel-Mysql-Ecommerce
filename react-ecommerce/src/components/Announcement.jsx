import styled from "styled-components"

const Container = styled.div`
height:30px;
background-color:teal;
color:white;
display:flex;
align-items:center;
justify-content:center;
font-size:14px;
font-weight:500px;

`

const Announcement = () => {
    return (
        <Container>
            Siêu Khuyến Mãi! Miễn Phí giao hàng từ đơn hàng 500.000đ
        </Container>
    )
}
export default Announcement