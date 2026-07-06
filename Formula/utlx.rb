class Utlx < Formula
  desc "Format-agnostic functional transformation language - converts between XML, JSON, CSV, YAML, and more"
  homepage "https://github.com/grauwen/utl-x"
  version "1.3.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/grauwen/utl-x/releases/download/v1.3.0/utlx-macos-arm64"
      sha256 "7358678c78180b30cdc72b83dbf47ff58eed272919719e929cd7cd471eb54d7d"

      def install
        bin.install "utlx-macos-arm64" => "utlx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/grauwen/utl-x/releases/download/v1.3.0/utlx-linux-x64"
      sha256 "badbd27b46f5329988dfbd099cf289f442e633beaa7aa076f7e7f0cf4958efba"

      def install
        bin.install "utlx-linux-x64" => "utlx"
      end
    end
  end

  test do
    assert_match "UTL-X CLI v1.3.0", shell_output("#{bin}/utlx --version")
  end
end
