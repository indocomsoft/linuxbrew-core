class Wabt < Formula
  desc "Web Assembly Binary Toolkit"
  homepage "https://github.com/WebAssembly/wabt"
  url "https://github.com/WebAssembly/wabt/archive/1.0.8.tar.gz"
  sha256 "ffaad6de5cfbc5be0c7e78ccd4c0b44bbd1e59eaa38cf50f4245ca04dbda883e"

  bottle do
    root_url "https://linuxbrew.bintray.com/bottles"
    cellar :any_skip_relocation
    sha256 "9a26547c3ed9c126488363e48108ca4a78c5a7dfe3168c7a73451428d1f91941" => :mojave
    sha256 "fbeea492743acdfd77f6c660e9893bc15a0c72f671ce63164b91198a7da8dc60" => :high_sierra
    sha256 "1193a22956cbad81a9581a023cf8a9db9ef59cb5f1c2c57fabca893566e96a3b" => :sierra
    sha256 "10e1c208ed8d7bb23ac5374f9971dc0b59b0a5d0fdadbfb0f09671836e23eb82" => :x86_64_linux
  end

  depends_on "cmake" => :build
  depends_on "python@2" => :build unless OS.mac?

  def install
    # Reduce memory usage for CircleCI.
    ENV["MAKEFLAGS"] = "-j8" if ENV["CIRCLECI"]

    mkdir "build" do
      system "cmake", "..", "-DBUILD_TESTS=OFF", *std_cmake_args
      system "make", "install"
    end
  end

  test do
    (testpath/"sample.wast").write("(module (memory 1) (func))")
    system "#{bin}/wat2wasm", testpath/"sample.wast"
  end
end
