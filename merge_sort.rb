def merage(a, b)
  c = []
  count = a.size + b.size
  
  count.times do
    if !a.empty? && !b.empty?
      if a[0] < b[0]
	    c << a[0]
		a.delete_at(0)
      else 
	    c << b[0]
		b.delete_at(0)
	  end
	end	
	
	if a.empty? 
	  c = c + b 
	  break 
	end
		
	if b.empty?
	  c = c + a
	  break
	end  
  end
	  
  return c
end


def m_sort(array)
  a = array.slice(0, array.size / 2)
  b = array.slice(array.size / 2, array.size )

  a = m_sort(a) if array.size > 1
  b = m_sort(b) if array.size > 1 
	  
  return merage(a, b)
end

def crate_array (size, width)
  array = []
  size.times do |i|
    array << rand(width) + 1
  end
  return array
end

#array = [2, 3, 1, 5, 1, 7, 4]
array = crate_array(100, 100)
print  array
puts 
puts '****************************'
print m_sort(array)


