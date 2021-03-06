class GetIplayer < Formula
  desc "Utility for downloading TV and radio programmes from BBC iPlayer"
  homepage "https://github.com/get-iplayer/get_iplayer"
  url "https://github.com/get-iplayer/get_iplayer/archive/v3.19.tar.gz"
  sha256 "79ed21b469e6cd1e182a731752d3ea20ca2679920dea203d4dbc89e8295ee242"
  head "https://github.com/get-iplayer/get_iplayer.git", :branch => "develop"

  bottle do
    cellar :any_skip_relocation
    sha256 "f7e986f05a5f019b8b02633ddb08d074f96117ab63b580f74e0a93e9def57409" => :mojave
    sha256 "1d57e85d0b77693301564970c08fd7c8adcbb34881a93042c26c48b515222503" => :high_sierra
    sha256 "5e13cf470e8fe3d22236871841068293bed6cb6da43183838b6b696da325ce3b" => :sierra
  end

  depends_on "atomicparsley"
  depends_on "ffmpeg"
  depends_on :macos => :yosemite if OS.mac?
  depends_on "libxml2" unless OS.mac?

  resource "IO::Socket::IP" do
    url "https://cpan.metacpan.org/authors/id/P/PE/PEVANS/IO-Socket-IP-0.39.tar.gz"
    sha256 "11950da7636cb786efd3bfb5891da4c820975276bce43175214391e5c32b7b96"
  end

  resource "IO::Socket::SSL" do
    url "https://cpan.metacpan.org/authors/id/S/SU/SULLR/IO-Socket-SSL-2.059.tar.gz"
    sha256 "217debbe0a79f0b7c5669978b4d733271998df4497f4718f78456e5f54d64849"
  end

  resource "Mojolicious" do
    url "https://cpan.metacpan.org/authors/id/S/SR/SRI/Mojolicious-7.93.tar.gz"
    sha256 "00c30fc566fee0823af0a75bdf4f170531655df14beca6d51f0e453a43aaad5d"
  end

  resource "Mozilla::CA" do
    url "https://cpan.metacpan.org/authors/id/A/AB/ABH/Mozilla-CA-20180117.tar.gz"
    sha256 "f2cc9fbe119f756313f321e0d9f1fac0859f8f154ac9d75b1a264c1afdf4e406"
  end

  unless OS.mac?
    resource "Try-Tiny" do
      url "https://cpan.metacpan.org/authors/id/E/ET/ETHER/Try-Tiny-0.30.tar.gz"
      sha256 "da5bd0d5c903519bbf10bb9ba0cb7bcac0563882bcfe4503aee3fb143eddef6b"
    end

    resource "Path:Class" do
      url "https://cpan.metacpan.org/authors/id/K/KW/KWILLIAMS/Path-Class-0.33.tar.gz"
      sha256 "cd8cc6a68e2099eeb6099df6af83b4585eb0ddf6c77490d6fa97eadb09d0c677"
    end

    resource "Net::HTTP" do
      url "https://cpan.metacpan.org/authors/id/O/OA/OALDERS/Net-HTTP-6.18.tar.gz"
      sha256 "7e42df2db7adce3e0eb4f78b88c450f453f5380f120fd5411232e03374ba951c"
    end

    resource "Net::SSL" do
      url "https://cpan.metacpan.org/authors/id/N/NA/NANIS/Crypt-SSLeay-0.72.tar.gz"
      sha256 "f5d34f813677829857cf8a0458623db45b4d9c2311daaebe446f9e01afa9ffe8"
    end

    resource "HTML::Entities" do
      url "https://cpan.metacpan.org/authors/id/G/GA/GAAS/HTML-Parser-3.72.tar.gz"
      sha256 "ec28c7e1d9e67c45eca197077f7cdc41ead1bb4c538c7f02a3296a4bb92f608b"
    end

    resource "HTTP::Cookies" do
      url "https://cpan.metacpan.org/authors/id/O/OA/OALDERS/HTTP-Cookies-6.04.tar.gz"
      sha256 "0cc7f079079dcad8293fea36875ef58dd1bfd75ce1a6c244cd73ed9523eb13d4"
    end unless OS.mac?

    resource "HTTP::Date" do
      url "https://cpan.metacpan.org/authors/id/G/GA/GAAS/HTTP-Date-6.02.tar.gz"
      sha256 "e8b9941da0f9f0c9c01068401a5e81341f0e3707d1c754f8e11f42a7e629e333"
    end unless OS.mac?

    resource "HTML::Headers" do
      url "https://cpan.metacpan.org/authors/id/O/OA/OALDERS/HTTP-Message-6.18.tar.gz"
      sha256 "d060d170d388b694c58c14f4d13ed908a2807f0e581146cef45726641d809112"
    end

    resource "LWP::ConnCache" do
      url "https://cpan.metacpan.org/authors/id/O/OA/OALDERS/libwww-perl-6.20.tar.gz"
      sha256 "3cf4d1bdade592fc9dd7710403255ef2eebb075b7365cbe52fcdfc579d79b2b0"
    end

    resource "LWP::Protocol::https" do
      url "https://cpan.metacpan.org/authors/id/O/OA/OALDERS/LWP-Protocol-https-6.07.tar.gz"
      sha256 "522cc946cf84a1776304a5737a54b8822ec9e79b264d0ba0722a70473dbfb9e7"
    end

    resource "URI" do
      url "https://cpan.metacpan.org/authors/id/E/ET/ETHER/URI-1.74.tar.gz"
      sha256 "a9c254f45f89cb1dd946b689dfe433095404532a4543bdaab0b71ce0fdcdd53d"
    end

    resource "XML-LibXML" do
      url "https://cpan.metacpan.org/authors/id/S/SH/SHLOMIF/XML-LibXML-2.0132.tar.gz"
      sha256 "721452e3103ca188f5968ab06d5ba29fe8e00e49f4767790882095050312d476"
    end

    resource "XML::SAX::Exception" do
      url "https://cpan.metacpan.org/authors/id/K/KH/KHAMPTON/XML-SAX-Base-1.02.tar.gz"
      sha256 "c541861df7e70f83950afedf2058148aa9d4bd733929a869829c97833ad1600b"
    end
  end

  def install
    ENV.prepend_create_path "PERL5LIB", libexec/"lib/perl5"
    ENV["NO_NETWORK_TESTING"] = "1"

    resources.each do |r|
      r.stage do
        system "perl", "Makefile.PL", "INSTALL_BASE=#{libexec}"
        system "make", "install"
      end
    end

    inreplace ["get_iplayer", "get_iplayer.cgi"] do |s|
      s.gsub!(/^(my \$version_text);/i, "\\1 = \"#{pkg_version}-homebrew\";")
      s.gsub! "#!/usr/bin/env perl", "#!/usr/bin/perl"
    end

    bin.install "get_iplayer", "get_iplayer.cgi"
    bin.env_script_all_files(libexec/"bin", :PERL5LIB => ENV["PERL5LIB"])
    man1.install "get_iplayer.1"
  end

  test do
    output = shell_output("\"#{bin}/get_iplayer\" --refresh --refresh-include=\"BBC None\" --quiet dontshowanymatches 2>&1")
    assert_match "get_iplayer #{pkg_version}-homebrew", output, "Unexpected version"
    assert_match "INFO: 0 matching programmes", output, "Unexpected output"
    assert_match "INFO: Indexing tv programmes (concurrent)", output,
                         "Mojolicious not found"
  end
end
