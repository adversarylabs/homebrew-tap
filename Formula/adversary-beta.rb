class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.2-beta.2"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.2/adversary_2026.9.2-beta.2_darwin_amd64.tar.gz"
      sha256 "7c9bd78f9fbd9e8e0bacfb7a2d21461c4bfb7bc7bee7f9536b846013c99eec82"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.2/adversary_2026.9.2-beta.2_darwin_arm64.tar.gz"
      sha256 "6a6238d796a8083a4e5d5e2aa23745f2e7e6834f9d9281301a8d29cd25b960bb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.2/adversary_2026.9.2-beta.2_linux_amd64.tar.gz"
      sha256 "afa3328f023757db4ef6b9705ed0e8206e47295486dc0bb086dac70ea5a92c33"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.2-beta.2/adversary_2026.9.2-beta.2_linux_arm64.tar.gz"
      sha256 "1c256e406476ddd5bd1d4b4bf106ab4e235d5f88f22637d37958d8affb79b0af"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
