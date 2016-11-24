class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
    	t.integer :booking_id
    	t.text :body
    	t.integer :rating
    	t.timestamps
    end
  end
end
