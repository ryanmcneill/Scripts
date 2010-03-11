pl_output = File.new("apl.txt", "a+")
and_output = File.new("and.txt", "a+")
ajr_output = File.new("ajr.txt", "a+")
acd_output = File.new("acd.txt", "a+")
aud_output = File.new("aud.txt", "a+")
tu2_output = File.new("tu2.txt", "a+")
error_output = File.new("error.txt", "a+")


d = Dir.new('C:/Documents and Settings/064470/Desktop/PropertyRollsTest/home/ftp/pub/opengov/ptscad/2009')

no_insert = 0

d.each do |file_in|
  puts "scanning #{file_in}"
  error_output.syswrite("#{file_in}\n")
  if file_in =~ /^ptscad\d\d\d$/
    puts "proper file name"
    input = File.open("C:/Documents and Settings/064470/Desktop/PropertyRollsTest/home/ftp/pub/opengov/ptscad/2009/" + "#{file_in}", "r")
    puts "successfully opened #{file_in}!"
    input.each do |line|
      if line =~ /^APL.+\n$/
        apl_output.syswrite(line)
      elsif line =~ /^AND.+\n$/
        and_output.syswrite(line)
      elsif line =~ /^AJR.+\n$/
        ajr_output.syswrite(line)
      elsif line =~ /^ACD.+\n$/
        acd_outputngs/064470/Desktop/PropertyRollsTest/home/ftp/pub/opengov/ptscad/2009')

no_insert = 0

d.each do |file_in|
  puts "scanning #{file_in}"
  error_output.syswrite("#{file_in}\n")
  if file_in =~ /^ptscad\d\d\d$/
    puts "proper file name"
    input = File.open("C:/Documents and Settings/064470/Desktop/PropertyRollsTest/home/ftp/pub/roper file name"
  end
puts "#{no_insert} lines were not inserted."
end
