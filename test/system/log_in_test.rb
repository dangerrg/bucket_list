# frozen_string_literal: true

require 'application_system_test_case'

class LogInsTest < ApplicationSystemTestCase
  test 'sign up creates a User' do
    visit(new_user_path)
    fill_in('Email', with: 'new@epfl.ch')
    click_on('Log in')

    assert_equal 1, User.all.length
    assert_equal 'new@epfl.ch', User.first.email
  end
end
