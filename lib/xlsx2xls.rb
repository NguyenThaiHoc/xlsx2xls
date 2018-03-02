class Xlsx2xls
  def self.convert file_name
    log = ""
    if File.file? file_name
      begin
        file_name_normalize = file_name.gsub(" ",  "\\ ").gsub("(",  "\\(").gsub(")",  "\\)").gsub("-",  "\\-")
        puts command = "libreoffice --headless --convert-to xls --outdir #{file_name_normalize.split('/')[0..-2].join('/')} #{file_name_normalize}"
        log = `#{command}`
        return "#{file_name.gsub(/\.xlsx$/, "")}.xls"
      rescue => ex
        return "#{ex} #{log}"
      end
    else
      return "Error: source file could not be loaded!"
    end
  end
end
