class AddExpiredAtToToDos < ActiveRecord::Migration[5.2]
  def change
    add_column :to_dos, :expired_at, :datetime
  end
end
