# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # define hash
  # break down inputted grocery list into individual items
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]
def make_list(items)
  grocery_list = {}
  list_array = items.split(" ")
  list_array.each {|food| grocery_list[food] = 1}
  return grocery_list
end


# Method to add an item to a list
# input: item name and optional quantity
# steps: two parameters. assign item parameter to key and quantity to value. default qty set to 1
# output: returns updated list
def add_item(grocery_list, item, qty=1)
  grocery_list[item] = qty
  grocery_list
end



# Method to remove an item from the list
# input: item as parameter
# steps: search the hash for that item and delete it
# output: return new list
def remove_item(grocery_list, item)
  grocery_list.delete(item)
  grocery_list
end


# Method to update the quantity of an item
# input: two parameters: item and new quantity
# steps: assign the value to whatever the item is equal to
# output: return new list
def qty_change(grocery_list, item, qty)
  grocery_list[item] = qty
  grocery_list
end



# Method to print a list and make it look pretty
# input: no input
# steps: iterate through hash, print message that shows items and qty.
# output: grocery list
def print_list(grocery_list)
  grocery_list.each {|item, qty| puts "Buy #{qty} #{item}"}
end


shopping_list = make_list("apples oranges bannanas carrots")

add_item(shopping_list, "lemonade", 2)
add_item(shopping_list, "tomatoes", 3)
add_item(shopping_list, "onions", 1)
add_item(shopping_list, "ice cream", 4)

remove_item(shopping_list, "lemonade")

qty_change(shopping_list, "ice cream", 1)

print_list(shopping_list)