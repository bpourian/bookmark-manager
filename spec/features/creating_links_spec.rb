feature 'user can add link' do
  scenario 'user adds link and saves' do
    visit('/links/new')
    fill_in "url", :with => 'www.google.com'
    fill_in 'title', :with => 'Google'
    click_button 'save'

    within "ul#links" do
      expect(page).to have_content "Your links: www.google.com"
    end
  end
end
