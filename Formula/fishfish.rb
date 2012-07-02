require 'formula'

class Fishfish < Formula
  homepage 'http://ridiculousfish.com/shell/'
  head 'git://github.com/fish-shell/fish-shell.git'
  url 'http://ridiculousfish.com/shell/files/fishfish.tar.gz'
  md5 'ebe5fe17f6925b9142aadc8ebae5fba1'
  version '1.23.1'

  depends_on 'doxygen' => :build
  depends_on 'autoconf' => :build

  def install
    system "autoconf"
    system "./configure", "--prefix=#{prefix}", "--without-xsel"
    system "make install"
  end

end
