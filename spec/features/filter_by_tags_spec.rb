feature 'User can filter links by tag' do
  scenario 'user searches for links by tag' do
    visit('/links/new')
    fill_in "url", :with => 'www.facebook.com'
    fill_in 'title', :with => 'Facebook'
    fill_in 'tags', :with => 'social'
    click_button 'save'

    visit('/links/new')
    fill_in "url", :with => 'www.bbcnews.co.uk'
    fill_in 'title', :with => 'BBCnews'
    fill_in 'tags', :with => 'news'
    click_button 'save'

    visit('/links/new')
    fill_in "url", :with => 'www.skynews.co.uk'
    fill_in 'title', :with => 'SKYnews'
    fill_in 'tags', :with => 'news'
    click_button 'save'

    visit '/tags/news'
    expect(page).to have_content 'www.bbcnews.co.uk'
    expect(page).not_to have_content 'www.facebook.com'
    expect(page).to have_content 'www.skynews.co.uk'
  end
end

feature 'Viewing links' do


end
