require_relative '../config/environment'
require 'pry'



cli = CommandLineInterface.new
cli.greet_user
cli.menu(user)
# cli.greet



# Pry.start
# 0