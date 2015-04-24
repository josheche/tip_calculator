class TipCalc
  attr_accessor :bill, :tip_percent, :num_people
 
  attr_reader :total, :my_share
 
  def initialize
    bill?
    tip_percent?    ######## GETS USER INPUT
    num_people?
  end

  def start
    divider
    calc_total         ######## BEGINS CALCULATION
    calc_my_share
  end
  
  def calc_my_share
    @my_share = @total / @num_people
    puts "My share of the bill:\t$#{@my_share.round(2)}"       #########CALCULATES THE USERS SHARE OF THE BILL WITH TIP INCLUDED
    @my_share.round(2)
  end


  def calc_total
    @total = @bill * (1 + (@tip_percent/100.00))      ######### USES "(1 + (@tip_percent/100.00))" TO FIX CRAAAAAZY NUMBERS
    puts "The total bill is:\t$#{@total.round(2)}"             #########CALCULATES FINAL BILL TOTAL WITH TIP INCLUDED      
    @total.round(2)
  end

  def bill?
    @bill = float? "Please enter a bill amount:"   #########GETS BILL AMOUNT PRIOR TO 
  end
 
  def tip_percent?
    @tip_percent = float? "Please enter a tip percent:"
  end
 
  def num_people?
    @num_people = float? "Please enter a dinner party size:"
  end

  def divider
  puts "*"*50
  end
 
  private
  def float?(request)
    puts request
    gets.to_f
  end	
 
end
 
 
tip_calc = TipCalc.new
tip_calc.start
 