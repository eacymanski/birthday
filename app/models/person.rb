class Person < ActiveRecord::Base
  def age
    now = Time.now.utc.to_date
    now.year-birthday.year-(now.month<birthday.month||(birthday.month==now.month&&birthday.day>now.day) ? 1 : 0)
  end

  def days_until
    now=Time.now.utc.to_date
    this_year_bday = Date.new(now.year, birthday.month, birthday.day)
    this_year_bday+=1.year if this_year_bday<now 
    (this_year_bday-now).to_i
  end
  
  def month
    birthday.month
  end
  
  def day
    birthday.day
  end
  

end
