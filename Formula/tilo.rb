class Tilo < Formula
  desc "Tiled terminal editor"
  homepage "https://github.com/tilo-editor/tilo"
  version "0.3.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/tilo-editor/tilo/releases/download/v0.3.1/tilo_Darwin_arm64.tar.gz"
      sha256 "2c8c89538cb7fe4fb99ee8543420abd15bf9e92afe5a507d30d71317ad729050"
    else
      url "https://github.com/tilo-editor/tilo/releases/download/v0.3.1/tilo_Darwin_x86_64.tar.gz"
      sha256 "779f3187402929f046617183a721a1e65da1a5dc4e97bc5ad8c723e64e40deaf"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/tilo-editor/tilo/releases/download/v0.3.1/tilo_Linux_arm64.tar.gz"
      sha256 "060658b26b9276226e48bcbda788d2b7aa316a9612e542feb8f2c34143b26d21"
    else
      url "https://github.com/tilo-editor/tilo/releases/download/v0.3.1/tilo_Linux_x86_64.tar.gz"
      sha256 "a1cf00a8cfa34a328a2b02520b38305a5260b113aaebd4fed8cf5871193f8399"
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
