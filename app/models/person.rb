class Person < ActiveRecord::Base
 def age
    age = Time.now.year - year
    age = age-1 if !happened_this_year
    return age
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
  
  def year
    birthday.year
  end
  
  def happened_this_year
    return month < Time.now.month || (month == Time.now.month && day <= Time.now.day)
  end

end
