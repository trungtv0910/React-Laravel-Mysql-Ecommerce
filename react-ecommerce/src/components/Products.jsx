import { ContactSupportOutlined } from '@material-ui/icons'
import React, { useEffect, useState } from 'react'
import styled from 'styled-components'
import { popularProducts } from '../data'
import { getProductByCategoryServer, getProductSearchServer, getProductsServer } from '../redux/apiProductCall'
import Product from './Product'

const Container = styled.div`
display: flex;

flex-wrap: wrap;
justify-content:flex-start;
padding: 20px;
`
const Products = ({ cateId, filters, sort, keySearch }) => {
    console.log('cateId', cateId, 'filter', filters, 'sort', sort, "Key", keySearch);
    const [products, setProducts] = useState([]);
    const [filteredProducts, setFilteredProducts] = useState([]);
    // const [productsFiltet, setProductsFiltet] = useState([]);


    useEffect(() => {
        const getProducts = async () => {
            try {

                let listProducts;
                if (cateId) {
                    listProducts = await getProductByCategoryServer(cateId);
                }
                else if (keySearch) {
                    listProducts = await getProductSearchServer(keySearch);
                }
                else {
                    listProducts = await getProductsServer();
                }


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

    }, [cateId, keySearch]);

    useEffect(() => {
        const setProductFil = () => {
            cateId &&
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



    }, [products, cateId, filters]);
    useEffect(() => {
        const setProductFil = () => {
            cateId &&
                products.filter((item, keyFilter) =>
                    Object.entries(filters).every(([key, value]) => {
                        let array = item[key].replace(/'/g, '"');
                        array = JSON.parse(array);
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

            {(cateId && filteredProducts.length > 0) ? filteredProducts.map((item) =>
                <Product item={item} key={item.id}></Product>
            ) :
                products.slice(0, 12).map((item, index) => (
                    <Product item={item} key={item.id}></Product>
                ))

            }


        </Container>
    )
}
export default Products