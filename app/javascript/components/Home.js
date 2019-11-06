import React, { useState } from "react";

import Flavors from "./screens/Flavors";

const FormButton = ({ step, onClick }) => {
  let label;
  switch (step) {
    case 0:
      label = "Next";
      break;

    default:
      label = "Send me beautiful coffee";
      break;
  }

  return (
    <input
      name="commit"
      value={label}
      type="submit"
      className="btn btn-primary justify-content-md-center"
      data-disable-with="Next"
      onClick={onClick}
    />
  );
};

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
              <Flavors
                flavors={flavors}
                setFavoriteFlavor={setFavoriteFlavor}
              />
            )}
            <FormButton step={step} onClick={nextStep} />
          </div>
        </div>
      </div>
    </React.Fragment>
  );
};

export default Home;
