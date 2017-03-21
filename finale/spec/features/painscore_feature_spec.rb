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

  context "Recording pain score" do
    scenario 'prompts user to fill out a form, then displays the users pain scores' do
      sign_up
      click_link_or_button "Log Today's Data"
      page.find('#painscore_customdate').set("2017-03-16")
      fill_in 'Score', with: 5
      click_link_or_button 'Add Pain Score'
      expect(current_path).to eq new_painscore_path
      expect(page).to have_content 5
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
      page.find('#painscore_customdate').set("2017-03-16")
      fill_in 'Score', with: 5
      click_link_or_button 'Add Pain Score'
      expect(page).to have_content 'Next'
      click_link_or_button 'Next'
      expect(current_path).to eq new_foodlog_path
    end
  end
end
