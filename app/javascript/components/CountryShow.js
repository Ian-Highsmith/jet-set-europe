import React from 'react';
import { browserHistory, Link } from 'react-router';

const CountryShow = (props) => {
  return(
    <div className="country-show">
      <div className="specific-country">
        <h2>{props.name} {props.description}</h2>
          <img src={props.photo_url}></img>
      </div>
      <div className = "hotel-info">
        <p>{props.name}</p>
        <img src={props.photo_url}></img>
        <p>Location: {props.location}</p>
        <p>About: {props.description}</p>
      </div>
    </div>
  )
}

export default CountryShow;

{/* <p>Landmarks/events: <Link to={`/teams/${props.team_id}`}>
{props.team_name} put inside div to link to events / landmarks close to hotel
</Link></p> */}
