import React from "react";

function Cars(props) {
  return (
    <>
      <div>
        <h1>Props Demo</h1>
      </div>

      <div>
        <h3>
          Name of car : {props.name} <br />
          Launch Year is : {props.year}
        </h3>
      </div>
    </>
  );
}

export default Cars;
