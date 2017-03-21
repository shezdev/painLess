def sign_up
  visit '/'
  click_link_or_button 'Register'
  fill_in :Email, with: 'jennyrick@email.com'
  fill_in("Password", with: '123456', :match => :prefer_exact)
  fill_in("Password confirmation", with: '123456', :match => :prefer_exact)
  click_button 'Sign up'
end

def log_painscore
  visit '/'
  click_link_or_button "Log Today's Data"
  page.find('#painscore_customdate').set("2017-03-16")
  fill_in 'Score', with: 5
  click_link_or_button 'Add Pain Score'
  click_link_or_button 'Next'
end

def log_foodlog
  fill_in 'Food', with: 'Cucumber'
  click_link_or_button 'Add Food'
  click_link_or_button 'Next'
end

def log_activity
  fill_in :activity_name, with: 'Soccer'
  fill_in :activity_exertion, with: 10
  click_link_or_button 'Add Activity'
  click_link_or_button 'Home'
end
