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
    <form id="flavor_form" onSubmit={onSubmit}>
      <div className="form-group">
        <label>Choose one of your favorite flavors:</label>
        <select
          name="flavor_note"
          id="flavor_note"
          onChange={e => setFavoriteFlavor(e.target.value)}
          className="form-control"
          required
          defaultValue=""
        >
          <option value="" disabled>
            Select your flavor
          </option>
          {flavorList.map(([id, name]) => (
            <option key={`flavor-${id}`} value={id}>
              {name}
            </option>
          ))}
        </select>
      </div>
    </form>
  );
};

export default FlavorsForm;
