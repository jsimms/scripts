# A restaurant has incoming orders
# Compute the costs based on the menu.
# You might get multiple orders at times.

class Restaurant
  def initialize(menu)
    @menu = menu
  end

  def read_menu
    @menu
  end

  def cost(*orders)
    # loop through all the orders. Start with total cost at zero.
    orders.inject(0) do |total_cost, order|
      #1. loop through an individual order,
      #2. determine the cost of the items in the order,
      #3. add it to total_cost
      total_cost + order.keys.inject(0) {|cost, key| cost + @menu[key]*order[key] }
    end
  end
end


franks = Restaurant.new({ :rice => 1, :beans => 1, :frank => 2, :ricenbeans => 2, :franknbeans => 3 })
puts franks.cost({ :rice => 35, :beans => 3 }, { :frank => 3 }, {:ricenbeans => 6 })
