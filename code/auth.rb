users = [
    {username:"hello" ,password: "pass1"},
    {username:"hell" ,password: "pass2"},
    {username:"he" ,password: "pass3"},
    {username:"hi" ,password: "pass4"},
]

puts "Welcome to authenticator"
25.times {print("-")}
puts()
puts "Take input and compare password"
puts "IF password is correct , get the object"
25.times {print("-")}
puts()

x = 1
while x <= 3
    print "Enter username :"
    user=gets.chomp
    
    print "Enter password :"
    pass=gets.chomp

    v=0
    users.each do 
        |u|
        if(user == u[:username] && pass== u[:password] )
            v=1
            puts "Username : #{user} and Password : #{pass}"
            break
        end
    end
    if(v==0)
        puts "WRONG WRONG"
    end

    puts "Press q to quit and press any other to continue : "
    var=gets.chomp
    break if(var=="q")
    

    x = x + 1
   
end
puts ("Excedded attempts")
