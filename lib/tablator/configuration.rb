module Tablator
  class Configuration
    OPTIONS = %w(table_class thead_class th_class tbody_class tr_class td_class)

    def self.create_options
      OPTIONS.each do |option|
        option = option.to_sym

        self.instance_eval <<-RUBY, __FILE__, __LINE__+1
          def #{option}(value=nil)
            @#{option.to_s} = value if value
            @#{option.to_s}
          end
        RUBY
      end

      OPTIONS
    end

    def self.configure(&block)
      block.call(self)

      true
    end
  end
end