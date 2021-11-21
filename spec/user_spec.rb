require './lib/user'

describe User do 
  it 'creates a new user' do
    User.create("Mohammed", "mohammed_chitter@gmail.com")
    expect(User.all.first.username).to eq "Mohammed"
  end
end