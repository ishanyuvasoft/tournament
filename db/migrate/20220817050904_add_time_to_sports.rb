class AddTimeToSports < ActiveRecord::Migration[6.1]
  def change
    add_column :sports, :date, :date
  end
end
