require 'timecop'

feature 'posting peeps' do
	scenario 'user can post a peep and see it appear in list of peeps' do
		Timecop.freeze(Time.local(2021).to_formatted_s(:db))
		visit('/')
		fill_in :peep_message, with: "Hello Chitter"
		click_button "Post"
		expect(page).to have_content "Hello Chitter"
		expect(page).to have_content Time.local(2021).to_formatted_s(:db)
	end
end
