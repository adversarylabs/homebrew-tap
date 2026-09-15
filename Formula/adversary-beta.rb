class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.17"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.17/adversary_2026.9.15-beta.17_darwin_amd64.tar.gz"
      sha256 "7afe1edaaadf0080abe2f768be55a9b120fe62cfd9437855a99c3bf0d5793613"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.17/adversary_2026.9.15-beta.17_darwin_arm64.tar.gz"
      sha256 "206f713812116cdae92d4acee79b6d27f1f6d3baf0c5e87b0c6bc644aaeb157f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.17/adversary_2026.9.15-beta.17_linux_amd64.tar.gz"
      sha256 "62e4a471ed56a787d608ff548a7ece86995588a65dceb75c1c2e47791bed91aa"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.17/adversary_2026.9.15-beta.17_linux_arm64.tar.gz"
      sha256 "2598cd656accac16139fa468730390d1d00e136544e27233b4e9ca35ebb228aa"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
