class CreateAbrecs < ActiveRecord::Migration
  def change
    create_table :abrecs do |t|
      t.string :org
      t.string :serv
      t.string :office
      t.string :position
      t.string :runame
      t.string :rusurname
      t.string :rufname
      t.string :roname
      t.string :rosurname
      t.string :rofname
      t.string :tel
      t.string :mtel
      t.string :rtel
      t.string :email
      
      
      t.timestamps null: false
    end
  end
end
