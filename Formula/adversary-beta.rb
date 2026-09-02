class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.2-beta.5"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.5/adversary_2026.9.2-beta.5_darwin_amd64.tar.gz"
      sha256 "e6dc88fbb1268bb4985d6872fade4a66f04ead2e2628dddb3a75f86e4367fd26"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.5/adversary_2026.9.2-beta.5_darwin_arm64.tar.gz"
      sha256 "ee4d744035717d6f4faad98eb34090bfb6f9d59795543acab7bd45c5573acda5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.5/adversary_2026.9.2-beta.5_linux_amd64.tar.gz"
      sha256 "126315d33bea63bcb69302c7c47a60861a838e3ab93962f0d340f7a18d58a07d"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.5/adversary_2026.9.2-beta.5_linux_arm64.tar.gz"
      sha256 "7a2bc84adb6192f418c7f7606910144a71d422fcc07298a98e2ca6be3b56f560"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
