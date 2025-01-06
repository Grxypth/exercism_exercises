class Triangle
  def initialize(sides)
  @sides=sides
  end 
   
   
    def equilateral?
     if triangularize != false
      hash=triangularize
     else
      return false
     end
      if hash[:a]==hash[:b] && hash[:b]==hash[:c]
        return true
      else
        return false
  end
  
    end
    def isosceles?
      if triangularize != false
        hash=triangularize
       else
        return false
       end

 if hash[:a]==hash[:b] || hash[:b]==hash[:c] || hash[:a]==hash[:c]
  return true
else
  return false
end
    end
    
    
    def scalene?
      if triangularize != false
        hash=triangularize
       else
        return false
       end
      if hash[:a]!=hash[:b] && hash[:b]!=hash[:c] && hash[:a]!=hash[:c]
        return true
      else
        return false
      end
    end
    
    def triangularize
      keys = [:a, :b, :c]
      hash = keys.map.with_index { |key, index| [key, @sides[index]] }.to_h  
      if hash[:a] + hash[:b] <= hash[:c] || hash[:a] + hash[:c] <= hash[:b] || hash[:b] + hash[:c] <= hash[:a] || hash[:a] <= 0 || hash[:b] <= 0 || hash[:c] <= 0
        return false
      else 
        return hash
      end
    end
  
  
  end
  