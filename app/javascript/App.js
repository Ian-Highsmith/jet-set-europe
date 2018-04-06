import React from 'react'
import { Router, browserHistory, Route, IndexRoute, Link } from 'react-router'
import CountriesIndexContainer from './containers/CountriesIndexContainer'
import CountryShowContainer from './containers/CountryShowContainer'
import Layout from './components/Layout'

const App = props => {
  return(
    <Router history={browserHistory}>
      <Route path='/' component={Layout}>
        <IndexRoute component={CountriesIndexContainer} />
        <Route path='/api/v1/countries/:id' component={CountryShowContainer} />
      </Route>
    </Router>
  )
}

export default App;
