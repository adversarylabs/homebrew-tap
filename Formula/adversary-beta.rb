class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.3-beta.7"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.7/adversary_2026.9.3-beta.7_darwin_amd64.tar.gz"
      sha256 "e11749c68f0a27ac778e42ad433bd9e9d1213bb0408b59c93bdc4c0f1f7dcd49"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.7/adversary_2026.9.3-beta.7_darwin_arm64.tar.gz"
      sha256 "9ee1122d2000d79b78537f0d7859a29515da0fb9d4e42e83b07dc12c73972799"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.7/adversary_2026.9.3-beta.7_linux_amd64.tar.gz"
      sha256 "98149f3f65b946a046ad8c74bf724affda310f669931a25d8abeffc573bde4b0"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.7/adversary_2026.9.3-beta.7_linux_arm64.tar.gz"
      sha256 "c1252e7e2da5314cccf5d377e11dd58847e350eba06845b26152a331dec5625b"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
