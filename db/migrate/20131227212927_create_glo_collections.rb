class CreateGloCollections < ActiveRecord::Migration
  def change
    create_table :glo_collections do |t|
      t.string :name

      t.timestamps
    end
  end
end
