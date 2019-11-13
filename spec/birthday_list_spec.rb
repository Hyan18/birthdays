require 'birthday_list'

describe BirthdayList do
# Store one friend's birthday
  it "stores friends' birthday" do
    birthdaylist = BirthdayList.new
    expect(birthdaylist.add("John Smith", "1 January 2000")).to eq [{name: "John Smith", birthday: "1 January 2000"}]
  end

# Store second friend's birthday
  it "stores multiple friends' birthdays" do
    birthdaylist = BirthdayList.new
    birthdaylist.add("John Smith", "1 January 2000")
    expect(birthdaylist.add("Alice Jones", "8 April 1997")).to eq [{name: "John Smith", birthday: "1 January 2000"}, {name: "Alice Jones", birthday: "8 April 1997"}]
  end

# Show each friends name and birthdays on lines
  it "shows each friends name and birthday on lines" do
    birthdaylist = BirthdayList.new
    birthdaylist.add("John Smith", "1 January 2000")
    birthdaylist.add("Alice Jones", "8 April 1997")
    expect{birthdaylist.show}.to output("John Smith has their birthday on 1 January 2000\nAlice Jones has their birthday on 8 April 1997\n").to_stdout
  end

end
