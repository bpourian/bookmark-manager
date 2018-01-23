
feature 'list of links saved output to user' do
  scenario 'user has saved a link - home page lists link' do
    Link.create(url:  'http://www.google.com', title: 'Google')
    visit '/links'
    # this is a *temporary* sanity check - to make sure we
    # can load the page :)
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('Google')
    end
  end
end
