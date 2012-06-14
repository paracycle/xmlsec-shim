require "xmlsec-shim/version"
require 'pathname'
require 'open3'

module Xmlsec
  module Shim
    Root = Pathname.new(File.expand_path('../..', __FILE__))
    Bin  = Root.join('bin')

    # Executables = Bin.children.inject({}) { |h, p|
    #   h[p.basename.to_s.to_sym] = p.to_s
    #   h
    # }    

    class Bridge
      def self.sign(doc_file, key_file)
        binary_name = Bin.join("xmlsec1")
        o, s = Open3.capture2("#{binary_name} --sign --privkey #{key_file} #{doc_file}")
        output = o
        unless s.success?
          raise output   
        end
        output
      end
    end
  end
end
