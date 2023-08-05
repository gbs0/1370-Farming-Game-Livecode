
require 'cli/ui'
require_relative "farm"

@farm = Farm.new

def main
  loop do
    puts "Welcome to Farming Game! 🐷"
    puts "Farm Quantity: 🌽: #{ @farm.corn.quantity } | •: #{ @farm.rice.quantity } | 💦: #{ @farm.water.quantity } "
    CLI::UI::Prompt.ask("What you want to do today? (Crop Corn | Crop Rice | Water Plants)") do |handler|
      handler.option('🌽 Crop Corn')  { |selection| dispatch("1")}
      handler.option('• Crop Rice')   { |selection| dispatch("2") }
      handler.option('💦 Water')      { |selection| dispatch("3") }
      handler.option('Quit')          { |selection| dispatch("0") }
    end
  end
end

def dispatch(choice)
  case choice
    when "1"
      puts @farm.corn.crop!(10)
    when "2"
      puts @farm.rice.crop!(5)
    when "3"
      puts @farm.water!
    when "0"
      puts "---------------------------"
      puts "🌽 - $5/kg ---------- #{@farm.corn.stock}/kg"
      puts "• - $3/kg ---------- #{@farm.rice.stock}/kg"
      exit
    else
      puts "Invalid Choice! Choose other option to continue."
  end
end

main
