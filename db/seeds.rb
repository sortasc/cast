# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Root.create email: 'root@cast.com', password:  'q1w2e3r4', password_confirmation:  'q1w2e3r4'
Company.create name: 'Sorta Software Club', url: 'http://sorta.in', subdomain: 'sorta', email: 'contato@sorta.in'
