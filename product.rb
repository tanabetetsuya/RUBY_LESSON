class Product
  #クラス変数の定義
  @@name = 'Product'

  def self.name
    @@name
  end

  def initialize(name)
    @@name = name
  end

  def name 
    @@name
  end
end

puts Product.name # =>この段階では@@nameは’Product'

#DVDクラスはProductクラスを継承、DVDがサブクラスでProductがスーパークラス
class DVD < Product
  @@name = 'DVD'

  def self.name
    @@name
  end

  def upcase_name
    @@name.upcase
  end
end

puts Product.name # =>DVDクラスを定義したタイミングで@@nameが'DVD'に変更される
puts DVD.name # =>'DVD'

product = Product.new('A great movie')
puts product.name

# Product.newのタイミングで@@nameが'A great movie'に変更される
puts Product.name
puts DVD.name

dvd = DVD.new('An awesome film')
puts dvd.name
puts dvd.upcase_name

#DVD.newのタイミングで@@nameが'An awesome film'に変更される
puts product.name
puts Product.name
puts DVD.name



