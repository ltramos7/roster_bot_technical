import React from 'react';

class Login extends React.Component {
    constructor(props){
        super()
        this.state = {
            email: "",
            password_digest: ""
        }
    }

    handleInputChange = (e) => {
        this.setState({
            [e.target.name]: e.target.value
        })
       
    }

    handleSubmit = (e) => {
        e.preventDefault()
        
        const reqObj = {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(this.state)
        }

        fetch("http://localhost:3000/teams/", reqObj)
        .then(resp => resp.json())
        .then(data => console.log(data))

    }

    render(){
        return (
            <div>
                <h3>Log In</h3>
                <form onSubmit={this.handleSubmit}>
                    <label for="email">Email</label>
                    <input type="email" name="email" onChange={this.handleInputChange}  />
                    <label for="password">Password</label>
                    <input type="password" name="password" onChange={this.handleInputChange} />
                </form>
                    <input type="submit"/>
            </div>
        )
    }
}

export default Login;