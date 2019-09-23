require_relative './dance_module.rb'
require_relative './class_methods_module.rb'

class Kid
  include Dance #includes the dance_module.rb as instance methods
  extend MetaDancing
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
end