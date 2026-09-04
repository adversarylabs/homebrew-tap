class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.4-beta.4"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4-beta.4/adversary_2026.9.4-beta.4_darwin_amd64.tar.gz"
      sha256 "ca6716e7664beb8de806d6e8c140fb9118c2d6a40ccb822e6b4b3abc0e763b1e"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4-beta.4/adversary_2026.9.4-beta.4_darwin_arm64.tar.gz"
      sha256 "0cdcc7989d307bd16dedaa9b3a97bf49d8b931a6ced7bede56a5899c9d2229d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4-beta.4/adversary_2026.9.4-beta.4_linux_amd64.tar.gz"
      sha256 "7fcad72066dc1be5eb182f5d3d700b062ac91106cc2da4dd43452d8b841311ef"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4-beta.4/adversary_2026.9.4-beta.4_linux_arm64.tar.gz"
      sha256 "7bd261dfde7ce352dd4c41b9b60b683da5fdbc321adaeb4faa12e1d165a5906c"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
