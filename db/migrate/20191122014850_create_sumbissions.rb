class CreateSumbissions < ActiveRecord::Migration[6.0]
  def change
    create_table :sumbissions do |t|
      t.references :question, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
