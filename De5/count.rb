#Dem so lan xuat hien


a = [1,1,3,1,3,2,21,1,4]
res = Hash.new
a.each do |element|
   if (res[element].nil? == true) 
     res[element] = 1
   else
     res[element]+=1
   end  
end
p res

