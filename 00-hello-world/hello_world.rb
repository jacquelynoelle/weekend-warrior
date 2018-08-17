print "Enter your name: "
user_name = gets.chomp

# Version with keyword argument that fails test:
# def hello_world(name: "World")
#   if name.empty?
#     return hello_world()
#   else
#     return "Hello, #{name}!"
#   end
# end

def hello_world(name = "")
  return name == "" ? "Hello, World!" : "Hello, #{name}!"
end

puts hello_world(user_name)
