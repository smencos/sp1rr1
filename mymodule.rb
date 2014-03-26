module Mymodule

  def palindromo?(s)
    s1 = ""
    cont = 0
    while (cont <= s.length)
      if(/[a-zA-Z]/.match(s[cont]))
        s1 = s1 + s[cont]
      end
      cont = cont+ 1
    end
    s2 = ""
    cont = 0
    l = s1.length
    
    s1.upcase
    while (cont < l)
      
      s2[cont] = s1[(l-1)-cont]
     
      cont = cont+ 1
    end
    
    if(s1 == s2)
      
      casa = true
    else
      casa = false
    end
  return casa
  end
  
  
    def cuenta_palabras(s)
      f = Hash.new(0)
     
      conteo = s.scan(/\w+/) 
      cont = 0
      
      
      while (cont < conteo.length)
        
        if (f[conteo[cont]] == nil)
          f = {conteo[cont] => 1}
          
        
        else 
          
          i = f[conteo[cont]] +1
          f[conteo[cont]] = i
          
        end
        cont = cont +1
     end
      return f
    end
  
  def sort(b,asc)
    if(asc)
      largo = b.length
      a = Array.new
      a = b
      cont = 0
      while (cont < (largo-1))
        if (a[cont] > a[cont+1])
          temp = a[cont]
          a[cont] = a[cont+1]
          a[cont+1] = temp
        end
        cont = cont +1
      end     
    else
      largo = b.length
      a = Array.new
      a = b
      cont = 0
      while (cont < (largo-1))
        if (a[cont] < a[cont+1])
          temp = a[cont]
          a[cont] = a[cont+1]
          a[cont+1] = temp
        end
        cont = cont +1
      end
    end
    return a
  end
  
  def char_count(s,c)
    i = 0
    cont = 0
    while (cont <= s.length)
      if (s[cont] == c)
        i = i +1
      end
      cont = cont +1
    end
    return i      
  end
  
  def atoi(s)
    result = 0
    
    s.each_char do |c|
      
		result = result*10 + c.to_i
    
	  	end    
    if (s[0] == "-")
      result = 0 - result
    end
    return result
  end
  
  def hanoi(numero_discos, t_origen, t_destino, t_alterna)
    if (numero_discos == 0)
      puts "termine"
    else
      hanoi(numero_discos-1, t_origen, t_alterna, t_destino)
      puts "movi disco #{numero_discos} de  #{t_origen} a #{t_destino}"
      hanoi(numero_discos-1, t_alterna, t_destino,t_origen)
    end
  end
  
end