def find_item_by_name_in_collection(name, collection)
  counter = 0 
  while counter < collection.length
    if collection[counter][:item] == name
      return collection[counter]
    end
    counter += 1 
  end

end

def consolidate_cart(cart)
  new_array = []
  counter = 0 
  while counter < cart.length
   new_cart_item = find_item_by_name_in_collection(cart[counter][:item], new_array)
   if new_cart_item !+ nil 
     new_cart_item[:count] += 1 
   else
     new_cart_item = {
       :item => cart[counter][:item],
       :price => cart[counter][:price],
       :clearence => cart[counter][:clearence],
       :count => 
     }
   end
   counter += 1 
  end
end


  