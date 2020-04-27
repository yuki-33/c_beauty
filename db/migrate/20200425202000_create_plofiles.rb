class CreatePlofiles < ActiveRecord::Migration[6.0]
  def change
    create_table :plofiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :tel
      t.string :status
      t.integer :user_id

      t.timestamps
    end
  end
end
