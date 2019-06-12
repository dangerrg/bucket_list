require "application_system_test_case"

class IdeasTest < ApplicationSystemTestCase
  test 'create new idea' do
    visit(ideas_new_path)
    fill_in('title', with: 'Skydiving in Interlaken')
    fill_in('done_count', with: 65)
    fill_in('photo_url', with: 'http://monkeychute.co/wp-content/uploads/2018/01/skydive-interlaken.jpg')
    click_on('Create idea')
  end
end
