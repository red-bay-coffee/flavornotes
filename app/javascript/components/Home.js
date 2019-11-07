import React, { useState, useRef } from "react";

import FlavorsForm from "./screens/Flavors";
import UserRegistrationForm from "./screens/UserRegistrationForm";

const Home = ({ flavors }) => {
  const [step, setStep] = useState(0);
  const [favoriteFlavor, setFavoriteFlavor] = useState(null);

  const nextStep = () => setStep(step + 1);

  return (
    <React.Fragment>
      <div className="row justify-content-md-center">
        <div className="card">
          <div className="card-body">
            {step === 0 && (
              <FlavorsForm
                flavors={flavors}
                setFavoriteFlavor={setFavoriteFlavor}
                onSubmit={nextStep}
              />
            )}
            {step === 1 && (
              <UserRegistrationForm favoriteFlavor={favoriteFlavor} />
            )}
          </div>
        </div>
      </div>
    </React.Fragment>
  );
};

export default Home;
