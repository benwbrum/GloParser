class TxLandGrantsSpecialCollection < ActiveRecord::Base
  require 'csv'

  def pdf_url
    "http://www.glo.texas.gov/ncu/SCANDOCS/archives_webfiles/arcmaps/webfiles/landgrants/PDFs/#{control.to_s[0]}/#{control.to_s[1]}/#{control.to_s[2]}/#{control}.pdf"
  end


  def self.process(filename)
    CSV.foreach(filename, 
                { headers:           true,
                  converters:        :numeric,
                  encoding:         "CP1252",
                  header_converters: nil }) do |row|
      
      record = TxLandGrantsSpecialCollection.new
      record.fill_from_row(row)
     record.save!
    end
  end

  def fill_from_row(row)            
      row.to_hash.each do |k, v|
        if attr = translate(k)
          self[attr] = v=="NULL" ? nil : v
        end
      end
  end

  
  HEADER_TRANSLATION = {
    "txtType" => :record_type,
    "intID" => :glo_id,
    "txtClass" => :glo_class,
  }

  def translate(header)
    HEADER_TRANSLATION[header] || header.underscore.sub(/[a-z]+_/, '').to_sym
  end


end
