class Utlx < Formula
  desc "Format-agnostic functional transformation language - converts between XML, JSON, CSV, YAML, and more"
  homepage "https://github.com/grauwen/utl-x"
  version "1.0.1"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/grauwen/utl-x/releases/download/v1.0.1/utlx-macos-arm64.bin"
      sha256 "0e3f6569ef3bce9030db41be3d9bcc2865a69169880eea8bff92413c0abd32bd"

      def install
        bin.install "utlx-macos-arm64.bin" => "utlx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/grauwen/utl-x/releases/download/v1.0.1/utlx-linux-x64.bin"
      sha256 "48d4030c4999152df0fde0efdeda87f0b4f9e651d49b5db7f48e6532e9f4f2b1"

      def install
        bin.install "utlx-linux-x64.bin" => "utlx"
      end
    end
  end

  test do
    assert_match "UTL-X CLI v1.0.1", shell_output("#{bin}/utlx --version")
  end
end
