class CreateGuessTheSquares < ActiveRecord::Migration
  def change
    create_table :guess_the_squares do |t|
      t.integer :score
      t.integer :difficulty

      t.timestamps
    end
  end
end
