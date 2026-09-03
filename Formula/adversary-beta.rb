class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.3-beta.3"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.3/adversary_2026.9.3-beta.3_darwin_amd64.tar.gz"
      sha256 "ad2d7c8783871a6d7385c4ca7f1ffe4601c1ca6e61eaa34900c272e499f54f7a"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.3/adversary_2026.9.3-beta.3_darwin_arm64.tar.gz"
      sha256 "406853189e74582adbf2509717cb7eba5dad968608d2d53ffb2a9425f5fad901"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.3/adversary_2026.9.3-beta.3_linux_amd64.tar.gz"
      sha256 "6d61ba53e177fd3cb579723ba2282bb1f3c703d7f0ad02148998e8bb0008feee"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.3/adversary_2026.9.3-beta.3_linux_arm64.tar.gz"
      sha256 "49d51e0423f32579529ea0f1216d7a2a24892bb5d4a7f7870af40bcef4a77582"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
