# Register

  Given ("User has no account") do
    current_user = nil
  end

  When ("they click register and submit details") do
    visit "/register"
    fill_in 'Email', with: 'wad@first_time.com'
    fill_in 'Name', with: 'Burt Waderson'
    fill_in 'Password', with: 'password'
    fill_in 'Password confirmation', with: 'password'
    click_button 'Register'
  end

  Then("they should be routed and welcomed to the home page") do
    expect(page).to have_content 'Hello Burt, welcome to WAD climbing!'
    expect(User.find_by(email: 'wad@first_time.com')).to be_truthy
  end

#Login

  Given ("User is logged out") do
    current_user = nil
    User.create!(email:'wad@first_time.com', name:'Burt Waderson', password: 'password')
  end

  When ("they click login and submit their details") do
    visit "/login"
    fill_in 'Email', with: 'wad@first_time.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
  end

  Then("they should be logged into and welcomed to the home page") do
    expect(page).to have_content 'Hello Burt, welcome to WAD climbing!'
    expect(User.find_by(email: 'wad@first_time.com')).to be_truthy
  end


# Logout

  Given("User is logged in") do
    User.create!(email:'wad@first_time.com', name:'Burt Waderson', password: 'password')
    visit "/login"
    fill_in 'Email', with: 'wad@first_time.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
  end

  When("they click logout") do
    destroy_user_session_path
  end

  Then("they should be logged out the app") do
    current_user = nil
  end

