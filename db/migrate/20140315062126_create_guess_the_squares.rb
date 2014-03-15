class CreateGuessTheSquares < ActiveRecord::Migration
  def change
    create_table :guess_the_squares do |t|
      t.integer :score, null: false
      t.integer :difficulty, null: false

      t.timestamps
    end
  end
end
