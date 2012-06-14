require 'mkmf'

root = File.expand_path('../../..', __FILE__)
puts("Path is #{root}")

Dir.chdir(File.join(root, 'vendor/xmlsec1-1.2.18')) do
  puts("Building vendor xmlsec")
  system "./configure", "--prefix=#{root}", "--without-libxslt", "--enable-static-linking", "--disable-shared", "--disable-crypto-dl", "--disable-apps-crypto-dl"
  system "make"
  system "make install"
  system "make clean"
end

create_makefile 'xmlsec'
