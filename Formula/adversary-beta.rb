class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.6-beta.2"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.6-beta.2/adversary_2026.9.6-beta.2_darwin_amd64.tar.gz"
      sha256 "e770f479e3bafda99b8dca7946738a070bf11d3e4468e6a748e281af96871c6b"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.6-beta.2/adversary_2026.9.6-beta.2_darwin_arm64.tar.gz"
      sha256 "4757824101e0c6acd3c9e2eb0d28c56cbcb102c69acc15f54bc3a12af80f51bb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.6-beta.2/adversary_2026.9.6-beta.2_linux_amd64.tar.gz"
      sha256 "e7dcd8555d2f677c4bb9073a8a665e3dbfdf4157ae88883418677360fe9a1e80"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.6-beta.2/adversary_2026.9.6-beta.2_linux_arm64.tar.gz"
      sha256 "bddc08572ff1116404a5a7883439b9a326c255980b0f21466d7f724aca6533d7"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
