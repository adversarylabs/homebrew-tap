class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.7-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.7-beta.1/adversary_2026.8.7-beta.1_darwin_amd64.tar.gz"
      sha256 "ba099dfcd3a9207b03963d2e16d1e53dab5739b5a6df74e75b5c0fef4536d48b"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.7-beta.1/adversary_2026.8.7-beta.1_darwin_arm64.tar.gz"
      sha256 "1187e95d4c708f09536b20d7ae44f08d13254e558e60473e42733033105e6035"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.7-beta.1/adversary_2026.8.7-beta.1_linux_amd64.tar.gz"
      sha256 "9fba11eff45706393dbd76b564c8b99abcdcd2b1622965f8e67534e60b50f238"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.7-beta.1/adversary_2026.8.7-beta.1_linux_arm64.tar.gz"
      sha256 "7dd9b4f4ff59f70a579c621dfc14d66865fdd21ee75239714be2fddf708fc0cb"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
