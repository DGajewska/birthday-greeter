require 'date'

class DateCalculator

  def initialize
    @today = Date.today
  end

  def days_until(day,month,year=@today.year)
    days_to_bday = (format_date(day,month,year) - @today).to_i
    days_to_bday > 0 ? days_to_bday : days_until(day,month,year+1)
  end

  private
  def format_date(day,month,year)
    Date.parse("#{day}/#{month}/#{year}")
  end
end
