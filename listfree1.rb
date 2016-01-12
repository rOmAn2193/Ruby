class ListFree 

	def initialize(column) 
	@column = column - 1
	@IPs = []
	end

	def parse_line(line)
	@string_array = line.split(" ")
	@IPs.push(@string_array[@column])
  	end
	
	
	def  free(&b)
	@IPs.sort!
	i = 1
	b.each {|j| if }	
	end

end

a = ListFree.new(3)

a.parse_line("stuff morestuf 10.10.10.42 stuff")
a.parse_line("stuff    morestuff  10.10.10.10  maybemorestuff")
a.parse_line("stuff222 morestuf22 10.10.10.44")
a.parse_line("stuff2   morestuf2  10.10.10.11  maybe more stuff")
a.parse_line("stuff morestuf 10.10.10.46 stuff")
a.parse_line("stuff morestuf 10.10.10.22 stuff")
