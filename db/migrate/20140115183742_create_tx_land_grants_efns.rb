class CreateTxLandGrantsEfns < ActiveRecord::Migration
  def change
    create_table :tx_land_grants_efns do |t|
      t.string :field_note
      t.integer :control
      t.string :pdf_exists
      t.string :file_no
      t.string :record_type

      t.timestamps
    end
  end
end
