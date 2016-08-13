# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'populator'
require 'ffaker'
require 'faker'

Vendor.populate(10..20) do |vendor|
    vendor.name = FFaker::Company.name
    vendor.description = FFaker::DizzleIpsum.paragraph
    vendor.contact_name = Faker::Name.name
    vendor.website = Faker::Internet.url
    vendor.phone_number = Faker::PhoneNumber.phone_number
    vendor.tagline = Faker::Company.catch_phrase
    vendor.category = ['fashion', 'home', 'service', 'food', 'other']
    vendor.approved_at = [Faker::Time.between(DateTime.now - 1, DateTime.now), nil]
    vendor.approved_by = 1
    
end