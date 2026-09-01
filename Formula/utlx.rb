class Utlx < Formula
  desc "Format-agnostic functional transformation language - converts between XML, JSON, CSV, YAML, and more"
  homepage "https://github.com/grauwen/utl-x"
  version "1.3.1"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/grauwen/utl-x/releases/download/v1.3.1/utlx-macos-arm64"
      sha256 "104716e49a85a4d1485d64eec71011c27143e7e795eddff613dea36f13153fb6"

      def install
        bin.install "utlx-macos-arm64" => "utlx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/grauwen/utl-x/releases/download/v1.3.1/utlx-linux-x64"
      sha256 "d65e64cd241621dae7f1fb8633cc53da949b0a0c591860e798c699583542a013"

      def install
        bin.install "utlx-linux-x64" => "utlx"
      end
    end
  end

  test do
    assert_match "UTL-X CLI v1.3.1", shell_output("#{bin}/utlx --version")
  end
end
