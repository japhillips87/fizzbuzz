class CreateFizzbuzzs < ActiveRecord::Migration
  def change
    create_table :fizzbuzzs do |t|

      t.timestamps null: false
    end
  end
end
