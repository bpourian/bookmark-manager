feature 'environment set up correctly' do
  scenario 'set up' do
    visit('/')
    expect(page).to have_content 'Welcome to Bookmark Manager'
  end
end
