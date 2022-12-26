class Employee
    def initialize (name, base, pcount, pp) 
    @name = name
    @base = base
    @pcount = pcount
    @pp =  pp
    end
    
    def sallary()
    @sal = @base + (@pcount * 0.05 * @base)
    end

end

employee1 = Employee.new("George", 200, 50, 2.5)
print employee1.sallary()

   