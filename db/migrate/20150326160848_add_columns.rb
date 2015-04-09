class AddColumns < ActiveRecord::Migration
  def change
    add_column :abrecs, :russerv, :string
    add_column :abrecs, :ruoffice, :string
    add_column :abrecs, :ruorg, :string
  end
end
