module MyEnumerable
  def all?
    comp = true;
    each { |x| comp = false unless yield x }    
    comp
  end

  def any?
    comp = false;
    each { |x| comp = true if yield x }    
    comp
  end

  def filter
    list = []
    each { |x| list << x if yield x }    
    list
  end
end
