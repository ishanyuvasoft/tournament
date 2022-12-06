class CreateSports < ActiveRecord::Migration[6.1]
  def change
    create_table :sports do |t|
      t.string :sport_name
      t.string :sport_type
      t.string :no_of_players

      t.timestamps
    end
  end
end
