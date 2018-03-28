import React, { Component } from 'react';
import CountryTile from '../components/CountryTile';

class CountriesContainer extends Component {
  constructor(props){
    super(props);
    this.state = {
      Countries: []
    }
  }

  componentDidMount(){
    fetch('/api/v1/countries')
    .then(response => {
      let parsed = response.json()
      return parsed
    }).then(countries => {
      this.setState({ countries: countries})
    })
  }

  render(){
    let countries = this.state.countries.map(countries => {
      return(
        <CountryTile
          key={countries.id}
          id={countries.id}
          name={countries.name}
          photo_url={photo.url}
          description={description.url}
        />
      )
    })

    return(
      <div>
        <h3 className="countries-index">All Countries</h3>
        {countries}
      </div>
    )
  }
}

export default CountriesContainer;
