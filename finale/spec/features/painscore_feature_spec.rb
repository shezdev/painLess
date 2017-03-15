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
end
