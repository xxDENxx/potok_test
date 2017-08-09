# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# загрузка исходных данных

#---1---
c = Company.create(name: "ЮЛ1")

loan = Loan.new(company: c,
                    sum: 1000000,
                   time: 6,
           base_percent: 0.3,
          delay_percent: 0.5,
    payments_attributes: [{order:0, status: :normal},
                          {order:1, status: :normal},
                          {order:2, status: :normal},
                          {order:3, status: :normal},
                          {order:4, status: :normal},
                          {order:5, status: :normal}]).save

#---2---
c = Company.create(name: "ЮЛ2")

loan = Loan.new(company: c,
                    sum: 1000000,
                   time: 6,
           base_percent: 0.3,
          delay_percent: 0.5,
    payments_attributes: [{order:0, status: :normal},
                          {order:1, status: :normal},
                          {order:2, status: :normal},
                          {order:3, status: :all}]).save


#---3---
c = Company.create(name: "ЮЛ3")

loan = Loan.new(company: c,
                    sum: 1000000,
                   time: 6,
           base_percent: 0.3,
          delay_percent: 0.5,
    payments_attributes: [{order:0, status: :normal},
                          {order:1, status: :normal},
                          {order:2, status: :delay},
                          {order:3, status: :delay},
                          {order:4, status: :delay},
                          {order:5, status: :delay}]).save