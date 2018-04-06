import React, { Component } from 'react';
import CountryShow from '../components/CountryShow';
import HotelTile from '../components/HotelTile';


class CountryShowContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      country: {},
      hotel: {},
      country_id: 0,
      country_name: ''
    }
  }

  componentDidMount(){
    this.getShowData();
  }
  getShowData(){
    let countryId = this.props.params.id
    fetch(`/api/v1/country/${countryId}`, {
      credentials: 'same-origin'
    })
    .then(response => {
      if (response.ok) {
        let parsed = response.json()
       return parsed
      } else {
        let errorMessage = `${response.status} (${response.statusText})`,
        error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(body => {
      this.setState({
        country: body['country'],
        hotel: body['hotel'],
        country_id: body['country_id'],
        country_name: body['country_name']
      })
    })
  }

  render() {
      return(
        <div>
        <CountryShow
          key={this.state.country.id}
          id={this.state.country.id}
          name={this.state.country.name}
          photo_url={this.state.country.photo_url}
          description={this.state.country.description}
        />
        <hr />
          <HotelTile
            key={this.state.hotel.id}
            id={this.state.country.name+this.state.hotel.name+this.state.hotel.photo_url+this.state.hotel.location+this.state.hotel.description}
            name={this.state.hotel.name}
            photo_url={this.state.hotel.photo_url}
            description={this.state.hotel.description}
            location={this.state.hotel.location}
            country_id={this.state.hotel.country_id}
            country_name={this.state.hotel.country_name}
          />
        </div>
      )
    }
  }

  export default CountryShowContainer;
