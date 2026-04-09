class Utlx < Formula
  desc "Format-agnostic functional transformation language - converts between XML, JSON, CSV, YAML, and more"
  homepage "https://github.com/grauwen/utl-x"
  version "1.0.1"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/grauwen/utl-x/releases/download/v1.0.1/utlx-macos-arm64.bin"
      sha256 "2d103cd4cbf11e472a79ee6ff09024cef6c0ef2aaa3088b0cb793162abee3a0a"

      def install
        bin.install "utlx-macos-arm64.bin" => "utlx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/grauwen/utl-x/releases/download/v1.0.1/utlx-linux-x64.bin"
      sha256 "d4f269a25af625c767adf6d101c2b9a943bcce2e5e463de8fd8ab657bc5ce5ba"

      def install
        bin.install "utlx-linux-x64.bin" => "utlx"
      end
    end
  end

  test do
    assert_match "UTL-X CLI v1.0.1", shell_output("#{bin}/utlx --version")
  end
end
