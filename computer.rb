class Computer
    @@users = {}
    
    def initialize (username, password)
        @username = username
        @password = password
        
        @files = Hash.new
    end

  def create(n)
    if (@files[n] == nil)
      t = Time.now
      s = t.strftime("%d/%m/%Y %H:%M:%S")
      @files.store(n, s)
    else
      puts "Error: el archivo #{n} ya existe" 
    end
    return @files
  end
  def ls(*args)
    if (args.size == 0)
      h = @files.to_a
      lh = h.length
      cont = 0
      ary = Array.new 
      while (cont <lh)
        s =  "#{h[cont][0]} created at #{h[cont][1]}"
        ary[cont] = s
        cont = cont +1
      end
      arrr = ary.sort
      cont = 0
      while (cont<arrr.length)
        puts arrr[cont]
        cont = cont +1
      end
    end
  end
  def rm(n)
    if (@files[n] == nil)
       puts "Error: el archivo #{n} no existe" 
    else
      @files.delete(n)
    end
  end
        
end