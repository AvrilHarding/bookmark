feature 'Adding a new bookmark' do
  scenario 'a user can add a bookmark to BookmarkManager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')

    expect(page).to have_content 'http://testbookmark.com'
  end
end
