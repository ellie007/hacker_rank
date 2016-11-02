def build_tree(input)
    node_list = input.split("\n")
    node_list.shift
    tree_decompositions = create_node_child_count(node_list).last
    print tree_decompositions
end

def create_node_child_count(node_list)
    decompositions = 0
    node_child_count = Array.new(node_list.length + 1, 1)
    create_node_tree(node_list).to_enum.with_index.reverse_each do |node_value, index|
        next if node_value.nil?
        node_child_count[node_value - 1] += node_child_count[index - 1]
        decompositions += 1 if node_child_count[index - 1].even?
    end
    node_child_count.push(decompositions)
end

def create_node_tree(node_list)
    node_array = []
    node_list.each do |node|
        n = node.split("\s")
        node_array[n[0].to_i] = n[1].to_i
    end
    node_array
end

build_tree(ARGF.read)
