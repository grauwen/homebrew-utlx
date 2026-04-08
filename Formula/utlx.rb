class Utlx < Formula
  desc "Format-agnostic functional transformation language - converts between XML, JSON, CSV, YAML, and more"
  homepage "https://github.com/grauwen/utl-x"
  version "1.0.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/grauwen/utl-x/releases/download/v1.0.0/utlx-macos-arm64.bin"
      sha256 "743c1aeb8968461d548cef69a6909f46e0b3cd8ed156f1bbf06d2ef202a7cdec"

      def install
        bin.install "utlx-macos-arm64.bin" => "utlx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/grauwen/utl-x/releases/download/v1.0.0/utlx-linux-x64.bin"
      sha256 "50fc161a772ea546a5cf789a069ad580ed35db5a6c3a2aacdd1efd9f13facd58"

      def install
        bin.install "utlx-linux-x64.bin" => "utlx"
      end
    end
  end

  test do
    assert_match "UTL-X CLI v1.0.0", shell_output("#{bin}/utlx --version")
  end
end
