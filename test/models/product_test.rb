require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  # ==================
  # test "product attributes must not be empty" do
  #   product = Product.new
  #   assert product.invalid?
  #   assert product.errors[:title].any?
  #   assert product.errors[:description].any?
  #   assert product.errors[:price].any?
  # #   assert product.errors[:image_url].any?
  # #   end
  # # ======================
  # # 
  # test "product attributes must not be empty" do
  #   def new_product(image_url)
  #     Product.new(title: "My Book Title",
  #     description: "yyy",
  #     price: 1,
  #     image_url: image_url)
  #   end

  #   test "image url" do
  #     ok = %w{fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
  #     http://a.b.c/x/y/z/fred.gif}

  #     bad = %w{fred.doc fred.gif/more fred.gif.more}

  #     ok.each do|image_url|
  #       assert new_product(image_url).valid?, "#{image_url} must be valid"
  #     end

  #     bad.each do |image_url|
  #       assert new_product(image_url).invalid?,
  #       "#{image_url} must be invalid"
  #       end
  #   end
  # end

  #fixtures :products: Is line ka matlab hai ke aap products.yml fixture file se data load karna chahte hain. Jab aap yeh line add karte hain, toh Rails automatically yeh data aapke products table mein load karta hai.
  fixtures :products
end
