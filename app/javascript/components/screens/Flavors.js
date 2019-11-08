import React from "react";

const FlavorsForm = ({
  flavors: flavorList,
  setFavoriteFlavor,
  onSubmit: propOnSubmit
}) => {
  const onSubmit = e => {
    e.preventDefault();
    propOnSubmit && propOnSubmit();
  };

  return (
    <form className="v-centered-content" id="flavor_form" onSubmit={onSubmit}>
      <div style={{ maxWidth: 410, marginBottom: 10 }}>
        <p className="card_font">
          Flavor is everything. Pick a flavor and get a bag of Red Bay Coffee.
        </p>
      </div>
      <div className="form-group full-width">
        <select
          name="flavor_note"
          id="flavor_note"
          onChange={e => setFavoriteFlavor(e.target.value)}
          className="form-control"
          required
          defaultValue=""
        >
          <option value="" disabled>
            What's your flavor?
          </option>
          {flavorList.map(([id, name]) => (
            <option key={`flavor-${id}`} value={id}>
              {name}
            </option>
          ))}
        </select>
      </div>
      <input
        name="commit"
        value="Next"
        type="submit"
        className="btn btn-outline-warning"
        form="flavor_form"
      />
    </form>
  );
};

export default FlavorsForm;
