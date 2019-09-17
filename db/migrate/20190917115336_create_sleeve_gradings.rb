class CreateSleeveGradings < ActiveRecord::Migration[5.2]
  def change
    create_table :sleeve_gradings do |t|
      t.string :name
      t.string :text

      t.timestamps
    end
  end
end
