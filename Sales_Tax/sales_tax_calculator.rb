
module SalesTaxCalculator

  def calculate_tax
    self.import_tax = self.get_import_tax
    self.sales_tax = self.get_sales_tax
  end

  def get_sales_tax
    return self.quantity * self.price * 0.10 unless is_tax_free?
    0
  end

  def get_import_tax
    return self.quantity * self.price * 0.05 if is_imported?
    0
  end
end



