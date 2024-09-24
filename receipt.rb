def bill_receipt(items)  
    total_tax = 0.0
    total_cost = 0.0
    receipt_lines = []
  
    items.each do |item|
      item_name, item_price, is_imported, is_exempt = item
      tax = calculate_tax(item_price, is_imported, is_exempt)
      item_cost = item_price + tax
      total_tax += tax
      total_cost += item_cost
      receipt_lines << "#{item_name}: %.2f" % item_cost
    end
  
    receipt_lines << "Sales Taxes: %.2f" % total_tax
    receipt_lines << "Total: %.2f" % total_cost
  
    receipt_lines
  end