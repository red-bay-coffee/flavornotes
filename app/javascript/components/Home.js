import React from "react";
import Flavors from "./screens/Flavors";

const Home = ({ flavors }) => {
  return (
    <React.Fragment>
      <div className="row justify-content-md-center">
        <div className="card">
          <div className="card-body">
            <h1 className="card-title">Header</h1>
            <Flavors flavors={flavors} />
          </div>
        </div>
      </div>
    </React.Fragment>
  );
};

export default Home;
