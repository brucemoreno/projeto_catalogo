class CreateFilmes < ActiveRecord::Migration[7.0]
  def change
    create_table :filmes do |t|
      t.string :titulo
      t.date :ano_de_lançamento
      t.references :ator, null: false, foreign_key: true
      t.references :criticas, null: false, foreign_key: true

      t.timestamps
    end
  end
end
