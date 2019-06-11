require 'application_system_test_case'

Capybara.run_server = false

class CapybaraTest < ApplicationSystemTestCase
  test 'capybara works' do
    visit('http://www.google.com/en') #in this case the Firefox open in german so I added /en for english search
    sleep(5.seconds)
    google_input = fill_in('q', with: 'Cinque Terre')
    sleep(5.seconds)
    google_input.native.send_keys(:return)
    click_on('Wikipedia', match: :first)
    sleep(5.seconds)
    click_on('Italian Riviera', match: :first)
    sleep(20.seconds)
  end
end
