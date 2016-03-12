require 'faker'

# This file contains code that populates the database with
# fake data for testing purposes

# Use the faker gem to generate arrays with fake brands,
# product names, and prices.

# Create 10 new Product objects, and save them to the
# database

def db_seed
  #brands = ["Crayola", "Lego", "Nintendo", "Fisher-Price", "Hasbro"]
  #product_names = ["crayons", "house", "video game", "kitchen", "toy car"]
  #prices = ["2.00", "14.50", "2.10", "99.99", "19.99"]

  data_path = File.dirname(__FILE__) + "/../data/data.csv"

  products = []
  10.times do |id|
    brand = Faker::Company.name
    product = Faker::Commerce.product_name
    price = Faker::Commerce.price
    products.push(Product.create(brand: brand, name: product, price: price))
    #CSV.open(data_path, "ab") do |csv|
    #  csv << [id+1, brand.to_s, product.to_s, price.to_s]
    #end
  end
end
