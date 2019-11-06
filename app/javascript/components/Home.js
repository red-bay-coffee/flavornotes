import React, { useState, useRef } from "react";

import FlavorsForm from "./screens/Flavors";
import UserRegistrationForm from "./screens/UserRegistrationForm";

const FormButton = ({ step }) =>
  step === 0 ? (
    <input
      name="commit"
      value="Next"
      type="submit"
      className="btn btn-primary justify-content-md-center"
      form="flavor_form"
    />
  ) : (
    <input
      name="commit"
      value="Send me beautiful coffee"
      type="submit"
      className="btn btn-primary justify-content-md-center"
      form="new_user"
    />
  );

const Home = ({ flavors }) => {
  const [step, setStep] = useState(0);
  const [favoriteFlavor, setFavoriteFlavor] = useState(null);

  const nextStep = () => setStep(step + 1);

  return (
    <React.Fragment>
      <div className="row justify-content-md-center">
        <div className="card">
          <div className="card-body">
            <h1 className="card-title">Header</h1>
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
            <FormButton step={step} setStep={setStep} />
          </div>
        </div>
      </div>
    </React.Fragment>
  );
};

export default Home;
