import { ContactSupportOutlined } from '@material-ui/icons'
import React, { useEffect, useState } from 'react'
import styled from 'styled-components'
import { popularProducts } from '../data'
import { getProductByCategoryServer, getProductsServer } from '../redux/apiProductCall'
import Product from './Product'

const Container = styled.div`
display: flex;
padding: 20px;
flex-wrap: wrap;
justify-content: space-between;
`
const Products = ({ cateId, filters, sort }) => {
    console.log('cateId', cateId, 'filter', filters, 'sort', sort);
    const [products, setProducts] = useState([]);
    const [filteredProducts, setFilteredProducts] = useState([]);
    const [productsFiltet, setProductsFiltet] = useState([]);


    useEffect(() => {
        const getProducts = async () => {
            try {
                console.log('cateId', cateId)
                let listProducts;
                if (cateId) {
                    listProducts = await getProductByCategoryServer(cateId);
                } else {
                    listProducts = await getProductsServer();
                }
                console.log('LISTPRODUCTS', listProducts);

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

    }, [cateId]);

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

            {(cateId && filteredProducts.length > 0) ? filteredProducts.map((item) =>
                <Product item={item} key={item.id}></Product>
            ) :
                products.slice(0, 8).map((item, index) => (
                    <Product item={item} key={item.id}></Product>
                ))

            }


        </Container>
    )
}
export default Products