
import React from 'react'

function Cars(props) {
  return (
    <>
    <hr /><hr />
    <br />
        <h1>Prpos demo</h1>

        <div>
            {props.name}
            <br />
            {props.addr}
        </div>

    </>
  )
}

export default Cars