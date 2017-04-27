class CreateBubbletea < ActiveRecord::Migration[5.0]
  def change
    create_table :bubbletea do |t|
      t.string :name
      t.string :flavour
      t.string :bubbles
      t.string :sugar
      t.string :ice
      t.string :extras
    end
  end
end
