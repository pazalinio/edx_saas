class Dessert

  attr_accessor :name, :calories

  def initialize(name, calories)
  @name = name
  @calories = calories
  end
   
  def healthy?
  return true if @calories <200
  end
  def delicious?
  return true 
  end
end

class JellyBean < Dessert

  attr_accessor :flavor
  attr_reader :name

  def initialize(flavor)
  @calories = 5
  @name = flavor + ' jelly bean'
  @flavor = flavor
  end

 def delicious?
	@flavor == "licorice" ? false : true 
  end
end
