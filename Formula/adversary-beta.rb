class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.12-beta.3"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.3/adversary_2026.9.12-beta.3_darwin_amd64.tar.gz"
      sha256 "dd072bca797b43e2b34d6949eb8099664e49ddc5e540e57b08422e0ef5abad5c"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.3/adversary_2026.9.12-beta.3_darwin_arm64.tar.gz"
      sha256 "fd76c514d3a138dfc1dc0a2efff6e4614042a991ea7511cafdb9ae0bacd53774"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.3/adversary_2026.9.12-beta.3_linux_amd64.tar.gz"
      sha256 "6f1789a7b22a6fe3bee2abea8c52eb95c42a39e095841cd52410604b80ac93d5"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.3/adversary_2026.9.12-beta.3_linux_arm64.tar.gz"
      sha256 "143f234eb209b6fdb4401d131af21488073c56680bd4bcfe87a1e81b7c9ded36"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
