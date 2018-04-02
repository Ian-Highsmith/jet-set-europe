import React from 'react';
import { Link } from 'react-router';

const CountryTile = (props) => {
  return(
    <div className="Country">
      <Link to={`/countries/${props.id}`}>
        <h4>{props.name}</h4>
        <h5>{props.description}</h5>
        <img src={props.photo_url}/>
      </Link>
    </div>
  )
}

export default CountryTile;
