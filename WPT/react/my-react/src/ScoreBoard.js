import { useState } from "react";

export function ScoreBoard(){
    const [score, setScore]=useState(0);
    const [player, setPlayer]=useState("Pratik");


    const incrementScore=()=>{
        setScore(score+4);
    }

    const decrementScore=()=>{
        setScore(score-1);
    }

    const changePlayer=()=>{
        setPlayer("Divya");
    }
    return(
        <div>
            <h1>{player} has score {score}</h1>
            <button onClick={incrementScore}>+</button>
            <button onClick={decrementScore}>-</button>
            <button onClick={changePlayer}>Change Player</button>
        </div>
    );
}