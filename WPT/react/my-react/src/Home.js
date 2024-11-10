import { Component } from "react";
import { Header } from "./Header";

export class Home extends Component{
    render (){
        return(
            <div>
                <Header title = "Title from Home." discription = "This is discription from Home Page."></Header>
                <h1>Welcome to Home</h1>
            </div>
        );
    }
}