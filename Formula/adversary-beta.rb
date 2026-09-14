class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.2"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.2/adversary_2026.9.15-beta.2_darwin_amd64.tar.gz"
      sha256 "1cbc1df35e6d13d0ef8a6e54b8f96fbbd41f5af9deff959698f595fce9d5e16d"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.2/adversary_2026.9.15-beta.2_darwin_arm64.tar.gz"
      sha256 "c30219c954eebbf63d7cf6defd6eedade78a6d31fb7c46f7415d281b7e93408d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.2/adversary_2026.9.15-beta.2_linux_amd64.tar.gz"
      sha256 "c72b61ec63474138fbc2002e430cfc4df8310627b2f6a1294f9b85f950f6bfe9"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.2/adversary_2026.9.15-beta.2_linux_arm64.tar.gz"
      sha256 "9cbfe8e316078742dddcd2004030e99c2954cdc5e30515c48ffc2125cc724819"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
