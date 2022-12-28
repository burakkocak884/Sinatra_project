adam = Owner.create(username: "adam", password: "password", email: "adam@adamslive.com")
jennier = Owner.create(username: "jennifer", password: "password", email: "jen34@jenslive.com")
ben = Owner.create(username: "ben",password: "password", email: "benjamin@highrise.com")
rose = Owner.create(username: "rose",password: "password", email: "rosssie@flower.net")
guest = Owner.create(username: "Guest",password: "password", email: "guest@guest.net")


Property.create(name: "Perimeter", location: "Atlanta,GA",  capacity: 15, owner_id: 1)
Property.create(name: "Bay Side", location: "Savannah,GA",  capacity: 12, owner_id: 2)
Property.create(name: "High Mountain", location: "Blairsville,GA",  capacity: 17, owner_id: 3)
Property.create(name: "Park Side", location: "Stone Mountain,GA",  capacity: 14, owner_id: 1)
Property.create(name: "Eash Atlanta", location: "Hapeville,GA",  capacity: 25, owner_id: 4)
Property.create(name: "Outlet", location: "Dawsonville,GA",  capacity: 18, owner_id: 2)
Property.create(name: "Buckhead", location: "Atlanta,GA",  capacity: 32, owner_id: 3)

Property.create(name: "Perimeter", location: "Atlanta,GA",  capacity: 15, owner_id: 5)
Property.create(name: "Bay Side", location: "Savannah,GA",  capacity: 12, owner_id: 5)
Property.create(name: "High Mountain", location: "Blairsville,GA",  capacity: 17, owner_id: 5)
Property.create(name: "Park Side", location: "Stone Mountain,GA",  capacity: 14, owner_id: 6)
Property.create(name: "Eash Atlanta", location: "Hapeville,GA",  capacity: 25, owner_id: 7)
Property.create(name: "Outlet", location: "Dawsonville,GA",  capacity: 18, owner_id: 8)
Property.create(name: "Buckhead", location: "Atlanta,GA",  capacity: 32, owner_id: 9)




Tenant.create(name: "J. Mill", occupation: "restaurant owner", property_id: 1)
Tenant.create(name: "H. Son",  occupation: "conractor", property_id: 3)
Tenant.create(name: "K. Park",  occupation: "ceo", property_id: 4)
Tenant.create(name: "M. Jackson",  occupation: "baseball player", property_id: 5)
Tenant.create(name: "T. Rose",  occupation: "pilot", property_id: 6)
Tenant.create(name: "B. Tall",  occupation: "plumber", property_id: 7)
Tenant.create(name: "S. Richard", occupation: "handyman", property_id: 3)
Tenant.create(name: "W. White",  occupation: "chemicist", property_id: 1)
Tenant.create(name: "Uncle Leo",  occupation: "retired", property_id: 2)
Tenant.create(name: "R. Carlos",  occupation: "former soccer player", property_id: 6)
Tenant.create(name: "D. Maradona",  occupation: "soccer coach", property_id: 6)
Tenant.create(name: "D Beckham", occupation: "former soccer player", property_id:4)
Tenant.create(name: "D. Drogba",  occupation: "soccer player", property_id: 3)
Tenant.create(name: "L. Messi",  occupation: "marketing sales associate", property_id: 2)
Tenant.create(name: "J. Storm",  occupation: "racer", property_id: 4)
Tenant.create(name: "J. Clampus",  occupation: "retired", property_id: 2)
Tenant.create(name: "G. Fluffy", occupation: "comedian", property_id:4)
Tenant.create(name: "A. Armstrong",  occupation: "scientist", property_id: 2)
Tenant.create(name: "C. Mendez",  occupation: "pharmacist", property_id: 5)
Tenant.create(name: "J. Seinfeld",  occupation: "comedian", property_id: 2)
Tenant.create(name: "G. Costanza",  occupation: "architect", property_id: 4)
Tenant.create(name: "E. Bennis",  occupation: "editor:", property_id: 5)
Tenant.create(name: "A. Vandalei", occupation: "judge", property_id: 4)
Tenant.create(name: "M. Kimbrough",  occupation: "city planner", property_id: 5)
Tenant.create(name: "B. Mania",  occupation: "comedian", property_id: 5)
Tenant.create(name: "K. Kozmo",  occupation: "free-lander", property_id: 4)
Tenant.create(name: "K. Hernandez", occupation: "former baseball player", property_id: 4)
Tenant.create(name: "V. Villagaraj",  occupation: "programmer", property_id: 2)
Tenant.create(name: "C. Dasdelen",  occupation: "contractor", property_id: 3)
Tenant.create(name: "S. Dizdaroglu",  occupation: "wood-crafter", property_id: 5)
Tenant.create(name: "A. Aykilinc",  occupation: "online seller", property_id: 7)
Tenant.create(name: "K. Agirbas",  occupation: "used car dealer", property_id: 4)
Tenant.create(name: "C. Guler",  occupation: "broker", property_id: 2)
Tenant.create(name: "S. Irmak",  occupation: "engineer", property_id: 1)




# Owner.destroy_all
# Property.destroy_all
# Tenant.destroy_all