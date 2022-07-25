require './Employee.rb'
$em_list = Array.new
def init_list()
    $em_list << Dev.new(1, "Tran Van Trong",8,2)
    $em_list << QA.new(2, "Nguyen Thi Trong",5,3)
    $em_list << Tester.new(3, "Tran Xuan Trong",8)
    $em_list << Employee.new(4, "Hoang Trong",1,"BO")
end 

while true do
    puts "\t1. Khoi tao ds nhan vien"
    puts "\t2. Toan bo nhan vien"
    puts "\t3. Nhan vien co luong > 5000"
    puts "\t4. Them nhan vien"
    puts "\tx. Exit"
    puts "Nhap lua chon: "
    option = gets.chomp
    if option =="x" then
        break
    else
        case option
        when "1"
            if $em_list.empty? then
                init_list()
                puts "Khoi tao DS nhanh vien thanh cong!"
            else    
                puts "DS da ton tai!"
            end
        when "2"
            $em_list.each do |i|
                i.info()
            end
        when "3"
            $em_list.each do |i|
                if i.calc_salary > 5000 then
                    ot=""
                    ot = " ,OT: #{i.request_ot()}" if i.class.method_defined?(:request_ot) 
                    puts "ID:#{i.id}, Salary: #{i.calc_salary()}" << ot
                end 
            end 
        when "4"    
            while true do
                puts "\t1. Devloper"
                puts "\t2. Tester"
                puts "\t3. QA"
                puts "\t4. Other" 
                puts "\tx. Exit"
                o = gets.chomp
                if o =="x" then
                    break
                else
                    case o
                    when "1"
                        puts "ID: "
                        id = gets.chomp
                        puts "Name: "
                        name = gets.chomp
                        puts "Working time: "
                        wt = gets.chomp
                        puts "OT: "
                        ot = gets.chomp
                        $em_list << Dev.new(id,name,wt.to_i,ot.to_i)
                    when "2"
                        puts "ID: "
                        id = gets.chomp
                        puts "Name: "
                        name = gets.chomp
                        puts "Working time: "
                        wt = gets.chomp
                        $em_list << Tester.new(id,name,wt.to_i)
                    when "3"
                        puts "ID: "
                        id = gets.chomp
                        puts "Name: "
                        name = gets.chomp
                        puts "Working time: "
                        wt = gets.chomp
                        puts "OT: "
                        ot = gets.chomp
                        $em_list << QA.new(id,name,wt.to_i,ot.to_i)
                    when "4"
                        puts "ID: "
                        id = gets.chomp
                        puts "Name: "
                        name = gets.chomp
                        puts "Working time: "
                        wt = gets.chomp
                        puts "Department: "
                        dp = gets.chomp
                        $em_list << Employee.new(id,name,wt.to_i,dp)
                    end 
                end  
            end  
        else    
            puts "Invalid option"
        end

    end 
        
end