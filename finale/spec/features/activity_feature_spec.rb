require 'rails_helper.rb'

feature 'Activity' do
  context "User can log activity" do
    scenario "no activity logged yet" do
      visit '/'
      sign_up
      click_link_or_button 'Log Activity'
      expect(current_path).to eq new_activity_path
      expect(page).to have_content 'No Activity Logged Yet'
      expect(page).to have_button 'Add Activity'
    end
  end
end
