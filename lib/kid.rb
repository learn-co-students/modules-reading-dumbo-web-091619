require_relative './dance_module.rb'
require_relative './class_methods_module.rb'
require_relative './fancy_dance.rb'
class Kid
    include Dance, FancyDance::InstanceMethods
    extend MetaDancing, FancyDance::ClassMethods
    #^^
    #If we use `include` keyword, we allow our classes to use all of the methods of
    #the included module as *instance* methods. We'll talk about how to lend a module's
    #methods as *class* methods in a minute.
    #^^
    attr_accessor :name

    def initialize(name)
        @name =name
    end

end