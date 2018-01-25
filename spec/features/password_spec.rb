feature 'password encryption' do
  scenario 'user setup an account' do
    visit '/signup'
    fill_in('email', :with => 'b.pourian@hotmail.co.uk')
    fill_in('password', :with => 'password1')
    click_button 'submit'
    user = User.first(email: 'b.pourian@hotmail.co.uk')

    expect(user.password).not_to eq 'password1'
    end
  end
