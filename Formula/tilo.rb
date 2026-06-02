class Tilo < Formula
  desc "Tiled terminal editor"
  homepage "https://github.com/tilo-editor/tilo"
  version "0.2.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tilo-editor/tilo/releases/download/v0.2.1/tilo_Darwin_arm64.tar.gz"
      sha256 "a5d2afa30c09cd8d6d53e547b8ba975e70674d925aa7d5bfec899f007d86e183"
    else
      url "https://github.com/tilo-editor/tilo/releases/download/v0.2.1/tilo_Darwin_x86_64.tar.gz"
      sha256 "2ace32e97a68e1a772cf4d6b35dd72d055da45f97b229e49ea081605c7a3b406"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tilo-editor/tilo/releases/download/v0.2.1/tilo_Linux_arm64.tar.gz"
      sha256 "ae39a49efca8fcbd49bbe520c1066281485432b9db497dc72a960a2f27b11722"
    else
      url "https://github.com/tilo-editor/tilo/releases/download/v0.2.1/tilo_Linux_x86_64.tar.gz"
      sha256 "a60695d6fc9adec65ce1a268c1dafff613a0cdd0cd601bd086c22c8cec8d2d7e"
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
