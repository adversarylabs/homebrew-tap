class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.10-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.10-beta.1/adversary_2026.9.10-beta.1_darwin_amd64.tar.gz"
      sha256 "6b025e100f68cb466f93265d4debf64ba4fd7454bdabed791d598921788df9ed"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.10-beta.1/adversary_2026.9.10-beta.1_darwin_arm64.tar.gz"
      sha256 "80973338a5c913f36631ae3cac17dd2c01da7120965d3275084d7784b124b8f3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.10-beta.1/adversary_2026.9.10-beta.1_linux_amd64.tar.gz"
      sha256 "f3597e572b8b82b63c033c34199432936c092fad47f7b39051a3b4a56b67181a"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.10-beta.1/adversary_2026.9.10-beta.1_linux_arm64.tar.gz"
      sha256 "9e8df8bf27f5f9372045f5058928e26fa19ce6fca3e06e3590e69c2a142882f8"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
