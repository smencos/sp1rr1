class Dessert
  $contador = 0
  def initialize(name, calories)
    @name = name
    @calories = calories
    @size = 0
    $contador = $contador +1
  end
  def getName()
    return @name
  end
  def getCalories()
    return @calories
  end
  def getSize()
    return @size
  end
  def getContador()
    return $contador
  end
  def setName(name)
    @name = name
  end
  def setCalories(calories)
    @calories = calories
  end
  def setSize(size)
    @size = size
  end
  
  def healthy?()
    if (@calories < 200)
      r = true
    else
      r = false
    end
    return r
  end
  def delicious?()
    return true
  end
    
end

class JellyBean < Dessert
   def initialize(name, calories, flavor)
     @name = name
     @calories = calories
     @flavor = flavor
     $contador = $contador +1
   end
  
  def getFlavor()
    return @flavor
  end
  
  def setFlavor(flavor)
    @flavor = flavor
  end
  
  def delicious?()
    if (@flavor == "black licorice")
      r = false
    else
      r = true
    end
    return r
  end
  
end