import React, { useState } from "react";

function ScoreBoard() {
  const [score, setScore] = useState(0);
  const [name, setName] = useState("Test");

  return (
    <>
      <div>
        <h1>Score Board</h1>
      </div>

      <hr />

      <div>
        <h2>{name} has scored {score}</h2>
      </div>

      <div>
        <button onClick={() => setName("Demo")}>Change Player name </button>
        <button onClick={() => setScore(score + 4)}>+</button>
        <button onClick={() => setScore(score - 1)}>-</button>
      </div>
    </>
  );
}

export default ScoreBoard;
