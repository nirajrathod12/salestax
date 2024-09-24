
require_relative "receipt.rb"
require_relative "calculatetax.rb"
require_relative "roundup.rb"


def main
  #  imported -> 0.05 %
  # excempt -> 0.10 %
  inputs = [
    [["1 book", 12.49, false, true],
     ["1 music CD", 14.99, false, false],
     ["1 chocolate bar", 0.85, false, true]],

    [["1 imported box of chocolates", 10.00, true, true],
     ["1 imported bottle of perfume", 47.50, true, false]],

    [["1 imported bottle of perfume", 27.99, true, false],
     ["1 bottle of perfume", 18.99, false, false],
     ["1 packet of headache pills", 9.75, false, true],
     ["1 box of imported chocolates", 11.25, true, true]]
    
  ]


  inputs.each do |items|
    receipt = bill_receipt(items)
    puts receipt
    puts
  end
end

 



main

