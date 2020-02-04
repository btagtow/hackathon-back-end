class CreateLaunches < ActiveRecord::Migration[6.0]
  def change
    create_table :launches do |t|
      t.string :name
      t.string :date
      t.string :agency
      t.string :rocket

      t.timestamps
    end
  end
end
