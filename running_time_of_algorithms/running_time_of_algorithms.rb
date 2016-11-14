def insertion_sort(count, values)
    shift_counts = 0

    count.times do |i|
        if i == 0
            next
        elsif values[i - 1] > values[i]
            index_pivot = i - 1
            while values[index_pivot] > values[i] do
                shift_counts += 1
                break if values[index_pivot - 1] < values[i] || index_pivot == 0
                index_pivot -= 1
            end
            values = reassemble_values(values, values[i], i, index_pivot)
        end
    end

    puts shift_counts
end

def reassemble_values(values, original_value, i, index_pivot)
    (i - index_pivot).times do
        values[i] = values[i - 1]
        i -= 1
    end
    values[index_pivot] = original_value
    values
end

count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}
insertion_sort(count, ar)
