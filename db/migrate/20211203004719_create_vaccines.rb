class CreateVaccines < ActiveRecord::Migration[6.1]
  def change
    create_table :vaccines do |t|
      t.string :title
      t.date :dose1_date
      t.date :dose2_date
      t.string :vac_image

      t.timestamps
    end
  end
end
