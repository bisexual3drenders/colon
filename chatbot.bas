dim as string user_input, user_name, file_input(1), colon_output

dim i as ushort
dim is_correct as boolean

print "<COLON> Hello I am Colon, I am here to provide you no assistance." 
print "<COLON> What is your name?" 
input "<USER>", user_name
print "<COLON> Hello "; user_name; ", it is nice to meet you." 

do
print "<";user_name;">";
input "", user_input

open "responses.txt" for input as #1

user_input=ucase( user_input)
i=1
while(i > 0)

	input #1 ,file_input(0),file_input(1)
	
	file_input(0)=ucase (file_input(0))
	
	if user_input=file_input(0)then
	colon_output=file_input(1)
	exit while
	
	elseif user_input = "GOODBYE." or user_input= "EXIT"then
	print "<COLON> Goodbye." 
	goto end_of_program
	
	
	else colon_output="I don't know."
	end if 
	i+=1
wend

close #1

print "<COLON> ";colon_output 

loop

end_of_program:
end