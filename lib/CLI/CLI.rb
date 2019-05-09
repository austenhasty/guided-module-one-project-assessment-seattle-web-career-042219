module CLI
  name = ""
  location = ""

  def self.get_name
    puts "Please enter your full name:"
    gets.chomp
  end

  def self.get_location
    puts "Please enter an address to center our searches around"
    gets.chomp
  end

  def self.name_in_database?(name)
    User.find_by(name: name) ? true : false
  end

  def self.fill_profile(name)
    location = get_location

    User.create(name: name, location: location)
  end

  def self.welcome
    system "clear"
    puts "Welcome to Dinner Decision, the no nonsense answer to what you're going to eat tonight."
    name = get_name

    name_in_database?(name) ? puts("Hello #{name}") : fill_profile(name)
    binding.pry
  end
end
