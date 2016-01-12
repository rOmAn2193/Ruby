class Customers

	include Comparable
	attr_accessor :firstname, :lastname

	def initialize firstname,lastname
		@firstname = firstname
		@lastname = lastname
	end	

	def <=> other
	
	      if other.lastname.downcase > self.lastname.downcase
	        -1
	      elsif other.lastname.downcase < self.lastname.downcase
	        1	
	      else 
	       0
	      if other.firstname.downcase > self.firstname.downcase
			-1
		 elsif other.firstname.downcase < self.firstname.downcase
			1
		else 
			0
	 end
   end
end
def to_s
	"#{firstname}\t#{lastname}"
end
end