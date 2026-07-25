class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.25-beta.2"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.25-beta.2/adversary_2026.7.25-beta.2_darwin_amd64.tar.gz"
      sha256 "e634b6f07ba6ef727900bdf49e163b5b37a2f37b68ca1de44bc86e58226a3a31"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.25-beta.2/adversary_2026.7.25-beta.2_darwin_arm64.tar.gz"
      sha256 "03d88fdc6948d46203fe5efbe0d590bd5a0ff686d4ba03d20db7112850d15f48"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.25-beta.2/adversary_2026.7.25-beta.2_linux_amd64.tar.gz"
      sha256 "1c2d70aefa6f2124ca52993748368092f4f06f5f4a1140ac9b2a8f950c366dc8"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.25-beta.2/adversary_2026.7.25-beta.2_linux_arm64.tar.gz"
      sha256 "47ea2767a9073ef88ccf2f2a98f86c3733894b3b665251bef8f808237691b537"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
