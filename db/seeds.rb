# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# create admin user
admin = User.new
admin.name =  'Admin User'
admin.email = 'admin@example.com'
admin.role =  'admin'
admin.password = admin.password_confirmation = 'password'
admin.save
admin.confirm

agent = User.new
agent. name = 'Agent User'
agent.email = 'agent@example.com'
agent.password = 'password'
agent.password_confirmation= 'password'
agent.role= 'agent'
agent.save
agent.confirm

customer = User.new
customer. name = 'Customer User'
customer.email = 'customer@example.com'
customer.password = 'password'
customer.password_confirmation= 'password'
customer.role= 'agent'
customer.save
customer.confirm
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')