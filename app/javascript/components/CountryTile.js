import React from 'react';
import { Link } from 'react-router';

const CountryTile = (props) => {
  return(
    <div className="Country">
      <Link to={`/api/v1/countries/${props.id}`}>
        <h4>{props.name}</h4>
        <h6>{props.description}</h6>
        <img src={props.photo_url}/>
      </Link>
    </div>
  )
}

export default CountryTile;
