import { Component } from "react";

export class Header extends Component{
    render(){
        return(
            // <div>
            //     <h1>Header Heading</h1>
            //     <p>This is dummy discription.</p>
            // </div>

            <div>
                <h3>
                    {this.props.title}
                    <br></br>
                    {this.props.discription}
                </h3>
            </div>
        );
    }
}