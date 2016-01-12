#couldnt figure out the syntax for preserving the addresses in parse line 

class EmailWatcher
    @regex
    @domainname

def initialize(domainname)
	@domainname = domainname
end


def parse_line(logline)
   if @domainname = ""
	@regex = /(<[-\w.+=_]+@[-\w]+(\.[-\w]+)+@#{domainname}>)/ 
   else
	@regex = /(<[-\w.+=_]+@[-\w]+(\.[-\w]+)+>)/ 
	a = []
	a = logline.scan (@regex).flatten
	a.each ( |x| x.slice!(0), x.slice(x.size - 1))
	if !a.empty?; yield a
   end
  end
end
