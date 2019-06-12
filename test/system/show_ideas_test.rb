# frozen_string_literal: true

require 'application_system_test_case'

class ShowIdeasTest < ApplicationSystemTestCase
  test 'create new idea' do
    my_idea = Idea.new
    my_idea.title = 'Visit Canarias'
    my_idea.done_count = 3200
    my_idea.save!

    visit(show_idea_path(my_idea))
    assert page.has_content?('Visit Canarias')
    assert page.has_content?('3200 have done')
    assert page.has_content?(my_idea.created_at.strftime("%d %b '%y"))

    click_on('Edit')

    assert_equal current_path, edit_idea_path(my_idea)
  end
end
