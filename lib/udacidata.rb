require_relative 'find_by'
require_relative 'errors'
require 'csv'

class Udacidata
  def self.all
  	# Product.all should return an array of Product objects representing all the data in the database.

		# Product.all
		# #=> [#<Product:0x007fe4853e06e0 @id=0, @brand="Lego", @name="Sleek Wool Bottle", @price="81.87">,
		# #<Product:0x007fe4853e0640 @id=1, @brand="Hasbro", @name="Sleek Wool Bottle", @price="81.54">,
		# #<Product:0x007fe4853e05a0 @id=2, @brand="Crayola", @name="Durable Concrete Bag", @price="45.35">,
		# ...]
  end

	def self.create(attributes = nil)
	  # If the object's data is already in the database
	  # create the object
	  # return the object

	  # If the object's data is not in the database
	  # create the object
	  # save the data in the database
	  # return the object
	end

	def self.first(n)
		# Product.first should return a Product object that represents the first product in the database.
		# Product.first(n) will return an array of Product objects for the first n products in the database.

		# Product.first
		# #=> #<Product:0x007fdf90ba9e20>

		# Product.first(2)
		# #=> [#<Product:0x007f8a91a2c9c0 @id=0, @brand="Fisher-Price", @name="Gorgeous Plastic Bag", @price="44.99">,
		# #<Product:0x007f8a91a2c920 @id=1, @brand="Nintendo", @name="Lightweight Iron Clock", @price="37.36">]
	end

	def self.last(n)
		# Product.last should return a Product object that represents the last product in the database.
		# Product.last(n) will return an array of Product objects for the last n products in the database.

		# Product.last
		# #=> #<Product:0x007f807da70508>

		# Product.last(2)
		# #=> [#<Product:0x007f93cb2e8798 @id=98, @brand="Nintendo", @name="Fantastic Aluminum Shoes", @price="43.05">,
		# #<Product:0x007f93cb2e86f8 @id=99, @brand="Crayola", @name="Awesome Leather Chair", @price="24.73">]
	end

	def self.destroy
		# Product.destroy should delete the product corresponding to the given id from the database, and return a Product object
		# for the product that was deleted.

		# # Remove the product with id 7 from the database
		# Product.destroy(7)
		# #=> #<Product:0x007f8a421a0d50>
	end

	def self.find
		# Product.find should return a Product object for the product with a given product id.

		# Product.find(1)
		# #=> #<Product:0x007fdd029987c0>
	end

	def self.find_by_#{attribute}
		# Product.find_by_#{attribute}:
		# The methods Product.find_by_brand and Product.find_by_name should return a Product object
		# for the first product in the database that has a matching brand or product name.

		# Note: Use metaprogramming techniques to define these methods. There are hints to help you get started in find_by.rb.

		# Product.find_by_brand("Lego")
		# #=> #<Product:0x007f97e218cd70>

		# Product.find_by_name("Awesome Toy")
		# #=> #<Product:0x007f97e21790b8>
	end

	def self.where
		# Product.where should return an array of Product objects that match a given brand or product name.

		# Product.where(brand: "Lego")
		# #=> [#<Product:0x007fa16227c300 @id=5, @brand="Lego", @name="Sleek Plastic Keyboard", @price="22.28">,
		# #<Product:0x007fa16227c260 @id=6, @brand="Lego", @name="Rustic Paper Hat", @price="85.26">]
	end

	def update
		# product_instance.update should change the information for a given Product object, and save the new data to the database.

		# # Get product with id 5, change its brand to "Udacity"
		# Product.find(5).update(brand: "Udacity")
		# #=> #<Product:0x007fbff1a44558>
	end
end
