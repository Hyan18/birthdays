class BirthdayList

  def initialize
    @list = []
  end

  def add(friend, date)
    @list << {name: friend, birthday: date}
  end

  def show
    @list.each { |friend|
        puts("#{friend[:name]} has their birthday on #{friend[:birthday]}")
      }
  end

end
