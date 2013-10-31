class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :year
      t.references :country, index: true

      t.timestamps
    end
  end
end
