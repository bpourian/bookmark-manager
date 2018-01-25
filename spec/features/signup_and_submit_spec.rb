feature 'Signup and submit' do
  before(:each) do
    visit '/signup'
    fill_in('email', :with => 'b.pourian@hotmail.co.uk')
    fill_in('password', :with => 'password1')
    click_button 'submit'
  end

  scenario 'User to complete email and password and submit' do
    expect(page).to have_content('Welcome b.pourian@hotmail.co.uk')
  end

  scenario 'Expect user count to have increased by one' do
    skip
    expect('/links').to have_content('users: 1')
  end
end
