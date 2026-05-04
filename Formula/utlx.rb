class Utlx < Formula
  desc "Format-agnostic functional transformation language - converts between XML, JSON, CSV, YAML, and more"
  homepage "https://github.com/grauwen/utl-x"
  version "1.1.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/grauwen/utl-x/releases/download/v1.1.0/utlx-macos-arm64"
      sha256 "1b3fb9070ef14469bced2d27dba4fb48b7561e2be854943fc7b4ef6be02fb9aa"

      def install
        bin.install "utlx-macos-arm64" => "utlx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/grauwen/utl-x/releases/download/v1.1.0/utlx-linux-x64"
      sha256 "1350615e7e96518a48b98f8dce1523517f54dd57ac2c79b4adc44d0466a37179"

      def install
        bin.install "utlx-linux-x64" => "utlx"
      end
    end
  end

  test do
    assert_match "UTL-X CLI v1.1.0", shell_output("#{bin}/utlx --version")
  end
end
