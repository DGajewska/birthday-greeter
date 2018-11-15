require_relative '../lib/date_calculator'

describe DateCalculator do

  context 'given a date' do
    it 'should calculate days between today and date given' do
      date_calc = DateCalculator.new
      day = Date.today.day + 5
      month = Date.today.month
      expect(date_calc.days_until(day,month)).to eq 5
    end
  end
end
