#Release 2 #1
def build_array(a, b, c)
  new_array = [a, b, c]
end

#Release 2 #2
def add_to_array(arr, item)
  arr << item
end

#Release 1
puppies = []
p puppies
puppies = ["small","cute","bad","noisy","fun"]
p puppies
puppies.delete_at(2)
p puppies
puppies.insert(2,"fluffy")
p puppies
puppies.shift
p puppies

if puppies.include?"fun"
  puts "Yes inside the array puppies, you can find the element 'fun'"
end
p puppies.include? "fun"
cat = ["mean","independent","hunters"]
new_array = puppies + cat
p new_array

#Release 2 #1
p build_array(1, "two", nil)

#Release 2 #2
p add_to_array([], "a")
p add_to_array(["a", "b", "c", 1, 2], 3)