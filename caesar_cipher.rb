
array = []
decrypt = []
string = "a"
n = 1



string.each_char do |x|
  x = ?x.ord
  if x.between?('97', '122')
        if ((x[0] + n)).between?('97', '122')
            array.push(x[0] + n)
        else
            array.push((x[0] + n) - 23)
        end
  elsif x.between?('65', '90')
        if (x[0]+n).between?('65', '90')
            array.push(x[0] + n)
        else
            array.push((x[0] + n) -23)
        end
  else
    array.push(x[0])
  end
end
  
array.each do |x|
    decrypt.push(x.chr)
end

puts decrypt.join
