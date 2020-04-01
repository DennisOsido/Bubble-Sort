def bubble_sort(array)

end

=begin
bubble_sort_by{
    |a, b|
    yield
    a <=> b
}
=end

bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
end
