class BonusDrink
  BONUS_AMOUNT=3

  def self.total_count_for(amount)
    amount + calculate_bonus(amount)
  end

  def self.calculate_bonus(amount)
    bonus = amount / BONUS_AMOUNT
    rest = amount % BONUS_AMOUNT
    if bonus == 0
      return 0
    else
      bonus + calculate_bonus(bonus+rest)
    end
  end
end