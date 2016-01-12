class ListFree

  attr_accessor :column, :larray, :ip, :iparray, :ipint

  def initialize(column)
    @column=column
    @larray
    @ip
    @iparray=[]
    @ipint=[]
  end

  def parse_line(line)
	@string_array = line.split(" ")
	iparray.push(@string_array[column-1])
  end

  def free(&b)
    iparray.sort_by! {|ip| ip.split('.').map{ |octet| octet.to_i} }
    ipA = []
    ipB = []
    iparray.each{|x| ipA.push(x.split('.'))}
    ipA.sort_by! {|ip| ip.map{ |octet| octet.to_i} }
    i=0

    ipA.each{ ipA[i][3]=ipA[i][3].to_i 
		i+=1}
	i=0
    ipA.each{ if ipA[i+1]!=nil
        if ipA[i][3]+1 != ipA[i+1][3]and ipA[i][3]!=ipA[i+1][3] 
          ipA[i][3]=ipA[i][3]+1
          x=ipA[i].join('.')
          
        if ipA[i][3]+1!=ipA[i+1][3]
           ipA[i][3]=ipA[i+1][3]-1
           y=ipA[i].join('.')
        else
            y=nil
        end
        		yield(x,y)
        end
      end  
         i+=1}
   end
end