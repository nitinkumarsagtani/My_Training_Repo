module CategoryInfo
  
  def is_tax_free?
    @category = []
    @words = ["book","books","chocolate","chocolates","pills","medicine","medicines","food"]
    
    @item_list.length.times do |index|
      @category[index] = (@item_list[index] & @words).empty?
    end
    
  end

end

