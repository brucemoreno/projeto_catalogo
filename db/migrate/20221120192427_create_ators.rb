class CreateAtors < ActiveRecord::Migration[7.0]
  def change
    create_table :ators do |t|
      t.string :nome
      t.date :ano_de_nascimento
      t.string :email

      t.timestamps
    end
  end
end
