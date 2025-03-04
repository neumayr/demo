require_relative "demo/version"

module Demo
  module_function # all instance methods are available on the module (class) level

  def hi
    puts "Hi from Demo • v#{VERSION}"
  end

  def hello
    puts "Hello 🌍 - #{Time.now.ceil}"
  end
end

Demo.hi
Demo.hello
