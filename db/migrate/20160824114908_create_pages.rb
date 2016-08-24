class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :area
      t.string :place
      t.string :name
      t.string :info
      t.string :page_1
      t.string :page_2
      t.string :page_3
      t.string :page_4
      t.string :page_5
      t.string :page_6
      t.string :page_7
      t.string :page_8
      t.string :msg_1
      t.string :msg_2
      t.string :msg_3
      t.string :msg_4

      t.timestamps
    end
  end
end
