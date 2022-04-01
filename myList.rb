class MyList
  
  def initialize (*list)
    @list = list
  end

  def each 
    i = 0
    while i < @list.length
      yield @list[i]
      i += 1
    end
  end
