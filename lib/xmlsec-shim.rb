require "xmlsec-shim/version"
require 'pathname'

module Xmlsec
  module Shim
    Root = Pathname.new(File.expand_path('../..', __FILE__))
    Bin  = Root.join('bin')

    # Executables = Bin.children.inject({}) { |h, p|
    #   h[p.basename.to_s.to_sym] = p.to_s
    #   h
    # }    

    def sign(doc_file, key_file)
      binary_name = Bin.join("xmlsec1")
      output = `#{binary_name} --sign --privkey-pem #{keyfile} #{doc_file}`
      unless $?.success?
        raise Exception   
      end
      output
    end
  end
end
