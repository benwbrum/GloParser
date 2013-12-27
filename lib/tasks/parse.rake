
desc "Process a GLO land grant database page file or directory specified thus: process_freereg_csv[../*/*.csv]"
task :parse, [:pattern] => [:environment] do |t, args| 
  # if we ever need to switch this to multiple files, see
  # http://stackoverflow.com/questions/3586997/how-to-pass-multiple-parameters-to-rake-task
  #print "Processing file passed in rake process_freereg_csv[filename]=#{args[:file]}\n" 
  filenames = Dir.glob(args[:pattern])
  filenames.sort.each do |fn|
    puts "parsing #{fn}"
    parse(fn)
  end
  puts "Task complete."
end


def parse(filename)
  doc = Nokogiri::HTML(File.read(filename))
  
  # get the contents table, ignoring 0 and 2 which contain nav buttons
  table = doc.xpath('//div[@id="standard"]/table')[1]
  
  table.xpath('./tbody/tr').each do |row|
    cells = row.xpath('./td')
    if cells[1] && cells[1].xpath('./a').count > 0
      abstract_url = cells[1].xpath('./a').first.attr('href')
      glo_id = abstract_url.match(/\d+$/).to_s
  
      collection_name = cells[2].text
      file_url = cells[3].xpath('./a').first.attr('href')
      file_number = cells[3].xpath('./a').first.text
      grantee = cells[4].text
      patentee = cells[5].text
  
      pdf_url = cells[6].xpath('./b/a').first.attr('href')
      print "Parsed #{glo_id}, #{file_url}\n"
    end
  end
  
#  binding.pry
  
end
