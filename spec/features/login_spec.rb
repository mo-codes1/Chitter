feature 'login' do
  scenario 'existing user can log into chitter' do
    signup
    click_link "Login"
    fill_in :username, with: "Mohammed"
    fill_in :email, with: "mohammed_chitter@gmail.com"
    click_button "Login"
    expect(page).to have_content "Mohammed"
  end
end