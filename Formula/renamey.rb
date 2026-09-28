class Renamey < Formula
  desc "Use local AI models to bulk rename media files into clean Title Case"
  homepage "https://github.com/blporter/Renamey"
  url "https://github.com/blporter/Renamey/releases/download/v1.1.0/renamey-v1.1.0-darwin-arm64.zip"
  sha256 "6e5b540b853e4786b6a8e30d08e6fc02f5e9ef7e2a33ea8571c889a28c421b73"

  bottle do
    root_url "https://github.com/blporter/homebrew-utilities/releases/download/renamey-1.0.0"
    sha256 cellar: :any, arm64_tahoe: "bbf7155e48c06848da8f8d3c5c54de50ef57e5a38c7e75411e7c2d270099519c"
  end

  depends_on arch: :arm64
  depends_on :macos

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"renamey"
  end

  test do
    assert_match "usage: renamey", shell_output("#{bin}/renamey --help")
  end
end
