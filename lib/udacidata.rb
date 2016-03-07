require_relative 'find_by'
require_relative 'errors'
require 'csv'

class Udacidata

  @@data_path = File.dirname(__FILE__) + "/../data/data.csv"

  def self.all
    objects = []
    database = CSV.read(@@data_path)
    database.shift
    database.each do |row|
      objects << self.new(id: row[0], brand: row[1], name: row[2], price: row[3])
    end
    objects
  end

  def self.create(attributes = nil)
    # create the object
    item = self.new(**attributes)

    # It is strange that according to course we should add product to DB only if it is not exist in it
    # But according to test we add product to DB in any case
    # I assume that products are the same if their brand, name and price are identical.

    # save the data in the database if it is not exist in it yet

    #exist = false
    #database = CSV.read(@@data_path)
    #database.shift
    #database.each do |row|
    #  if row[1] == attributes[:brand].to_s && row[2] == attributes[:name].to_s && row[3] == attributes[:price].to_s
    #    exist = true
    #  end
    #end

    #if !exist
      CSV.open(@@data_path, "ab") do |csv|
        csv << [item.id.to_s, item.brand.to_s, item.name.to_s, item.price.to_s]
      end
    #end

    # return the object
    item
  end

  def self.first(n=1)
    objects = self.all
    return objects[0] if n == 1
    return objects.first(n)
  end

  def self.last(n=1)
    objects = self.all
    return objects[-1] if n == 1
    return objects.last(n)
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
