class CreateRacesInitialAbilities < ActiveRecord::Migration[5.0]
  def change
    create_table :races_initial_abilities do |t|
      t.references :race, foreign_key: true
      t.references :ability, foreign_key: true
      t.string :value

      t.timestamps
    end
  end
end
