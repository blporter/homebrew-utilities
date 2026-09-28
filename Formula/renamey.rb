class Renamey < Formula
  desc "Use local AI models to bulk rename media files into clean Title Case"
  homepage "https://github.com/blporter/Renamey"
  url "https://github.com/blporter/Renamey/releases/download/v1.1.0/renamey-v1.1.0-darwin-arm64.zip"
  sha256 "6e5b540b853e4786b6a8e30d08e6fc02f5e9ef7e2a33ea8571c889a28c421b73"

  bottle do
    root_url "https://github.com/blporter/homebrew-utilities/releases/download/renamey-1.1.0"
    sha256 cellar: :any, arm64_tahoe: "cb43c4e0556ca756c203e0aed6a398cbd77b292f2cc57ed2d7cb2da91712f18d"
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
