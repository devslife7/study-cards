class CreateCourseCards < ActiveRecord::Migration[6.0]
  def change
    create_table :course_cards do |t|
      t.integer :correct
      t.integer :incorrect
      t.references :course, null: false, foreign_key: true
      t.references :card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
