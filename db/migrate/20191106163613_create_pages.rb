class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :text
      t.references :comic, foreign_key: true

      t.timestamps
    end
  end
end
