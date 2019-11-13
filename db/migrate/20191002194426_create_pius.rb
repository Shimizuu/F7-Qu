class CreatePius < ActiveRecord::Migration[6.0]
  def change
    create_table :pius do |t|

      t.timestamps
    end
  end
end
