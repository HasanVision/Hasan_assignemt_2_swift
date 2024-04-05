import Foundation



/*
 Assignment 2
 name the file/playground: name_assignment_2_swift (replace name with your first name)
 using the same grid concept from the Chapter 11 Pizza example
 Write a simple program that will generate/print a customer email list
 formated as: Name: Jane Doe Email: jdoe@gmail.com
 create a Location struct with x and y coordinates (as we did with the pizza example)
 use the same storeRange from the pizza example as well, 2.5 (change if you like of course)
 create 2 store locations (Location, as we did with the pizza example)
 create a Customer struct that includes the following properties:
 name (String with first or full name if you prefer, it really doesn't matter)
 email (String, don't worry about validation for now)
 phone number (String, don't worry about validation for now)
 acceptedNewsletter (Bool)
 location (Location, x and y coordinates, just like the pizza example)
 create an array of customers (Customer, at least 10)
 write a function that takes in a single store location and the collection of customers and prints the email addresses of customers that are within the storeRange (you can use the distance formula from the pizza example)
 Create a GitHub repo then upload the playground file (DO NOT compress, then send me the link) use the same name as the playground file
 */



let storeManger : String = "Jane Doe"
let storeEmail : String = "jdoe@gmail.com"


let firstLocation = (3, 3)
let secondLocation = (5, 9)



struct CustomerInfo  {
    var name : String
    var email : String
    var phoneNo : String
    var acceptetedNewsLetter : Bool
    var location : (x: Int, y: Int)
    
}

var customerDetails : [CustomerInfo] = []

var c = CustomerInfo(name: "Jessica Miller", email:  "j.miller@example.com" , phoneNo: "555-123-4567", acceptetedNewsLetter: true, location: (x: 1, y: 1) )

customerDetails.append(c)
c = CustomerInfo(name: "Alex Johnson", email:  "alex.johnson@example.com" , phoneNo: "555-234-5678", acceptetedNewsLetter: false, location: (x: 2, y: 2) )

customerDetails.append(c)
c = CustomerInfo(name: "Maria Garcia", email:  "maria.garcia@example.com" , phoneNo: "555-345-6789", acceptetedNewsLetter: true, location: (x: 3, y: 3) )

customerDetails.append(c)
c = CustomerInfo(name: "David Smith", email:  "david.smith@example.com" , phoneNo: "555-456-7890", acceptetedNewsLetter: false , location: (x: 4, y: 4))

customerDetails.append(c)
c = CustomerInfo(name: "Sarah Brown", email:  "sarah.brown@example.com" , phoneNo: "555-567-8901", acceptetedNewsLetter: true, location: (x: 4, y: 5) )

customerDetails.append(c)
c = CustomerInfo(name: "Michael Davis", email:  "michael.davis@example.com" , phoneNo: "555-678-9012", acceptetedNewsLetter: false, location: (x: 6, y: 6) )

customerDetails.append(c)
c = CustomerInfo(name: "Laura Martinez", email:  "laura.martinez@example.com" , phoneNo: "555-789-0123", acceptetedNewsLetter: true, location: (x: 1, y: 1) )

customerDetails.append(c)
c = CustomerInfo(name: "Chris Wilson", email:  "chris.wilson@example.com" , phoneNo: "555-890-1234", acceptetedNewsLetter: false, location: (x: 1, y: 1) )

customerDetails.append(c)
c = CustomerInfo(name: "Emily Anderson", email:  "emily.anderson@example.com" , phoneNo: "555-890-1234", acceptetedNewsLetter: false, location: (x: 1, y: 1) )

customerDetails.append(c)
c = CustomerInfo(name: "Kevin Lee", email:  " kevin.lee@example.com" , phoneNo: "555-890-1234", acceptetedNewsLetter: true, location: (x: 1, y: 1) )

customerDetails.append(c)



func distance(from source: (x: Int, y: Int), to target: (x: Int, y: Int)) -> Int {
    let distanceX = Int(source.x - target.x)
    let distanceY = Int(source.y - target.y)
    return (distanceX * distanceX +
        distanceY * distanceY)
}


func customerWithinRange(storeLocations: [(x: Int, y: Int)], storeRange: Int, customers: [CustomerInfo]) {
    for c in customers {
        var withinRange = false
        for storeLocation in storeLocations {
            let distance = distance(from: c.location, to: storeLocation)
            if distance < storeRange * storeRange && c.acceptetedNewsLetter {
                withinRange = true
                break
            }
        }
        if withinRange {
            print("Name: \(c.name) Email: \(c.email)")
        }
    }
}


let storeLocations = [firstLocation, secondLocation]
let storeRanges = 3
customerWithinRange(storeLocations: storeLocations, storeRange: storeRanges, customers: customerDetails)
