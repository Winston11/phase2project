class CreateStreamingServices < ActiveRecord::Migration[6.1]
  def change
    create_table :streaming_services do |t|
      t.string :title
      t.integer :score
      t.integer :price

      t.timestamps
    end
  end
end
