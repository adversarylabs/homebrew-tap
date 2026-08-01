class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.1-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.1-beta.1/adversary_2026.8.1-beta.1_darwin_amd64.tar.gz"
      sha256 "0e08cc8f00950a32137166e58677e2e399b6f6520954c12e53f359ef5345767d"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.1-beta.1/adversary_2026.8.1-beta.1_darwin_arm64.tar.gz"
      sha256 "7a0a85161ab387abd4275b87ea3bb8ec4acba754095094731b046fba1fdca7d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.1-beta.1/adversary_2026.8.1-beta.1_linux_amd64.tar.gz"
      sha256 "8638564080456b0d9441a4b5f0efba12da7741f2e7d34c2cbbce05e932dc8875"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.1-beta.1/adversary_2026.8.1-beta.1_linux_arm64.tar.gz"
      sha256 "7293c0dc7f2d8a089ec73a6a6f7d471a8369560e86c997a674ca21e8bdfba221"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
