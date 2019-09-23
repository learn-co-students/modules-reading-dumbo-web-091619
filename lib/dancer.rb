require_relative './class_methods_module.rb'
require_relative './dance_module.rb'
require_relative './fancy_dance.rb'
class Dancer
  #include Dance #includes the dance_module.rb as instance methods
  # extend MetaDancing #includes class_mehtods_module as class methods

  extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
  attr_accessor :name
 
  def initialize(name)
    @name = name
  end
end