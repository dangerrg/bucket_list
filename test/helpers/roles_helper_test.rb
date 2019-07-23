require 'test_helper'

class RolesHelperTest < ActionView::TestCase
  attr_accessor :current_user

  test 'idea can be edited by owner' do
    owner = User.create(email: 'owner@epfl.ch', password: 'password')
    self.current_user = owner
    idea = Idea.create(title: 'A test idea!', user: owner)
    assert can_edit?(idea)
  end
end
