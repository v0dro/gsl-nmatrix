begin
  require 'nmatrix'
rescue LoadError => e
  puts "Install nmatrix #{e}"
end

begin
  require "gsl/#{RUBY_VERSION[/\d+.\d+/]}/gsl_native"
rescue LoadError => err
  raise if err.respond_to?(:path) && !err.path
  require 'gsl_native'    
end

require 'gsl/version'
require 'gsl/oper'
