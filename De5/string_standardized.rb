#Chuan hoa string
# s = " \t \n  tran \t   Xuan TRong   \n \t   "
s = "    le thi   Tuan    Hiep   "
puts "\tChuoi vua nhap:" << s
s.strip!
s.downcase!
arr = s.split(' ')
tail=""
res=""
arr.each_with_index do |i, index|
  tail << i[0].upcase
  if index == arr.size - 1
    res = i.capitalize() << tail[0...-1]
  end
end
puts"\tChuoi sau khi chuan hoa:" << res