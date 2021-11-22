require './lib/user'

describe User do 
  it 'creates a new user' do
    User.create("Mohammed", "mohammed_chitter@gmail.com")
    expect(User.all.first.username).to eq "Mohammed"
  end

  it 'allows an existing user to login' do
    User.create("Mohammed", "mohammed_chitter@gmail.com")
    User.login_user("Mohammed")
    expect(User.login_user.username).to eq "Mohammed"
  end
end