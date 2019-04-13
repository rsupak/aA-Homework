#!/usr/bin/env ruby

def say_hello(name)
    puts "Hey there, #{name}!"
end

if $PROGRAM_NAME == __FILE__
    print "What is your name? "
    name = gets.chomp
    say_hello(name)
end