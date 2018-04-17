require 'pry'

  # This is the array we will be passing into the remove_strawberry method
  # contacts = {
  #   "Jon Snow" => {
  #     name: "Jon",
  #     email: "jon_snow@thewall.we", 
  #     favorite_ice_cream_flavors: ["chocolate", "vanilla"]
  #   },
  #   "Freddy Mercury" => {
  #     name: "Freddy",
  #     email: "freddy@mercury.com",
  #     favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
  #   }
  # }
  
def remove_strawberry(contacts)
 contacts.each do |person, contact_details_hash|
    contact_details_hash.each do |attribute, data|  # data on first iteration is => ["chocolate", "vanilla"]
      if attribute == :favorite_ice_cream_flavors  # data on second iteration is => ["strawberry", "cookie dough", "mint chip"]
        data.delete_if {|ice_cream| ice_cream == "strawberry"}  # data on second iteration now shows => ["cookie dough", "mint chip"]
        #binding.pry
      end
    end
  end
end

