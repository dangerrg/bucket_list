class AddDescriptionToIdea < ActiveRecord::Migration[5.2]
  def change
    add_column :ideas, :description, :string
  end
end
