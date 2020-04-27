class ChangePlofileToProfile < ActiveRecord::Migration[6.0]
  def change
    rename_table :plofiles, :profiles
  end
end
