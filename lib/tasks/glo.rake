namespace :glo do
  
    
  desc "Ingets a CSV file and create database records"
  task :ingest, [:filename] => [:environment] do |t, args|
    require 'ingest_csv'  
    path = args[:filename] || File.join(Rails.root, 'db', 'glo_exports', '*.csv') #default to everything
    Dir.glob(path).each do |filename|
      IngestCsv.ingest(filename)      
    end
  end
  

end
