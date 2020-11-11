import React from 'react'

class Signup extends React.Component {
    constructor(props){
        super(props)
        this.state = {
            team_name: " ",
            email: " ",
            password: " ",
        }
    }

    handleInputChange = (event) => {
        this.setState({
            [event.target.name]: event.target.value
        })  
    }


    handleSubmit = (event) => {
        event.preventDefault()
        console.log(this.state.password)
      
        const postObj = {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({team: this.state})
        }

        fetch("http://localhost:3000/teams", postObj)
        .then( resp => resp.json() )
        .then(data => {
            if (data.error){
                alert(data.error)
            }else{
                console.log(data)
            }
        })
        
    }


    render(){
        return (
            <div>
                <h3>Sign Up!</h3>
                <form onSubmit={this.handleSubmit}>
                    <label for="team_name">Team Name:</label>
                    <input  name="team_name" onChange={this.handleInputChange} value={this.state.value} />

                    <label for="email">Email:</label>
                    <input type="email" name="email" onChange={this.handleInputChange} value={this.state.value}  />

                    <label for="password">Password:</label>
                    <input type="password" name="password" onChange={this.handleInputChange} value={this.state.value} />
                    
                    <input type="submit"/>
                </form>
            </div>
        )
    }
}

export default Signup