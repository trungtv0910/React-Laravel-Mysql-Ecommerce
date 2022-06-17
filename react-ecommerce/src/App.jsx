import Cart from "./pages/Cart";
import Home from "./pages/Home";
import Login from "./pages/Login";
import Product from "./pages/Product";
import ProductList from "./pages/ProductList";
import Register from "./pages/Register";
import Success from "./pages/Success";
import { BrowserRouter as Router, Navigate, Redirect, Route, Routes } from 'react-router-dom';
import { publicRequest } from "./requestMethods";
import { useEffect } from "react";
import { login } from "./redux/apiCall";
import { useSelector } from "react-redux";
import Logout from "./pages/Logout";


import { ToastContainer, toast } from 'react-toastify';
import 'react-toastify/dist/ReactToastify.css';


// axios.defaults.headers.post['Content-Type'] = 'application/json';
// axios.defaults.headers.post['Accept'] = 'application/json';
// publicRequest.defaults.withCredentials = true;
// Set the AUTH token for any request


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

  const user = useSelector((state) => state.user.currentUser);
  console.log('GERUSSER', user)
  return (
    <Router>

      <Routes>

        <Route path="/" element={<Home />} />
        <Route path="/products/:category/:name" element={<ProductList />} />
        <Route path="/products/:category" element={<ProductList />} />
        <Route path="/products/" element={<ProductList />} />
        <Route path="/product/:id" element={<Product />} />
        <Route path="/cart" element={<Cart />} />
        <Route path="/success" element={<Success />} />

        <Route path="/login" element={user ? <Navigate to="/" replace /> : <Login />} />
        <Route path="/register" element={user ? <Navigate to="/" replace /> : <Register />} />
        <Route path="/logout" element={user && <Logout />} />


      </Routes>

    </Router>

  )
    ;
};

export default App;