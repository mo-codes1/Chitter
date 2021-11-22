def signup
  visit ('/')
  click_link "Sign Up"
  fill_in :username, with: "Mohammed"
  fill_in :email, with: "mohammed_chitter@gmail.com"
  click_button "Sign Up"
end