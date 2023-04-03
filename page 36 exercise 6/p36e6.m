function [price,quantity] = p36e6(price,quantity)
price = price-0.1*(quantity-500);
quantity = quantity+0.2*(price-100);
end

