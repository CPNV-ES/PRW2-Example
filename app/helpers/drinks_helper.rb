module DrinksHelper
  def colorize(drink)
    drink.price > 10 ? '#700000' : '#008000'
  end
end
