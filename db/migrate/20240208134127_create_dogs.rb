class CreateDogs < ActiveRecord::Migration[7.1]
  def change
    create_table :dogs do |t|
      t.string :name
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end