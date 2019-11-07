import React, { useState } from "react";

const UserRegistrationForm = ({ favoriteFlavor, formRef }) => {
  return (
    <React.Fragment>
      <p>Great! Please tell us where to send your free coffee</p>

      <form
        id="new_user"
        action="/users"
        acceptCharset="UTF-8"
        method="post"
        ref={formRef}
      >
        <div className="form-group">
          <label>Name</label>
          <input
            className="form-control"
            type="text"
            id="user_name"
            name="user[name]"
            required
          />
        </div>
        <div className="form-group">
          <label>Email</label>
          <input
            className="form-control"
            type="email"
            id="user_email"
            name="user[email]"
            required
          />
        </div>
        <input
          className="form-control"
          type="hidden"
          id="flavor_id"
          name="flavor_note"
          value={favoriteFlavor}
        />
        <input
          name="commit"
          value="Send me beautiful coffee"
          type="submit"
          className="btn btn-primary justify-content-md-center"
          form="new_user"
        />
      </form>
    </React.Fragment>
  );
};

export default UserRegistrationForm;
