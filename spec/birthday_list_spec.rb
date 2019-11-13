require 'birthday_list'

describe BirthdayList do
# Store one friend's birthday
  it "stores friends' birthday" do
    birthdaylist = BirthdayList.new
    expect(birthdaylist.add("John Smith", "1 January 2000")).to eq [{name: "John Smith", birthday: "1 January 2000"}]
  end
end
