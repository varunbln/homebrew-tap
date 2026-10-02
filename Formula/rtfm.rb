class Rtfm < Formula
  desc "Coding tutor that helps you write the code yourself"
  homepage "https://github.com/varunbln/rtfm"
  version "0.1.0"
  license "MIT"
  on_macos do
    on_arm do
      url "https://github.com/varunbln/rtfm/releases/download/v0.1.0/rtfm-cli-darwin-arm64.zip"
      sha256 "043dd7cc62ea31c6f4b5e3bdf4a36d618a0317b9af55b0d922261c94f6eaa114"
    end
    on_intel do
      url "https://github.com/varunbln/rtfm/releases/download/v0.1.0/rtfm-cli-darwin-x64.zip"
      sha256 "51d9c472810166b09181b7a12f7d1cb2694b3cd09dc52254e636dc14c910d536"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/varunbln/rtfm/releases/download/v0.1.0/rtfm-cli-linux-arm64.tar.gz"
      sha256 "a6a5510a39683b3759e74805d2542d58b7c04731b5bbe4465d793ac056ffcc3a"
    end
    on_intel do
      url "https://github.com/varunbln/rtfm/releases/download/v0.1.0/rtfm-cli-linux-x64.tar.gz"
      sha256 "5bcc42d89348e71ee2dd95d34e046ca2727bb39cf25c6329ae7f64842aca0e94"
    end
  end
  def install
    bin.install "rtfm"
  end
  test do
    assert_match version.to_s, shell_output("#{bin}/rtfm --version")
  end
end
