# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Listing.destroy_all

# Users
user_1 = User.create(username:'user_1', email:'email_1@email.com', company:'company_1', location:'location_1', password:'password')
user_2 = User.create(username:'user_2', email:'email_2@email.com', company:'company_2', location:'location_2', password:'password')
user_3 = User.create(username:'user_3', email:'email_3@email.com', company:'company_3', location:'location_3', password:'password')

# Listings
listing_1 = Listing.create(title:'title_1', description:'description_1', product:'product_1', location:'location_1', length:10, creator_id:user_1.id, available_from:'1111-11-11', available_until:'1111-11-12')
listing_2 = Listing.create(title:'title_2', description:'description_2', product:'product_2', location:'location_2', length:20, creator_id:user_1.id, available_from:'1111-11-13', available_until:'1111-11-14')
listing_3 = Listing.create(title:'title_3', description:'description_3', product:'product_3', location:'location_3', length:30, creator_id:user_1.id, available_from:'1111-11-15', available_until:'1111-11-16')
listing_4 = Listing.create(title:'title_4', description:'description_4', product:'product_4', location:'location_4', length:40, creator_id:user_2.id, available_from:'1111-11-17', available_until:'1111-11-18')
listing_5 = Listing.create(title:'title_5', description:'description_5', product:'product_5', location:'location_5', length:50, creator_id:user_2.id, available_from:'1111-11-19', available_until:'1111-11-20')
listing_6 = Listing.create(title:'title_6', description:'description_6', product:'product_6', location:'location_6', length:60, creator_id:user_2.id, available_from:'1111-11-21', available_until:'1111-11-22')
listing_7 = Listing.create(title:'title_7', description:'description_7', product:'product_7', location:'location_7', length:70, creator_id:user_3.id, available_from:'1111-11-23', available_until:'1111-11-24')
listing_8 = Listing.create(title:'title_8', description:'description_8', product:'product_8', location:'location_8', length:80, creator_id:user_3.id, available_from:'1111-11-25', available_until:'1111-11-26')
listing_9 = Listing.create(title:'title_9', description:'description_9', product:'product_9', location:'location_9', length:90, creator_id:user_3.id, available_from:'1111-11-27', available_until:'1111-11-28')
