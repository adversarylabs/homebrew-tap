class Adversary < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.9"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9/adversary_2026.9.9_darwin_amd64.tar.gz"
      sha256 "8de12bc15e301d2f785cd6cb83d85c581e144fb7545c4798715324ea86f2ccb2"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9/adversary_2026.9.9_darwin_arm64.tar.gz"
      sha256 "6fd41aa81a326467be43f8a9e2c59a9ce1fe086b306f0f70d96688ebf67b8ee9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9/adversary_2026.9.9_linux_amd64.tar.gz"
      sha256 "04344f847d146d57c39f3e2f881e896813b28c98e4672a83a9015387c1455ea5"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9/adversary_2026.9.9_linux_arm64.tar.gz"
      sha256 "3f7b45963566ec18c9dbf7cb189ce1a155455c0e166c35a0e85d142163a59604"
    end
  end

  def install
    bin.install "adversary" => "adversary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary version")
  end
end
