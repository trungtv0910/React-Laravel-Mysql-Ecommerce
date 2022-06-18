import { useState } from "react"
import { useLocation } from "react-router-dom"
import styled from "styled-components"
import Announcement from "../components/Announcement"
import Footer from "../components/Footer"
import Navbar from '../components/Navbar'
import Newsletter from "../components/Newsletter"
import Products from "../components/Products"
import { mobile } from "../responsive"



const Container = styled.div`
    
`
const Title = styled.h1`
   margin: 20px; 
`

const FilterContainer = styled.div`
    display: flex;
    justify-content: space-between;
`
const Filter = styled.div`
    margin: 20px;
    ${mobile({ width: "0px 20px", display: "flex", flexDirection: "column" })}
`
const FilterText = styled.span`
    font-size: 20px;
    font-weight: 600;
    margin-right: 20px;
    ${mobile({ marginRight: "0px" })}
`
const Select = styled.select`
    padding:10px ;
    margin-right: 20px;
    ${mobile({ margin: "10px 0px" })}
`
const Option = styled.option``


const ProductSearch = () => {
    const location = useLocation();

    const navigateState = location.state;

    let keySearch = '';
    if (navigateState) {
        keySearch = navigateState.key;
    }



    const [filter, setFilter] = useState({});
    const [sort, setSort] = useState("newest");

    const handleFilter = (e) => {

        const value = e.target.value;

        setFilter({
            ...filter, [e.target.name]: value
        })

    }

    return (
        <Container>
            <Announcement />
            <Navbar />

            <Title>
                {keySearch && keySearch}
            </Title>
            <FilterContainer>
                <Filter> <FilterText>Filter Products</FilterText>
                    <Select name="color" defaultValue="" onChange={(e) => handleFilter(e)}>
                        <Option value="ALL">Color</Option>
                        <Option>White</Option>
                        <Option>Black</Option>
                        <Option>Red</Option>
                        <Option>Yellow</Option>
                        <Option>Green</Option>
                    </Select>
                    <Select name="size" defaultValue="" onChange={(e) => handleFilter(e)}>
                        <Option value="ALL" >Size</Option>
                        <Option>XS</Option>
                        <Option>S</Option>
                        <Option>M</Option>
                        <Option>L</Option>
                        <Option>XL</Option>
                    </Select>
                </Filter>
                <Filter> <FilterText>Sort Products</FilterText>
                    <Select defaultValue="newest" onChange={(e) => setSort(e.target.value)}>
                        <Option value="newest">Newest</Option>
                        <Option value="asc">Price (asc)</Option>
                        <Option value="desc">Price (desc)</Option>

                    </Select>
                </Filter>

            </FilterContainer>
            <Products keySearch={keySearch} filters={filter} sort={sort} />
            <Newsletter />
            <Footer />
        </Container>
    )
}

export default ProductSearch