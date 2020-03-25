class CreateItemms < ActiveRecord::Migration[5.0]
  def change
    create_table :itemms do |t|
      t.string :state
      t.string :capital

      t.timestamps
    end
  end
end
