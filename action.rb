module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
  def run(velocidad)
    sleep (velocidad)
    puts "Corri 10 metros! en #{velocidad} segundos" 
  end
end

class Rabbit
  include Action
  
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
end

class Cricket
  
  include Action
  
  attr_reader :name
  
  def initialize(name)
    @name = name
  end
  def chirp()
    time = rand(100) 
    if (time <10)
      time = time +10
    end
    cont = 0
    while (cont<=time)
      puts "Chirp… chirp!!"
      cont = cont +1
    end
  end

end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump