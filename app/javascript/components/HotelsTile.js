import React from 'react';
import { Link } from 'react-router';

const HotelsTile = (props) => {
  return(
    <div className="hotel">
      <h4>{props.name}</h4>
      <img src={props.photo_url} />
      <p>
        {props.location}<br/>
        {props.description}<br/>
      </p>
    </div>
  )
}

export default HotelsTile;
