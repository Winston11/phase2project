class CreateSelections < ActiveRecord::Migration[6.1]
  def change
    create_table :selections do |t|
      t.string :title
      t.string :quote

      t.timestamps
    end
  end
end
