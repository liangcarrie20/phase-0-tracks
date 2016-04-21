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