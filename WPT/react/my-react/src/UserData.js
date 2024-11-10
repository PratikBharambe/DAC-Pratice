import { Component } from "react";

export class UserData extends Component {
  constructor() {
    super();
    this.state = { users: [] };
  }

  render() {
    return (
      <div>
        <h1>list of users1</h1>
        <table border={1} cellPadding={10} cellSpacing={0}>
          <thead>
            <tr>
              <th>id</th>
              <th>Name</th>
            </tr>
          </thead>
          <tbody>
            {this.state.users.map((u) => {
              return (
                <tr>
                  <td>{u.id}</td>
                  <td>{u.name}</td>
                </tr>
              );
            })}
          </tbody>
        </table>
      </div>
    );
  }

  componentDidMount() {
    fetch("https://jsonplaceholder.typicode.com/users")
      .then((response) => {
        response.json().then((data) => {
          this.setState({ users: data });
        });
      })
      .catch((error) => {
        console.log(error);
      });
  }
}
