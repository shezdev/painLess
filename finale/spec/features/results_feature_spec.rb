require 'rails_helper'

feature 'Results' do
  context "No results yet" do
    scenario "Food page should display no results yet" do
      sign_up
      click_link_or_button 'Results'
      expect(current_path).to eq results_path
      expect(page).to have_content 'No Results Yet'
    end
  end

  context "Viewing Results" do
    scenario "Display previous day's food when today's pain is 10" do
      # sign_up
      # click_link_or_button 'Log Food'
      # page.find('#foodlog_customdate').set("2017-03-16")
      # fill_in 'Food', with: 'McDonalds'
      # click_link_or_button 'Add Food'
      # visit '/'
      # click_link_or_button 'Log Pain'
      # page.find('#painscore_customdate').set("2017-03-16")
      # fill_in 'Score', with: 2
      # click_link_or_button 'Add Pain Score'
      #
      # visit '/'
      # click_link_or_button 'Log Food'
      # page.find('#foodlog_customdate').set("2017-03-17")
      # fill_in 'Food', with: 'Tomato'
      # click_link_or_button 'Add Food'
      # visit '/'
      # click_link_or_button 'Log Pain'
      # page.find('#painscore_customdate').set("2017-03-17")
      # fill_in 'Score', with: 10
      # click_link_or_button 'Add Pain Score'
      #
      # visit '/'
      # click_link_or_button 'Results'
      # expect(page).to have_content 'McDonalds'
    end

    scenario "Display all foods that cause a pain score of 10" do
      # #Day1
      # sign_up
      # click_link_or_button 'Log Food'
      # page.find('#foodlog_customdate').set("2017-03-13")
      # fill_in 'Food', with: 'Slippers'
      # click_link_or_button 'Add Food'
      # visit '/'
      # click_link_or_button 'Log Pain'
      # page.find('#painscore_customdate').set("2017-03-13")
      # fill_in 'Score', with: 1
      # click_link_or_button 'Add Pain Score'
      # #Day2
      # visit '/'
      # click_link_or_button 'Log Food'
      # page.find('#foodlog_customdate').set("2017-03-14")
      # fill_in 'Food', with: 'Tomato'
      # click_link_or_button 'Add Food'
      # visit '/'
      # click_link_or_button 'Log Pain'
      # page.find('#painscore_customdate').set("2017-03-14")
      # fill_in 'Score', with: 10
      # click_link_or_button 'Add Pain Score'
      # #Day3
      # visit '/'
      # click_link_or_button 'Log Food'
      # page.find('#foodlog_customdate').set("2017-03-15")
      # fill_in 'Food', with: 'Lettuce'
      # click_link_or_button 'Add Food'
      # visit '/'
      # click_link_or_button 'Log Pain'
      # page.find('#painscore_customdate').set("2017-03-15")
      # fill_in 'Score', with: 2
      # click_link_or_button 'Add Pain Score'
      # #Day4
      # visit '/'
      # click_link_or_button 'Log Food'
      # page.find('#foodlog_customdate').set("2017-03-16")
      # fill_in 'Food', with: 'Flipflops'
      # click_link_or_button 'Add Food'
      # visit '/'
      # click_link_or_button 'Log Pain'
      # page.find('#painscore_customdate').set("2017-03-16")
      # fill_in 'Score', with: 3
      # click_link_or_button 'Add Pain Score'
      # visit '/'
      # #Day5
      # visit '/'
      # click_link_or_button 'Log Food'
      # page.find('#foodlog_customdate').set("2017-03-17")
      # fill_in 'Food', with: 'Onion'
      # click_link_or_button 'Add Food'
      # visit '/'
      # click_link_or_button 'Log Pain'
      # page.find('#painscore_customdate').set("2017-03-17")
      # fill_in 'Score', with: 10
      # click_link_or_button 'Add Pain Score'
      #
      # visit '/'
      # click_link_or_button 'Results'
      # expect(page).to have_content 'Slippers Flipflops'
  end
end

end
