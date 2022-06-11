import { ContactSupportOutlined } from '@material-ui/icons'
import React, { useEffect, useState } from 'react'
import styled from 'styled-components'
import { popularProducts } from '../data'
import { getProductsServer } from '../redux/apiProductCall'
import Product from './Product'

const Container = styled.div`
display: flex;
padding: 20px;
flex-wrap: wrap;
justify-content: space-between;
`
const Products = ({ cat, filters, sort }) => {
    console.log(cat, filters, sort);
    // let listProducts = await getProducts();
    // console.log('dang sách sản phẩm', listProducts)
    const [products, setProducts] = useState([]);
    const [filteredProducts, setFilteredProducts] = useState([]);
    const [productsFiltet, setProductsFiltet] = useState([]);


    useEffect(() => {
        const getProducts = async () => {
            try {
                let listProducts = await getProductsServer();

                if (listProducts && listProducts.status === 200) {
                    setProducts(listProducts.data.data);
                    setFilteredProducts(listProducts.data.data);
                } else {
                    console.log('Get data Faill');
                }
            } catch (error) {
                console.log(error);
            }
        }

        getProducts();

    }, [cat]);

    useEffect(() => {
        const setProductFil = () => {
            cat &&
                products.filter((item, keyFilter) =>
                    Object.entries(filters).every(([key, value]) => {
                        let array = item[key].replace(/'/g, '"');
                        array = JSON.parse(array);

                        // console.log('item [' + keyFilter + ']đủ điều kiện', array.includes(value))
                        if (array.includes(value) == true) {
                            setFilteredProducts(filteredProducts => [...filteredProducts, item]);

                        }

                    }
                    )
                )
        }
        setFilteredProducts([]);
        setProductFil();



    }, [products, cat, filters]);
    useEffect(() => {
        const setProductFil = () => {
            cat &&
                products.filter((item, keyFilter) =>
                    Object.entries(filters).every(([key, value]) => {
                        let array = item[key].replace(/'/g, '"');
                        array = JSON.parse(array);

                        // console.log('item [' + keyFilter + ']đủ điều kiện', array.includes(value))
                        if (array.includes(value) == true) {
                            setFilteredProducts(filteredProducts => [...filteredProducts, item]);

                        }

                    }
                    )
                )
        }
        setFilteredProducts([]);
        setProductFil();
        if (sort === "newest") {
            setFilteredProducts((prev) =>
                [...prev].sort((a, b) => a.createdAt - b.createdAt)
            );
        } else if (sort === "asc") {
            setFilteredProducts((prev) =>
                [...prev].sort((a, b) => a.price - b.price)
            );
        } else {
            setFilteredProducts((prev) =>
                [...prev].sort((a, b) => b.price - a.price)
            );
        }

    }, [sort, filters]);
    return (

        <Container>

            {(cat && filteredProducts.length > 0) ? filteredProducts.map((item) =>
                <Product item={item} key={item.id}></Product>
            ) :
                products.slice(0, 8).map((item, index) => (
                    <Product item={item} key={item.id}></Product>
                ))

            }
            {/* {products.slice(0, 8).map((item, index) => (
                <Product item={item} key={item.id}></Product>
            ))} */}


        </Container>
    )
}
export default Products