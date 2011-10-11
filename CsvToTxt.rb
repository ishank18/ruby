file_lines = IO.readlines("csv.txt")
developers = ""
designers = ""
file_lines.each do |line|
	temp = line.split(",")
	if(temp[2] == " Developer\n")
		developers += "#{temp[0]} (EmpId:#{temp[1]})\n" 
	else
		designers += "#{temp[0]} (EmpId:#{temp[1]})\n" 
	end
end
op_string = "Designers:\n" + designers + "\nDevelopers:\n" + developers
op_file = File.new("output.txt", "w")
op_file.puts op_string
op_file.close

