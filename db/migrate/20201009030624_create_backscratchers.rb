class CreateBackscratchers < ActiveRecord::Migration[6.0]
  def change
    create_table :backscratchers do |t|
      t.string :item_name
      t.string :item_description
      # t.text :item_size, array: true, default: []
      t.text :item_size, array: true, default: [].to_yaml
      t.string :item_cost

      t.timestamps
    end
  end
end
