class AddNumberToFizzbuzz < ActiveRecord::Migration
  def change
    add_column :fizzbuzzs, :number, :integer
  end
end
