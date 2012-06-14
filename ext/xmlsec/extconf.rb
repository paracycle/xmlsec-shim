require 'mkmf'

root = File.expand_path('../../..', __FILE__)
puts("Path is #{root}")

Dir.chdir(File.join(root, 'vendor/xmlsec')) do
  puts("Building vendor xmlsec")
  system "./configure", "--prefix=#{root}", "--without-libxslt"
  system "make"
  system "make install"
  system "make clean"
end

create_makefile 'xmlsec'
