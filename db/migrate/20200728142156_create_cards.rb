class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :card_front
      t.string :card_back

      t.timestamps
    end
  end
end
