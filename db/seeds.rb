# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1 = Role.create({name: "Admin", description: "Can read items"})
r2 = Role.create({name: "Employee", description: "Can read and create items. Can update and destroy own items"})
r3 = Role.create({name: "Customer", description: "Can read invoices and estimates."})


e1 = (Employee.create({employee_name: "Jhon", employee_phone: "713-844-5222", crew_id: 1, user_id: 1}))
e2 = (Employee.create({employee_name: "Juan", employee_phone: "713-858-4433", crew_id: 2, user_id: 2}))
e3 = (Employee.create({employee_name: "James", employee_phone: "713-358-4333", crew_id: 3, user_id: 3}))
e4 = (Employee.create({employee_name: "Jack", employee_phone: "713-258-4433", crew_id: 3, user_id: 4}))
e5 = (Employee.create({employee_name: "Jual", employee_phone: "713-828-4433", crew_id: 2, user_id: 5}))

c1 = (Crew.create({crew_name: "A"}))
c2 = (Crew.create({crew_name: "B"}))
c3 = (Crew.create({crew_name: "C"}))


u1 = User.create({email: "santoyo@sts.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u2 = User.create({email: "employee5@sts.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u3 = User.create({email: "employee4@sts.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u4 = User.create({email: "employee3@sts.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u5 = User.create({email: "employee2@sts.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u6 = User.create({email: "employee1@sts.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})
u7 = User.create({email: "customer1@sts.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r3.id})
u8 = User.create({email: "customer2@sts.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r3.id})
u9 = User.create({email: "customer3@sts.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r3.id})

b1 = Business.create({business_name:"walmart", phone_number:"832-222-1122", email:"walmart@walmart.com", street_address:"5533 walmart lane", city:"Houston", state:"TX", zip:"77543"})
b2 = Business.create({business_name:"Target", phone_number:"832-333-2122", email:"target@target.com", street_address:"4467 Target lane", city:"Houston", state:"TX", zip:"77543"})
b3 = Business.create({business_name:"walmart", phone_number:"832-444-1122", email:"kroger@kroger.com", street_address:"5513 kroger lane", city:"Houston", state:"TX", zip:"77543"})

c1 = Customer.create({customer_name:"Jhon Smith", phone_number:"832-222-1122", email:"jhon@email.com", street_address:"5533 potomac lane", city:"Houston", state:"TX", zip:"77543", business_id: b1.id})
c2 = Customer.create({customer_name:"Suzi Ralp", phone_number:"832-111-2322", email:"suzi@email.com", street_address:"4467 riverwalk lane", city:"Houston", state:"TX", zip:"77543", business_id: b2.id})
c3 = Customer.create({customer_name:"Dugh Apple", phone_number:"832-999-1123", email:"dugh@email.com", street_address:"5513 woodforest lane", city:"Houston", state:"TX", zip:"77543", business_id: b3.id})

eq1 = Equipment.create({equipment_name: "Axe", equipment_location:"main"})
eq2 = Equipment.create({equipment_name: "Chainsaw", equipment_location:"main"})
eq3 = Equipment.create({equipment_name: "wood chipper", equipment_location:"main"})

p1 = Project.create({project_name:"walmart 3 store contract", description:"contract to maintain trees @ 3 walmart location"})

s1 = Service.create({name:"Tree chopping", description:"Chopping trees", price:"150.00"})
s2 = Service.create({name:"Tree trimming", description:"Trim trees", price:"75.00"})
s3 = Service.create({name:"Stump removal", description:"Stump removal", price:"100.00"})
s4 = Service.create({name:"Tree removal", description:"Tree removal", price:"200.00"})
s5 = Service.create({name:"Dead limb removal", description:"limb removal", price:"50.00"})

v1 = Vehicle.create({vehicle_name:"F150 1", vechile_location:"main"})
v2 = Vehicle.create({vehicle_name:"F250 1", vechile_location:"main"})
v3 = Vehicle.create({vehicle_name:"F250 2", vechile_location:"main"})




