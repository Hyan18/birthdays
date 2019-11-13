class BirthdayList

  def initialize
    @list = []
  end

  def add(friend, date)
    @list << {name: friend, birthday: date}
  end

end
