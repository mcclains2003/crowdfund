# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.create!([
  {
    name: "OvenBits Bakery",
    description: "Saving one bakery at a time while shelling out dough.",
    target_pledge_amount: 100000.00,
    website: "www.ovenbitsbakery.com",
    pledging_ends_on: "2016-05-02"
  },
  {
    name: "BuzzShift Power Tools",
    description: "We give you the power to be a tool.",
    target_pledge_amount: 75000.00,
    website: "www.buzzshiftpower.com",
    pledging_ends_on: "2015-09-18"
  },
  {
    name: "Going Solo Wookies",
    description: "Giving hairy men a chance to show a little skin.",
    target_pledge_amount: 25000.00,
    website: "www.giveupthewookie.com",
    pledging_ends_on: "2015-10-01"
  }
  ])
