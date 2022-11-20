class CreateLogs < ActiveRecord::Migration[7.0]
  def change
    create_table :logs do |t|
      t.date :data_de_aprovacao
      t.happened :timestamps

      t.timestamps
    end
  end
end
