require 'pry'   # binding.pry
require 'pp'    # pp 

def find_item_by_name_in_collection(name, collection)
  i=0 
   while i < collection.length
    if collection[i][:item] == name
      return collection[i]
    end
    i += 1
end
end
  ##  name #=> "WINE"
  ##  collection #=> [{:item=>"DOG FOOD"}, {:item=>"WINE"}, {:item=>"STRYCHNINE"}]
  ##
  ##  returns #=> {:item=>"name"} # if name called is in collection
  ##  returns #=> nil # if name is not in collection

  

def consolidate_cart(cart)
  kart = []
  i=0
  while i < cart.length  do
    kart_item = find_item_by_name_in_collection(cart[i][:item], kart)   
    
    if kart_item 
      kart_item[:count] += 1 
    else
      kart_item = {
        item: cart[i][:item],
        price: cart[i][:price],
        clearance: cart[i][:clearance],
        count: 1
      }
      kart.push(kart_item)
    end  
      i += 1
  end
  kart
end
  ## example cart arguement#=>  
  ##              [{:item=>"TEMPEH", :price=>3.0, :clearance=>true},
  ##              {:item=>"PEANUTBUTTER", :price=>3.0, :clearance=>false},
  ##              {:item=>"TEMPEH", :price=>3.0, :clearance=>true}]
  
  ## returns #=>      
  ##  [{:item=>"TEMPEH", :price=>3.0, :clearance=>true, :count=>2},
  ##  {:item=>"PEANUTBUTTER", :price=>3.0, :clearance=>false, :count => 1}]
  
  
def apply_coupons(cart, coupons)
# i = 0
#   while coupons[i] < coupons.length do 

#     item = find_item_by_name_in_collection(coupons[i][:item], cart) 
#     coupon_item = "#{coupons[i][:item]} W/COUPON"
#     item_w_coupon = find_item_by_name_in_collection(coupon_item, cart)

#     if item && item[:count] >= coupons[i][:num]
#       if item_w_coupon
#         item_w_coupon[:count] += coupons[i][:num]
#         item[:count] -= coupons[i][:num]
#       else
#         new_price = coupons[i][:cost] / coupons[i][:num]

#         item_w_coupon = {
#           :item => coupon_item,
#           :price => new_price,
#           :count => coupons[i][:num],
#           :clearance => item[:clearance]
#         }

#         cart << item_w_coupon
#         item[:count] -= coupons[i][:num]
#       end
#     end

#   i += 1
#   end
#   cart
end
## cart #=>     [{:item=>"AVOCADO", :price=>3.0, :clearance=>true, :count=>2}]
## coupons #=>  [{:item=>"AVOCADO", :num=>2, :cost=>5.0}]
##
## result +=>   [{:item => "AVOCADO", :price => 3.00, :clearance => true, :count => 1},
##              {:item => "AVOCADO W/COUPON", :price => 2.50, :clearance => true, :count => 2}]

def apply_clearance(cart)
  i = 0
  while cart[i] do
    if cart[i][:clearance]
      cart[i][:price] = (cart[i][:price] - (cart[i][:price] * 0.20)).round(2)
    end

    i += 1
  end
  cart
end

def checkout(cart, coupons)
  binding.pry
# consolidated_cart = consolidate_cart(cart)
# couponed_cart = apply_coupons(consolidated_cart, coupons)
# final_cart = apply_clearance(couponed_cart)

# total = 0
# counter = 0
# while counter < final_cart.length
#   total += final_cart[counter][:price] * final_cart[counter][:count]
# counter += 1
# end
# if total > 100
#   total -= (total * 0.10)
# end
# total
end
## cart #=>  [{:item=>"BEETS", :price=>2.5, :clearance=>false}]
## coupons #=> []
