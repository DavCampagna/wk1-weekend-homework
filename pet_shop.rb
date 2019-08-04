def pet_shop_name(pet_shop_name)
  pet_shop_name = @pet_shop[:name]
return pet_shop_name
end

def total_cash(total_cash)
  total_cash = @pet_shop[:admin][:total_cash]
return total_cash
end

def add_or_remove_cash(pet_shop, amount)
  cash = pet_shop[:admin][:total_cash] += amount
return cash
end

def pets_sold(pets_sold)
  pets_sold = @pet_shop[:admin][:pets_sold]
return pets_sold
end

def increase_pets_sold(pets_sold, increase)
  increase_pets_sold = @pet_shop[:admin][:pets_sold] += increase
return increase_pets_sold
end

def stock_count(stock_count)
  stock_count = @pet_shop[:pets].count
return stock_count
end

def pets_by_breed(pets, breed)
pets_by_breed = []

for pet in @pet_shop[:pets]
  if pet[:breed] == breed
    pets_by_breed.push(pet)
  end
end
  return pets_by_breed
end

def find_pet_by_name(pets, name)
pet_name = {}
  for pet in @pet_shop[:pets]
    if pet[:name] == name
      pet_name = pet
    end
  end
  if pet_name.empty?
    return nil
  else
    return pet_name
  end
end

def remove_pet_by_name(pets, name)
pet_name = {}
    for pet in @pet_shop[:pets]
      if pet[:name] == name
      pet.clear
      end
  end
end

def add_pet_to_stock(new_pet, stock_count)
  stock_count = @pet_shop[:pets].push(@new_pet).count
  return stock_count
end

def customer_cash(customer)
  customer_cash = customer[:cash]
return customer_cash
end

def remove_customer_cash(customer, amount)
  cash = customer[:cash] -= amount
  return cash
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
return customer[:pets].push(new_pet)
end
