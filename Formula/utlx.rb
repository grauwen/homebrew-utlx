class Utlx < Formula
  desc "Format-agnostic functional transformation language - converts between XML, JSON, CSV, YAML, and more"
  homepage "https://github.com/grauwen/utl-x"
  version "1.1.0"
  license "AGPL-3.0-only"

  on_macos do
    on_arm do
      url "https://github.com/grauwen/utl-x/releases/download/v1.1.0/utlx-macos-arm64"
      sha256 "bafdb45589ff0f24f091e05b4c059a36d8973dd43ba19790a03c57b61f85855a"

      def install
        bin.install "utlx-macos-arm64" => "utlx"
      end
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/grauwen/utl-x/releases/download/v1.1.0/utlx-linux-x64"
      sha256 "1a545ae48d0f9ba7f2ab8155ee8480a1457438183219b8c491fdd3fa170f9fe9"

      def install
        bin.install "utlx-linux-x64" => "utlx"
      end
    end
  end

  test do
    assert_match "UTL-X CLI v1.1.0", shell_output("#{bin}/utlx --version")
  end
end
