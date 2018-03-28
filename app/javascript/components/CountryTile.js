import React from 'react';
import { Link } from 'react-router';

const CountryTile = props => {
  return(
    <div className="country">
      <Link to={`/country/${props.id}`}><h1>{props.name}</h1></Link>
      <h1>{props.name}</h1>
    </div>
  )
}

export default CountryTile;
