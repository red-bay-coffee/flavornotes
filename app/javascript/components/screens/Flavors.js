import React from "react";

const Flavors = ({ flavors: flavorList }) => {
  return (
    <div className="form-group">
      <label>Choose one of your favorite flavors:</label>
      <select name="flavor_note" id="flavor_note" className="form-control">
        {flavorList.map(([id, name]) => (
          <option key={`flavor-${id}`} value={id}>
            {name}
          </option>
        ))}
      </select>
    </div>
  );
};

export default Flavors;
