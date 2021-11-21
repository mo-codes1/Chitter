feature 'adding peeps' do
  scenario 'the ability to post a peep' do
    visit '/add_peeps'
    fill_in('message', with: 'I am happy to use you')
    click_button('Peep')
    
    expect(page).to have_content 'I am happy to use you'
  end
end
