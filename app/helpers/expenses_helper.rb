module ExpensesHelper

  def string_to_dollars(value)
    value.gsub!(/[^\d.-]/,'')
    BigDecimal(value).truncate(2)
  end
end
