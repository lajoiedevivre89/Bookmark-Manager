feature 'Adding bookmarks' do
  scenario 'A user can add a new bookmark' do
    visit('/bookmarks')
    fill_in :url, with: 'www.twitter.com'
    click_button 'Submit'
    expect(page).to have_content 'www.twitter.com'
  end
end