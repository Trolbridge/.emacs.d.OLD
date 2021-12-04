let person = {
    membershipStatus: false,
    name: 'Wally',
    talk: function() {
        console.log(`The membership ${this.membershipStatus} is ${this.name}`)
    }
}

person.talk();