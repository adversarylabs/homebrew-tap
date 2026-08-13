class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.14-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.14-beta.1/adversary_2026.8.14-beta.1_darwin_amd64.tar.gz"
      sha256 "2f62393f741c8ce2d6ac739070495760770418e581851d34e809e6487d6b2a7d"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.14-beta.1/adversary_2026.8.14-beta.1_darwin_arm64.tar.gz"
      sha256 "7288cef97dcb0de09584d97cbd392e31dd9eae79ae557d321367695e7462a8ca"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.14-beta.1/adversary_2026.8.14-beta.1_linux_amd64.tar.gz"
      sha256 "b575baf26f331190b9ee50454579daa1a527224324296ad37a3a209846e74b2b"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.14-beta.1/adversary_2026.8.14-beta.1_linux_arm64.tar.gz"
      sha256 "133b0508b1a8e926a7046a50f3b1499d6db35f61dda92ce5317a13df969b8487"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
