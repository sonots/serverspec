module Serverspec
  module Type
    class Base
      def initialize(name=nil)
        @name = name
      end

      def to_s
       type = self.class.name.split(':')[-1]
        %Q!#{type} "#{@name}"!
      end

      # For test purpose of Serverspec.configuration
      def command
        cmd = backend.build_command('command')
        backend.add_pre_command(cmd)
      end
    end
  end
end
