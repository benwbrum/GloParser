class TxLandGrantsEfn < ActiveRecord::Base
  require 'csv'

  def self.process(filename)
    print "#{self.class.name} processing #{filename}\n"
    CSV.foreach(filename, 
                { headers:           true,
                  converters:        :numeric,
                  header_converters: nil }) do |row|
      
      record = TxLandGrantsEfn.new
      record.fill_from_row(row)
      record.save!
    end
  end

  def fill_from_row(row)            
      row.to_hash.each do |k, v|
        if attr = translate(k)
          self[attr] = v
        end
      end
#      binding.pry    
  end

  
  HEADER_TRANSLATION = {
    "txtType" => :record_type

  }

  def translate(header)
    HEADER_TRANSLATION[header] || header.underscore.sub(/[a-z]+_/, '').to_sym
  end


end
