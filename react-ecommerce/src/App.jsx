import Cart from "./pages/Cart";
import Home from "./pages/Home";
import Login from "./pages/Login";
import Product from "./pages/Product";
import ProductList from "./pages/ProductList";
import Register from "./pages/Register";
import { BrowserRouter as Router, Navigate, Redirect, Route, Routes } from 'react-router-dom';
import { publicRequest } from "./requestMethods";
import { useEffect } from "react";
import { login } from "./redux/apiCall";



// axios.defaults.headers.post['Content-Type'] = 'application/json';
// axios.defaults.headers.post['Accept'] = 'application/json';
// publicRequest.defaults.withCredentials = true;


const App = () => {
  // useEffect(() => {
  //   getUser();
  // }, []);
  // const getUser = async () => {

  //   // let res = await user();
  //   let loginFE = await login({ email: 'daica@gmail.com', password: 'Vantrung1' });
  //   console.log('login:', loginFE);
  //   let userFE = await user();
  //   console.log('infoOf', userFE);
  // }

  const user = false;
  return (

    // <ProductList />
    // <Product />
    // <Login />
    // <Register />
    // <Cart />

    <Router>

      <Routes>

        <Route path="/" element={<Home />} />
        <Route path="/products/:category" element={<ProductList />} />
        <Route path="/products/" element={<ProductList />} />
        <Route path="/product/:id" element={<Product />} />
        <Route path="/cart" element={<Cart />} />
        <Route path="/success" element={<Product />} />

        <Route path="/login" element={user ? <Navigate to="/" replace /> : <Login />} />
        <Route path="/register" element={user ? <Navigate to="/" replace /> : <Register />} />



      </Routes>

    </Router>

  )
    ;
};

export default App;