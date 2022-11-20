class CreateCriticas < ActiveRecord::Migration[7.0]
  def change
    create_table :criticas do |t|
      t.text :comentario
      t.string :filme

      t.timestamps
    end
  end
end
