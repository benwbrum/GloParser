class GloRecord < ActiveRecord::Base
  belongs_to :glo_collection
  
  def download_pdf
    system "wget -O #{target_file} \"#{pdf_url}\""
  end
  
  
  def target_file
    File.join(Rails.root, 'tmp', 'pdfs', File.basename(pdf_url))
  end
  
  def image_dir
    File.join(Rails.root, 'tmp', 'images', file_stem)
  end
  
  def file_stem
    File.basename(pdf_url).sub(File.extname(pdf_url), '')
  end
  
  def pdf_exists?
    File.exists? target_file
  end
  
  def extract_images
    Dir.mkdir(image_dir) unless Dir.exists?(image_dir)
    p "pdfimages -j -p #{target_file} #{File.join(image_dir, file_stem)}"
    system "pdfimages -j -p #{target_file} #{File.join(image_dir, file_stem)}"
  end
  
end
