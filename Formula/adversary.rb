class Adversary < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.22"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.22/adversary_2026.7.22_darwin_amd64.tar.gz"
      sha256 "71f897a3f92079ccc103e780e477ca5187508909c31222aef9f006314ab623d6"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.22/adversary_2026.7.22_darwin_arm64.tar.gz"
      sha256 "2337b93f22ebb706453cb7de6a648ab113085552ed2cd357f531f9deefad8073"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.22/adversary_2026.7.22_linux_amd64.tar.gz"
      sha256 "04ddac6328219d192bd51c24786b596dbcd92c2c7a319f6dc2f0a2afc3c1aa72"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.22/adversary_2026.7.22_linux_arm64.tar.gz"
      sha256 "40338fbabedfcc70b3f09fe924ad9b40e5122362b5bd630c67691993fd4db9c5"
    end
  end

  def install
    bin.install "adversary" => "adversary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary version")
  end
end
