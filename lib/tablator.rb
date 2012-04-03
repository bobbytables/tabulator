module Tablator
  extend self

  autoload :Configuration, 'tablator/configuration'

  def configure(&block)
    Configuration.configure &block
  end
end
