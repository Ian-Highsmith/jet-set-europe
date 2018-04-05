import React from 'react';
import CountryShow from '../components/CountryShow';
import HotelsTile from '../components/HotelsTile';


class CountryShowContainer extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      country: {},
      hotels: []
    }
  }

  componentWillMount() {
    let countryId = this.props.params.id
    fetch(`/api/v1/countries/${countryId}`)
    .then(response => {
      let parsed = response.json()
      return parsed
    }).then(body => {
      this.setState({ country: body['country'], hotels: body['hotels'] })
    })
  }

  render() {
    const { hotels } = this.state;

    const renderHotels = hotels.map(hotel => {
      return(
        <HotelTile
          key={hotel.id}
          id={hotel.id}
          name={hotel.name}
          location={hotel.location}
          photo_url={hotel.photo_url}
          description={hotel.description}
        />
      )
    });

      return(
        <div>
          <Countryshow
            key={this.state.country.id}
            id={this.state.country.id}
            name={this.state.country.name}
            photo_url={this.state.country.photo_url}
          />
          <ul>
            {renderHotels}
          </ul>
        </div>
      )
    }
  }

  export default CountryShowContainer;
