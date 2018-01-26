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
    expect(User.count).to eq 1
  end
end

# def sign_up
#   visit '/users/new'
#   expect(page.status_code).to eq(200)
#   fill_in :email,    with: 'alice@example.com'
#   fill_in :password, with: 'oranges!'
#   click_button 'Sign up'
# end
#
# # spec/features/user_management_spec.rb
# feature 'User sign up' do
#   scenario 'I can sign up as a new user' do
#     expect { sign_up }.to change(User, :count).by(1)
#     expect(page).to have_content('Welcome, alice@example.com')
#     expect(User.first.email).to eq('alice@example.com')
#   end
# end
