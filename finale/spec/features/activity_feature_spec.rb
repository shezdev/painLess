require 'rails_helper.rb'

feature 'Activity' do
  context "User can log their activity" do
    scenario "no activity logged yet" do
      sign_up
      click_link_or_button 'Log Activity'
      expect(current_path).to eq new_activity_path
      expect(page).to have_content 'No Activity Logged Yet'
      expect(page).to have_button 'Add Activity'
    end
  end

  context "Users can log their activity" do
    scenario 'and view all activities in a list' do
      sign_up
      click_link_or_button 'Log Activity'
      fill_in :activity_name, with: 'Soccer'
      fill_in :activity_exertion, with: 10
      click_link_or_button 'Add Activity'
      visit '/'
      click_link_or_button 'Log Activity'
      fill_in :activity_name, with: 'Rugby'
      fill_in :activity_exertion, with: 8
      click_link_or_button 'Add Activity'
      expect(current_path).to eq activities_path
      expect(page).to have_content 'Soccer'
      expect(page).to have_content 10
      expect(page).to have_content 'Rugby'
      expect(page).to have_content 8
    end
  end

  context "Users can delete an entry in the activity log" do
    scenario "delete button next to each activity" do
      sign_up
      click_link_or_button 'Log Activity'
      fill_in :activity_name, with: 'Soccer'
      fill_in :activity_exertion, with: 10
      click_link_or_button 'Add Activity'
      visit '/'
      click_link_or_button 'Log Activity'
      fill_in :activity_name, with: 'Rugby'
      fill_in :activity_exertion, with: 8
      click_link_or_button 'Add Activity'
      expect(current_path).to eq activities_path
      save_and_open_page
      page.all('input')[1].click
      expect(page).not_to have_content 'Rugby'
      expect(page).not_to have_content 8
    end
  end
end
