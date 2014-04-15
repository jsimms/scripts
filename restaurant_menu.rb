restaurant_menu = { "Ramen" => 3, "Dal Makhani" => 4, "Coffee" => 2 }
restaurant_menu.each do |item, cost| 
  restaurant_menu[item] = cost * 1.1
end