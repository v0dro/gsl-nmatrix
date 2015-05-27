begin
  require 'nmatrix'
rescue LoadError => e
  puts "Install nmatrix #{e}"
end

begin
  require "gsl/#{RUBY_VERSION[/\d+.\d+/]}/gsl_native"
rescue LoadError => err
  raise if err.respond_to?(:path) && !err.path
  if File.exist?(File.expand_path(%q{../gsl/gsl_native.so}, __FILE__))
    require 'gsl/gsl_native.so'
  else
    require 'gsl_native'
  end
end

require 'gsl/version'
require 'gsl/oper'
