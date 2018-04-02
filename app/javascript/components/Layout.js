import React from 'react';
import { Link } from 'react-router';
import BackButton from './BackButton';

const Layout = (props) => {
  return(
    <div>
      <nav className="side-bar">
        <section className="side-bar-section">
          <ul className="top">
            <BackButton />
            {props.location.pathname!='/api/v1//Countries' && <Link className="button secondary small" to='/api/v1/countries'> Countries </Link>}
          </ul>
        </section>
      </nav>

      {props.children}
    </div>
  )
}

export default Layout;
