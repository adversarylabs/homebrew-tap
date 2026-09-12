class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.12-beta.6"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.6/adversary_2026.9.12-beta.6_darwin_amd64.tar.gz"
      sha256 "3166c9e3467a15b7b671dd386a24d92d8e27f3cece89afd06aeee07685e821c7"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.6/adversary_2026.9.12-beta.6_darwin_arm64.tar.gz"
      sha256 "130989489d6ec646c6828334f5728fc97adbc25887e9419ea95bd534450e490b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.6/adversary_2026.9.12-beta.6_linux_amd64.tar.gz"
      sha256 "8025c7a2331699a9eb9648d5b43cbee0ddec1923ae0eb41cbcd48876b24d05e8"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.12-beta.6/adversary_2026.9.12-beta.6_linux_arm64.tar.gz"
      sha256 "f5d7401dc8f6a9a09dfabdb8be6fe2684f0dd6ff9d88b9127d9255f200d277ca"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
