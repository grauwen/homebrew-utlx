class Utlx < Formula
  desc "Format-agnostic functional transformation language - converts between XML, JSON, CSV, YAML, and more"
  homepage "https://github.com/grauwen/utl-x"
  version "1.0.2"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/grauwen/utl-x/releases/download/v1.0.2/utlx-macos-arm64"
      sha256 "878ac28a22df9a6b56c732a7eca7da8d27c957371db807451460d043b3b44641"

      def install
        bin.install "utlx-macos-arm64" => "utlx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/grauwen/utl-x/releases/download/v1.0.2/utlx-linux-x64"
      sha256 "92e61458697c07a504641c7c86ab6d86d1f242cca53575c6be85b2cfb102077e"

      def install
        bin.install "utlx-linux-x64" => "utlx"
      end
    end
  end

  test do
    assert_match "UTL-X CLI v1.0.2", shell_output("#{bin}/utlx --version")
  end
end
