feature 'viewing peeps' do
  scenario 'the ability to view a peep' do
    connection = PG.connect(dbname: 'chitter_test')

    connection.exec("INSERT INTO peeps VALUES(1, 'Hello Chitter');")
    visit '/peeps'
    expect(page).to have_content 'Hello Chitter' 
  
  end
end