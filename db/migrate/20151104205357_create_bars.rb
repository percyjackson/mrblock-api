class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :publicidad

      t.timestamps null: false
    end
  end
end
