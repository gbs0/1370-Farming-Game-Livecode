class Grain
  attr_reader :quantity, :stock

  def initialize
    @quantity = 0
    @stock = 0
  end

  def crop!(days_until_crop)
    if @quantity == 0
      puts "There's no grain planted yet."
    elsif @quantity <= days_until_crop
      puts "Wait! Faltam 2 Semanas p/ colher!"
    else # Quando o Milho está apto p/ ser cortado
      # O estoque precisa ser incrementado com a quantidade de milho plantada.
      @stock += @quantity # Fazer isso é o mesmo que:
      # @stock = 2 + @quantity
      # A quantidade existente tem de ser zerada.
      @quantity -= @quantity

      puts "Your crop is done! ✅ \n"
    end
  end

  def water!(quantity)
    @quantity += quantity
  end
end
