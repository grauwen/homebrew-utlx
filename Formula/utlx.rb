class Utlx < Formula
  desc "Format-agnostic functional transformation language - converts between XML, JSON, CSV, YAML, and more"
  homepage "https://github.com/grauwen/utl-x"
  version "1.2.1"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/grauwen/utl-x/releases/download/v1.2.1/utlx-macos-arm64"
      sha256 "7157ccbd3332f915097f65df4bbf80c8ece9a21e596cf1c76c6a553d3fcea3b8"

      def install
        bin.install "utlx-macos-arm64" => "utlx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/grauwen/utl-x/releases/download/v1.2.1/utlx-linux-x64"
      sha256 "473adad3ad05ee548bc3ab2302db740357e611784b241e1fcb84f81e44ac49a8"

      def install
        bin.install "utlx-linux-x64" => "utlx"
      end
    end
  end

  test do
    assert_match "UTL-X CLI v1.2.1", shell_output("#{bin}/utlx --version")
  end
end
