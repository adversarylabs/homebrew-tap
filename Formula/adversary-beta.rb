class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.14-beta.3"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.14-beta.3/adversary_2026.8.14-beta.3_darwin_amd64.tar.gz"
      sha256 "67069291c448a654810b340a8e7a7fe37b5e7ae2e6a37361285784939b17c757"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.14-beta.3/adversary_2026.8.14-beta.3_darwin_arm64.tar.gz"
      sha256 "17dd19648f46812b679c6439b4e70501ef055afc2129108ad7ecaebb229b666b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.14-beta.3/adversary_2026.8.14-beta.3_linux_amd64.tar.gz"
      sha256 "7ae729a2026a9101e109c520899589457ab2ac056d4093c69dd7b09b939bc84b"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.14-beta.3/adversary_2026.8.14-beta.3_linux_arm64.tar.gz"
      sha256 "c08eb1350f8bdd9f840090174f4d949eb6bee68f572c5a81129c305f566de08b"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
