class IngestCsv
  require "#{Rails.root}/app/models/tx_land_grants_efn"
  require "#{Rails.root}/app/models/tx_land_grants_special_collection"
  
  def self.ingest(filename)
    print "Ingesting #{filename}\n"
    if filename.match(/EFN/)
      TxLandGrantsEfn.process(filename)
    else
      TxLandGrantsSpecialCollection.process(filename)
    end
  end


  
end