dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
    puts "List of cities : "
    somehash.each { |somekey, somevalue| puts somekey }

# Write code here
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
    somehash.each {|somekey,somevalue| return somevalue if somekey==key}
    

# Write code here
end
 
# Execution flow
loop do
    print ("Do u want to look for code by city(Y/N) : ")
    var=gets.chomp.downcase
    break if(var!="y")
    get_city_names(dial_book)
    print("Which city code u want : ")
    city=gets.chomp
    if dial_book.include?(city)
        code=get_area_code(dial_book,city)
        puts "Code for your city is #{code}"
    else
        puts "Enter proper value"
    end
 

    # Write your program execution code here
end