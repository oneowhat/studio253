class CreateFinishes < ActiveRecord::Migration
  def change
    create_table :finishes do |t|
      t.string :title
      t.text :description
      t.decimal :price_per_foot

      t.timestamps
    end
  end
end
