class Tilo < Formula
  desc "Tiled terminal editor"
  homepage "https://github.com/tilo-editor/tilo"
  version "0.2.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tilo-editor/tilo/releases/download/v0.2.2/tilo_Darwin_arm64.tar.gz"
      sha256 "684ce0fbb5deebb33d6f75194b3bf67658f5959c58fbd3378df4b3ada417863e"
    else
      url "https://github.com/tilo-editor/tilo/releases/download/v0.2.2/tilo_Darwin_x86_64.tar.gz"
      sha256 "0ece427898bc4070f9dd44e3d73fa273ba346d0c8eae5a759c0b72caa3dbcf68"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tilo-editor/tilo/releases/download/v0.2.2/tilo_Linux_arm64.tar.gz"
      sha256 "48b66ce4e6f992440c93498e137701e49a99a1137675ac8a1847150b787678c2"
    else
      url "https://github.com/tilo-editor/tilo/releases/download/v0.2.2/tilo_Linux_x86_64.tar.gz"
      sha256 "baf4d18b3a262c45c4d07d78de9b0fe035aee0e7b7b12706eb680230377d23df"
    end
  end

  def install
    bin.install "tilo"
    doc.install "README.md"
    prefix.install "LICENSE-BINARY.md"
  end

  test do
    assert_match "tilo v#{version}", shell_output("#{bin}/tilo --version")
  end
end
