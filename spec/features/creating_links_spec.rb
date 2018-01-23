feature 'user can add link' do
  scenario 'user adds link and saves' do
    visit('/links/new')
    fill_in "url", :with => 'www.facebook.com'
    fill_in 'title', :with => 'Facebook'
    click_button 'save'

    expect(current_path).to eq '/links'

    within "ul#links" do
      expect(page).to have_content "www.facebook.com"
    end
  end
end
