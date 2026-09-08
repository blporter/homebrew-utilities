class Renamey < Formula
  desc "Use local AI models to bulk rename media files into clean Title Case"
  homepage "https://github.com/blporter/Renamey"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/blporter/Renamey/releases/download/v1.0.0/renamey-v1.0.0-darwin-arm64.zip"
      sha256 "sha256:35da6db952c6295104a8753193438f2b321971f70c7b920f52b04a26dc555546"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"renamey"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/renamey --help 2>&1", 0)
  end
end
