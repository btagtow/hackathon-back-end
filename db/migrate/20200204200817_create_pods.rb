class CreatePods < ActiveRecord::Migration[6.0]
  def change
    create_table :pods do |t|
      t.string :title
      t.string :image_url
      t.string :pod_url
      t.string :date
      t.string :description

      t.timestamps
    end
  end
end
