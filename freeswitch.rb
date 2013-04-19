require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Freeswitch < Formula
  homepage 'http://www.freeswitch.org'
  url 'git://git.freeswitch.org/freeswitch', :using => :git, :tag => 'v1.5.0'
  version '1.5.0'

  depends_on 'autoconf'
  depends_on 'automake'
  depends_on 'libtool'
  depends_on 'pkg-config'
  depends_on 'jpeg'

  def install
    system "./bootstrap.sh"
    system "./configure", "--disable-debug", "--disable-dependency-tracking",
                          "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test freeswitch`.
    system "false"
  end
end
