scores = { japanese: 80, english: 50, mohu: 70}
sum = 0
v = scores.values
  
v.each do |score|
  sum += score
end

puts sum / scores.count
