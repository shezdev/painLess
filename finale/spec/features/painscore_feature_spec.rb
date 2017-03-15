feature 'Painscore' do
  context "No pain score has been added to today's log" do
    scenario "Pain score page should display a prompt to record a score" do
      visit '/'
      click_link_or_button 'Log Pain'
      expect(current_path).to eq new_painscore_path
      expect(page).to have_content 'No Pain Score'
      expect(page).to have_button 'Add Pain Score'
    end
  end

  context "Recording pain score" do
    scenario 'prompts user to fill out a form, then displays the pain scores' do
      visit '/'
      click_link_or_button 'Log Pain'
      fill_in 'Score', with: 5
      click_link_or_button 'Add Pain Score'
      expect(current_path).to eq painscores_path
      expect(page).to have_content 5
    end
  end
end
