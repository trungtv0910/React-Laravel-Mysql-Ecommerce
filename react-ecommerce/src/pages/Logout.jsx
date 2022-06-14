import React, { useEffect } from 'react'
import { useDispatch, useSelector } from 'react-redux';
import { useNavigate } from 'react-router-dom';

import { logout } from '../redux/apiCall';

const Logout = () => {

    const user = useSelector(state => state.user.currentUser);
    const navigate = useNavigate();
    const dispatch = useDispatch();
    useEffect(() => {
        const handleLogout = async () => {
            try {
                let res = await logout(dispatch, user);
                if (res) {
                    localStorage.clear();
                    navigate("/");
                }
            } catch (error) {
                console.log(error);
            }
        }
        handleLogout();
    }, [user]);
    return (
        <div>Logout</div>
    )
}
export default Logout