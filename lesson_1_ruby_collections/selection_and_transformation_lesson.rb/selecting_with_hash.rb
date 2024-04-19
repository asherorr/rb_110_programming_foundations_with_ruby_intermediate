produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}


def select_fruit(produce)
  fruit_products = {}
  
  produce.each_pair do |key, value|
    if value == "Fruit"
      fruit_products[key] = value
    end
  end
  
  fruit_products
end

p select_fruit(produce)