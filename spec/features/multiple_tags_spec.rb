feature 'Add multiple tags to one link' do
  scenario 'User wants to add multiple tags to a link' do
    visit '/links/new'
    fill_in "url", :with => 'www.facebook.com'
    fill_in 'title', :with => 'Facebook'
    fill_in 'tags', :with => 'social friends'
    click_button 'save'

    link = Link.first
    expect(link.tags.map(&:name)).to include('social','friends')
  end
end
