class AddImageToPages < ActiveRecord::Migration[5.2]
  def up
    add_column :pages, :image, :string
  end
end
