class Utlx < Formula
  desc "Format-agnostic functional transformation language - converts between XML, JSON, CSV, YAML, and more"
  homepage "https://github.com/grauwen/utl-x"
  version "1.2.2"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/grauwen/utl-x/releases/download/v1.2.2/utlx-macos-arm64"
      sha256 "9e344d48448c64961bf63226524fc8e14db6777e2ca8fc2c02888f024084fb0b"

      def install
        bin.install "utlx-macos-arm64" => "utlx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/grauwen/utl-x/releases/download/v1.2.2/utlx-linux-x64"
      sha256 "fd2d2bf81a051af83f774243366d53a65158742cd36de29a372158123cec3336"

      def install
        bin.install "utlx-linux-x64" => "utlx"
      end
    end
  end

  test do
    assert_match "UTL-X CLI v1.2.2", shell_output("#{bin}/utlx --version")
  end
end
