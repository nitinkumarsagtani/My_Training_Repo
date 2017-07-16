module IsImported
  
  def is_imported?
    @import = []
    
    @item_list.length.times do |index|
      @import[index] = @item_list[index].include?("imported")
    end
  end
  
end