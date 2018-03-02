class Xlsx2xls
  def self.convert file_name
    file_name = file_name.gsub(" ",  "\\ ").gsub("(",  "\\(").gsub(")",  "\\)").gsub("-",  "\\-")
    puts command = "libreoffice --headless --convert-to xls --outdir #{file_name.split('/')[0..-2].join('/')} #{file_name}"
    system command
  end
end
