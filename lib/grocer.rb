def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |item|
    if item[:item] == name
      return item
    end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  consolidate = Array.new
  cart.each {|val|
    findItem = find_item_by_name_in_collection(val[:item], consolidate)
    if(findItem.nil?)
      val[:count] = 1
      consolidate.push(val)
    else
      findItem[:count]+=1
    end
  }
  return consolidate
end
