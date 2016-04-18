# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

r1 = Role.create({name: "Admin", description: "Can read items"})
r2 = Role.create({name: "Employee", description: "Can read and create items. Can update and destroy own items"})

e1 = (Employee.create({employee_name: "Matthew", employee_phone: "7458445", crew_id: 1, user_id: 1}))
e1 = (Employee.create({employee_name: "Deepak", employee_phone: "74585844", crew_id: 1, user_id: 2}))

c1 = (Crew.create({crew_name: "Juanito"}))

u1 = User.create({email: "santoyo@sts.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r1.id})
u2 = User.create({email: "employee@sts.com", password: "aaaaaaaa", password_confirmation: "aaaaaaaa", role_id: r2.id})

