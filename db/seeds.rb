# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(email: 'admin@bitlasoft.com',password: 'admin@123',password_confirmation: 'admin@123',
first_name: 'Admin',last_name: 'bitlasoft',status: true )

User.create(email: 'test1@bitlasoft.com',password: 'test@123',password_confirmation: 'admin@123',
first_name: 'test1',last_name: 'bitlasoft',status: true )

User.create(email: 'test2@bitlasoft.com',password: 'test@123',password_confirmation: 'admin@123',
first_name: 'test2',last_name: 'bitlasoft',status: true )