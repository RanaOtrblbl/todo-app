class AddDeadlineToTOdos < ActiveRecord::Migration[8.0]
  def change
    add_column :todos, :deadline, :date
  end
end
