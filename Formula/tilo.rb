class Tilo < Formula
  desc "Tiled terminal editor"
  homepage "https://github.com/tilo-editor/tilo"
  version "0.4.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tilo-editor/tilo/releases/download/v0.4.0/tilo_Darwin_arm64.tar.gz"
      sha256 "178db1391e4b5009b9307d58c09ced372e1cf6d7b74b8fb77a7ba8715904666f"
    else
      url "https://github.com/tilo-editor/tilo/releases/download/v0.4.0/tilo_Darwin_x86_64.tar.gz"
      sha256 "d6f94e6c62d2ee73989c1ee25015caf8ecb48a16c49e6eb4add3a12362f4a722"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tilo-editor/tilo/releases/download/v0.4.0/tilo_Linux_arm64.tar.gz"
      sha256 "f47370f54ef26913644a1276d8d81735e849d8410c5a77cbb583858b3583cff4"
    else
      url "https://github.com/tilo-editor/tilo/releases/download/v0.4.0/tilo_Linux_x86_64.tar.gz"
      sha256 "ecf8cbf7bf2bb0aa31fb4b2671e92a031031ebbfdefdc525a8c9573ee3541b99"
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
