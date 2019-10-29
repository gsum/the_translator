class CreateDisplayPhases < ActiveRecord::Migration[6.0]
  def change
    create_table :display_phases do |t|
      t.integer :active_phase

      t.timestamps
    end
  end
end
