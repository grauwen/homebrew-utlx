class Utlx < Formula
  desc "Format-agnostic functional transformation language - converts between XML, JSON, CSV, YAML, and more"
  homepage "https://github.com/grauwen/utl-x"
  version "1.2.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/grauwen/utl-x/releases/download/v1.2.0/utlx-macos-arm64"
      sha256 "a42edb03a6c3b94fc12ad7d481fc8ab21e71e6e93397945a9ee2aa666cfe3235"

      def install
        bin.install "utlx-macos-arm64" => "utlx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/grauwen/utl-x/releases/download/v1.2.0/utlx-linux-x64"
      sha256 "c30557aa037de48f6e8eb8ac62a974271e2c8b6a3fa664069660d1f8e9cf51ed"

      def install
        bin.install "utlx-linux-x64" => "utlx"
      end
    end
  end

  test do
    assert_match "UTL-X CLI v1.2.0", shell_output("#{bin}/utlx --version")
  end
end
