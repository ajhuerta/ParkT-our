import React from 'react'
import {BrowserRouter as Router, Route, Switch} from 'react-router-dom'
import Header from './components/Header'
import Showcase from './components/Showcase'
import Destinations from './components/Destinations'
import Login from './components/Login'
import SignUp from './components/SignUp'
import Footer from './components/Footer'
import Error from './components/Error'
import UserDashboard from './components/UserDashboard'
import DashboardHeader from './components/DashboardHeader'
import UserPlans from './components/UserPlans'
import UserActivityMatcher from './components/UserActivityMatcher'
import UserManageAccount from './components/UserManageAccount'

function App() {
  return (
    <Router>

      <Switch>
      <Route exact path= "/">
          <Header/>
          <Showcase/> 
         <Destinations/> 
         <Footer/>
      </Route>

      <Route path = "/login">
        <Header/>
        <Login/>
        <Footer/>
      </Route>

      <Route path = '/signup'>
        <Header/>
        <SignUp/>
        <Footer/>
      </Route>

      <Route path = '/profile'>
        <DashboardHeader/>
        <UserDashboard/>
      </Route>

      <Route path = '/my-plans'>
        <DashboardHeader/>
        <UserPlans/>
      </Route>

      <Route path = '/park-activities'>
        <DashboardHeader/>
        <UserActivityMatcher/>
      </Route>

      <Route path = '/manage-account'>
        <DashboardHeader/>
        <UserManageAccount/>
        
      </Route>

      <Route path = "*">
        <Header/>
        <Error/>
        <Footer/>
      </Route>

      </Switch>

    </Router>


  );
}

export default App;
