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
      <div style={{ maxWidth: 450, marginBottom: 10 }}>
        <p>
          Whether you’re new to this or true to this, flavor is everything. Tell
          us what flavor you like and enjoy a bag of Red Bay Coffee on us.
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
            Choose a favorite flavor
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
        className="btn btn-primary mb1 bg-black justify-content-md-center"
        form="flavor_form"
      />
    </form>
  );
};

export default FlavorsForm;
