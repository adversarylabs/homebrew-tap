class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.16"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.16/adversary_2026.9.15-beta.16_darwin_amd64.tar.gz"
      sha256 "7304f3f1dfcffb152e51df4406f512061e057592bfa73b9a4ec08a3223c41b64"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.16/adversary_2026.9.15-beta.16_darwin_arm64.tar.gz"
      sha256 "d91a869ac4fdbe5d7fc30f9792b1867d444f384bf3dc4efdbd9aa2e555dad91b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.16/adversary_2026.9.15-beta.16_linux_amd64.tar.gz"
      sha256 "2252258731543573de3aa3ed78869d2e3b95ac3d0b529b4c2e2485719f13a68c"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.16/adversary_2026.9.15-beta.16_linux_arm64.tar.gz"
      sha256 "0ce932cb494e73c75f01feb517d4ca923f34721d62f86c1dfe2071d89988d73d"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
