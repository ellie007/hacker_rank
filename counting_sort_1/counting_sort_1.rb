def counting_sort_1(input)
    value_count = Hash.new
    100.times { |i|  value_count[i] = 0 }
    input.each { |j| value_count[j] += 1 }
    print value_count.values.join(" ").strip
end

gets
data_input = gets.strip.split.map {|i| i.to_i}
counting_sort_1(data_input)
