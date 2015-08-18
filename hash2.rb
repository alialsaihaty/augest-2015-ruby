canada = {"BC" => "Victoria", "AB" => "Edmonton", "ON" => "Toronto"}

canada.each do |province, capital|
  puts "The capital of #{province} is #{capital}"
end
