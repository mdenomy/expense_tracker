module ExpensesHelper

  def string_to_dollars(input)
    BigDecimal(input)
  end
end
