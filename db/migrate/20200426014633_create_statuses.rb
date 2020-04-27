class CreateStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.string :visiter
      t.string :student
      t.string :worker
      t.string :resident
      t.string :other

      t.timestamps
    end
  end
end
