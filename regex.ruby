#didnt know where to go from here.

class Regex


def initialize (domainname)
	@domain = domainname 
	@regex = regex 
	@num = num
	h = Hash.new
end

def parse_line(logline)
@m["sent"] = 0
@m["recieved"] = 0
@m["discarded"] = 0
@m["seen"] = 0
end

if @domain = ""
	@num = @num - 1
	puts @num
	if line = /(<[-\w.+=_]+@[-\w]+(\.[-\w]+)+@#{domainname}>)/
	puts $4
	@f = $3
	@fd = $4
	puts "this is #{@f}"
	puts $7 
	@t= $6
	@td= $7
	puts "this os #{@t}"
	puts @domain
	puts @domain == $4
	puts @domain == $7
	puts $10
	
		if line == "discard"
			puts "DISCARD"
				if @fd == @domain
					puts "domain match"
					if @h[$3]==nil
					   @b=Hash.new
					   @b["sent"]=0
			end
		end
results()
end
