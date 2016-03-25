class AddTellCountToJokes < ActiveRecord::Migration
  def change
    add_column :jokes, :tell_count, :integer
  end
end
