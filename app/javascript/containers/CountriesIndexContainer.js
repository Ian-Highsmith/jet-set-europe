import React, { Component } from 'react';
import CountryTile from '../components/CountryTile';

class CountriesIndexContainer extends Component {
  constructor(props){
    super(props);
    this.state = {
      allCountries: []
    }
    // this.handleClick = this.handleClick.bind(this);
  }

  componentDidMount(){
    fetch('/api/v1/countries')
    .then(response => {
      let parsed = response.json()
      return parsed
    }).then(countries => {
      this.setState({ allCountries: countries})
    })
  }

  render() {
    const { allCountries } = this.state;
    const renderCountries = allCountries.map(country => {
      return(
        <CountryTile
          key={country.id}
          id={country.id}
          name={country.name}
          photo_url={country.photo_url}
          description={country.description}
        />
      )
    });

    return(
      <div>
        <h3> Countries of Europe</h3>
        <ul>
          {renderCountries}
        </ul>
      </div>
    )
  }
}

export default CountriesIndexContainer;
