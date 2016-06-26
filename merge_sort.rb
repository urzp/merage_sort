def merage(a, b)
  c = []
  count = a.size + b.size
  count.times do
    if !a.empty? and !b.empty?
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
    
	if array.size == 2
	  a = array[0]
	  b = array[-1]
	  return a < b ? [a, b] : [b, a]
	end

	if array.size == 4
	  a = array.slice(0, array.size / 2)
	  b = array.slice(array.size / 2, array.size )
	  a = m_sort(a) 
	  b = m_sort(b)
	  
	  return merage(a, b)

	end	
	
	

    
    

end

def crate_array (size, width)
  array = []
  size.times do |i|
    array << rand(width) + 1
  end
  return array
end

array = [2, 3, 1, 5]
 
print m_sort(array)

print merage([1,2,3,4], [1,1,2,3,5] )
