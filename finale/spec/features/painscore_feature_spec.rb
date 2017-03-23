feature 'Painscore' do
  context "No pain score has been added to today's log" do
    scenario "Pain score page should display a prompt to record a score" do
      sign_up
      click_link_or_button "Log Today's Data"
      expect(current_path).to eq new_painscore_path
      expect(page).to have_content 'No Pain Score'
      expect(page).to have_button 'Add Pain Score'
    end
  end

  context 'When inputting painscore data' do
    scenario 'it is not valid unless date has been entered' do
      sign_up
      click_link_or_button "Log Today's Data"
      fill_in 'Score', with: 8
      click_link_or_button 'Add Pain Score'
      expect(page).to have_content "This didn't save, please ensure you have entered one date and one painscore between 0 and 10"
    end

    scenario 'it is not valid unless pain score has been entered' do
      sign_up
      click_link_or_button "Log Today's Data"
      page.find('#painscore_customdate').set("2017-03-16")
      click_link_or_button 'Add Pain Score'
      expect(page).to have_content "This didn't save, please ensure you have entered one date and one painscore between 0 and 10"
    end
  end

  context "Recording pain score" do
    scenario 'users can enter the date, painscore and notes' do
      sign_up
      click_link_or_button "Log Today's Data"
      page.find('#painscore_customdate').set("2017-03-16")
      fill_in 'Score', with: 5
      fill_in 'Notes', with: 'Shooting pains and swelling in my kneecaps, also this should run for more than fifty characters'
      click_link_or_button 'Add Pain Score'
      expect(current_path).to eq new_painscore_path
      expect(page).to have_content 5
      expect(page).to have_content 'Shooting pains and swelling in my kneecaps, also this should run for more than fifty characters'
    end
  end

  context "Deleting painscores" do
    scenario "users can delete any individual painscores" do
      sign_up
      click_link_or_button "Log Today's Data"
      page.find('#painscore_customdate').set("2017-03-16")
      fill_in 'Score', with: 8
      click_link_or_button 'Add Pain Score'
      click_link_or_button 'Delete'
      expect(page).not_to have_content 8
    end
  end

  context 'After inputting painscore data' do
    scenario 'user can click a link to add food data' do
      sign_up
      click_link_or_button "Log Today's Data"
      page.find('#painscore_customdate').set("2017-03-25")
      fill_in 'Score', with: 5
      click_link_or_button 'Add Pain Score'
      expect(page).to have_content 'Next'
      click_link 'Next'
      expect(page).to have_content 'Please enter your food here: Food No Food Logged Yet'
    end
  end

end
