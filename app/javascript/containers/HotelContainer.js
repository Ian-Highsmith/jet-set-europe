// import React, { Component } from 'react';
// import HotelTile from '../components/HotelTile';
//
// class HotelContainer extends Component {
//   constructor(props) {
//     super(props);
//     this.state = {
//       hotels: []
//     }
//     // this.handleClick = this.handleClick.bind(this);
//   }
//
//   componentDidlMount() {
//     fetch(`/api/v1/hotels`)
//     .then(response => {
//       let parsed = response.json()
//       return parsed
//     }).then(body => {
//       this.setState({ hotels: hotels })
//     })
//   }
//
//   render() {
//     const { hotels }
//
//     const renderHotels = currentHotels.map((Hotel, index) => {
//       return(
//         <HotelTile
//           key={hotel.id}
//           id={hotel.id}
//           name={hotel.name}
//           location={hotel.location}
//           photo_url={hotel.photo_url}
//         />
//       )
//     });
//
//     return(
//       <div>
//         <ul>
//           {renderHotels}
//         </ul>
//       </div>
//     )
//   }
// }
//
// export default HotelContainer;
