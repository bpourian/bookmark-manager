feature 'add a tag to a link' do
  scenario 'user tags a link and adds to databse' do
      visit('/links/new')
      fill_in "url", :with => 'www.facebook.com'
      fill_in 'title', :with => 'Facebook'
      fill_in 'tags', :with => 'Social'
      click_button 'save'

      link = Link.first
      expect(link.tags.map(&:name)).to include('Social')

      within 'ul#links' do
      expect(page).to have_content('Social')
    end
  end
end
