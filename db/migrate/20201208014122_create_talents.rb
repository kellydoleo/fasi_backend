class CreateTalents < ActiveRecord::Migration[6.0]
  def change
    create_table :talents do |t|
      t.string :name
      t.string :email
      t.string :image_url
      t.string :description
      t.string :work_url
      t.string :work_image_url

      t.timestamps
    end
  end
end
