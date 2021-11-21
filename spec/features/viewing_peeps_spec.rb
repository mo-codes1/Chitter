feature 'viewing peeps' do
  scenario 'the ability to view a peep' do
    visit '/peeps'
    expect(page).to have_content 'Hello Chitter' 
  
  end
end