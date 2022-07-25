class Employee
    @@base_salary = 3000
    def set_base_salary salary
        @@base_salary = salary
    end
    
    def get_base_salary
        @@base_salary
    end 

    def self.base_salary
        @@base_salary
    end 

    attr_accessor :id, :name, :department, :working_time
    def initialize(id, name,working_time=0,department="")
        @id = id
        @name = name
        @department = department
        @working_time = working_time
    end 

    def calc_salary
        @@base_salary * @working_time
    end 

    def info()
        puts "ID:#{@id}, Name: #{@name}, Department: #{@department}, Working time: #{@working_time}"
    end

end

class Dev < Employee
    attr_accessor :ot_time
    def initialize(id, name,working_time, ot_time)
        super
        @department = "DEV" 
        @ot_time = ot_time

    end
    def calc_salary
        salary = @@base_salary * @working_time
        salary += salary*0.15
        salary
    end 
    def request_ot
        @@base_salary * @ot_time * 1.5
    end
    def info()
        super
        puts " OT: #{@ot_time}"
    end
end

class Tester < Employee
    def initialize(id, name,working_time)
        super
        @department = "Tester" 
    end
    def calc_salary
        salary = @@base_salary * @working_time
        salary += salary*0.1
        return  salary
    end 
end

class QA < Employee
    attr_accessor :ot_time
    def initialize(id, name,working_time, ot_time)
        super
        @department = "QA" 
        @ot_time = ot_time
    end
    def request_ot
        return  @@base_salary * @ot_time *1.5
    end 
    def info()
        super
        puts " OT: #{@ot_time}"
    end
end


