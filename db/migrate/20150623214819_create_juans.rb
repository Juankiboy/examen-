class CreateJuans < ActiveRecord::Migration
  def change
    create_table :juans do |t|
      t.text :nombre
      t.text :dirrecion
      t.text :pedido

      t.timestamps null: false
    end
  end
end
