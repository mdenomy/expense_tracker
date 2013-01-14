module ExpensesHelper

  def string_to_dollars(input)
    input.gsub!(/[^\d.]/,'')
    BigDecimal(input).truncate(2)
  end
end
