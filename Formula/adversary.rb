class Adversary < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.13"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.13/adversary_2026.9.13_darwin_amd64.tar.gz"
      sha256 "e2da44e6fcafe3bcf7aa4b2cc49c34fc4881ec1189eae3390edf5206bec9bb88"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.13/adversary_2026.9.13_darwin_arm64.tar.gz"
      sha256 "1560b344e5f25a05f351c9801871120ccbdb50598d75924879fe7118fa10c2f9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.13/adversary_2026.9.13_linux_amd64.tar.gz"
      sha256 "c28f1ae21c43770da710878dadefa7de69e7cb1fa8abeba07209e00059a66664"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.13/adversary_2026.9.13_linux_arm64.tar.gz"
      sha256 "328b8c3a348b1aead60b813195fd7df3cc278aced9fa68db0385dfad334f652b"
    end
  end

  def install
    bin.install "adversary" => "adversary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary version")
  end
end
