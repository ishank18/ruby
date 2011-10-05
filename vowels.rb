print "Please Enter a Text : ";
input_string = gets.chomp;
re = /[aAeEiIoOuU]{1}/;
puts input_string.gsub(re, "*");

