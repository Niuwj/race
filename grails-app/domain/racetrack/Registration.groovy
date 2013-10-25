package racetrack

class Registration {
    Race race
    String name
    Date dateOfBirth
    String gender= 'f'
    String postalAddress
    String emailAddress
    Date createdAt = new Date()
    static belongsTo = Race
    static optionals=["postalAddress","gender"]
    static constraints={
	name(unique:true,maxLength:50,blank:false)
	dateOfBirth(nullable:false, max: new Date())
	gender(inList:['m','f'])
	postalAddress(maxLength:255)
	emailAddress(maxLength:50,email:true)
	race(nullable:false)
    }
    String toString(){
	"${this.name}"
    }
}
