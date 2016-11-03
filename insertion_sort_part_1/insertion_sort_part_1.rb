def  insertionSort( ar)
    pivot = ar.last

    ar.to_enum.with_index.reverse_each do |num, index|
        if num == pivot
            next
        elsif num > pivot
            ar[index + 1] = num
            if index == 0
                print_array_status(ar)
                ar[index] = pivot
            end
        elsif num < pivot
            ar[index + 1] = pivot
            print_array_status(ar)
            return
        end
        print_array_status(ar)
    end
end
count = gets.to_i
ar = gets.strip.split.map {|i| i.to_i}

def print_array_status(ar)
    puts ar.join(" ")
end

insertionSort( ar )
