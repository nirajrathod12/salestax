def calculate_tax(item_price,is_imported,is_exempt)
    tax = 0.0
     tax  += rounded_tax(item_price * 0.10) unless is_exempt
     tax += rounded_tax(item_price * 0.05) if is_imported
  
    tax 
  end