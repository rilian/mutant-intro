$:.unshift File.expand_path("../lib", __FILE__)

require 'thor'
require 'mutant'

class Default < Thor
  desc 'mutant [NAMESPACE]', 'Run mutation tests for NAMESPACE'
  def mutant(namespace=nil)
    Mutant::CLI.run(%W(-I lib -r libclub --rspec-dm2 ::Libclub#{namespace}))
  end
end