module PeopleHelper
  def next_birthday_weekday
    year = Time.now.year 
    year = year + 1 if @person.happened_this_year
    Date.new(year, @person.month, @person.day).strftime("%A")
  end
  
   
end