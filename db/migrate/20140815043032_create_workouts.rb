class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.belongs_to :user
      t.string :name
      t.integer :set
      t.integer :reps
      t.integer :weight
      t.integer :time
      t.integer :distance
      t.integer :feel

      t.timestamps
    end
  end
end
