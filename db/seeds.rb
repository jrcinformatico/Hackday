# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#puts 'ROLES'
#YAML.load(ENV['ROLES']).each do |role|
#  Role.find_or_create_by_name(role)
#  puts 'role: ' << role
#end
#puts 'DEFAULT USERS'
#user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => 
#ENV['ADMIN_PASSWORD'].dup
#puts 'user: ' << user.name
#user.add_role :admin
require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB
DatabaseCleaner.clean

#puts 'ROLES'
#YAML.load(ENV['ROLES']).each do |role|
#  Role.find_or_create_by_name(role)
#  puts 'role: ' << role
#end
#user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup

puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => "Tony Salamanca Ilaquita", :email => "bunseki.bits@gmail.com", :password => "Shuuryoo<suru2ni.wa", :password_confirmation => "Shuuryoo<suru2ni.wa"
puts 'user: ' << user.name
user.add_role :admin

Region.create(nombre: "Tacna")
Region.create(nombre: "Moquegua")
Region.create(nombre: "Puno")
Region.create(nombre: "Arequipa")
Region.create(nombre: "Arica")

Institucion.create(nombre: "UNJBG")
Institucion.create(nombre: "UPT")
Institucion.create(nombre: "UAP")
Institucion.create(nombre: "ULC")
Institucion.create(nombre: "FPGV")
Institucion.create(nombre: "Municipalidad")

Estudio.create(nombre:"Estudiante")
Estudio.create(nombre: "Profesional")

Evento.create(nombre:"Ponencia")
Evento.create(nombre:"Taller")
