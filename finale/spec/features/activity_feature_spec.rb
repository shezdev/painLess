require 'rails_helper.rb'

feature 'Activity' do
  context "User can log their activity" do
    scenario "when no activity logged yet" do
      sign_up
      log_painscore
      log_foodlog
      expect(current_path).to eq new_activity_path
      expect(page).to have_content 'No Activity Logged Yet'
      expect(page).to have_button 'Add Activity'
    end
  end

  context "Users can log their activity" do
    scenario 'and view all activities in a list' do
      sign_up
      log_painscore
      log_foodlog
      fill_in :activity_name, with: 'Soccer'
      fill_in :activity_exertion, with: 9
      click_link_or_button 'Add Activity'
      fill_in :activity_name, with: 'Rugby'
      fill_in :activity_exertion, with: 8
      click_link_or_button 'Add Activity'
      expect(page).to have_content 'Soccer'
      expect(page).to have_content 9
      expect(page).to have_content 'Rugby'
      expect(page).to have_content 8
    end
  end

  context "Users can delete an entry in the activity log" do
    scenario "delete button next to each activity" do
      sign_up
      log_painscore
      log_foodlog
      fill_in :activity_name, with: 'Soccer'
      fill_in :activity_exertion, with: 9
      click_link_or_button 'Add Activity'
      click_link_or_button 'Delete'
      expect(page).not_to have_content 'Soccer'
      expect(page).not_to have_content 9
    end
  end

  context "Finish logging todays data" do
    scenario "click on home button to return to homepage" do
      sign_up
      log_painscore
      log_foodlog
      log_activity
      expect(current_path).to eq welcome_index_path
    end
  end
end
