class IsFibo
	attr_accessor :fibs

def initialize
 @fibs =[1,1]
end   


def binary_search(x, from=0, to=nil)
 
  if to==nil
    to=@fibs.count
  end
  mid=(from +to)/2
 
  if from<mid
    if x>@fibs[mid]
      binary_search(x,mid,to)
    elsif x<@fibs[mid]
      binary_search(x,from,mid)
    else
      return true
    end
  else
   
    if x==@fibs[mid]
      return true
    else
      return false
    end
  end
end


def isfibo?(x)
 
   if x>@fibs[-1]
    while x>@fibs[-1] do
      @fibs.push @fibs[-2]+@fibs[-1]
    end
    if @fibs[-1]==x
      return true
    end
  else
     if @fibs[-1]==x
      return true
    else
      binary_search(x)
    end
   
  end
end
end
