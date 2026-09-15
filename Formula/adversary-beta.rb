class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.18"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.18/adversary_2026.9.15-beta.18_darwin_amd64.tar.gz"
      sha256 "3aa293a4dc527a9fe0a71d1a183ef8274555f47f9b45547bc00878c30a16d5d9"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.18/adversary_2026.9.15-beta.18_darwin_arm64.tar.gz"
      sha256 "3903f88912287f58a9a1326904257d2325a1c02f16d493a398d443b51230efa0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.18/adversary_2026.9.15-beta.18_linux_amd64.tar.gz"
      sha256 "68517089742cd3378d0279c5e5b2fcf00f552ea2a6727477cb755afa21d0fdbc"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.18/adversary_2026.9.15-beta.18_linux_arm64.tar.gz"
      sha256 "d3dcc9225125f025848a2247feee559140febbd42d8d47c760355370dbd04244"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
