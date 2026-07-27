class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.28-beta.6"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.6/adversary_2026.7.28-beta.6_darwin_amd64.tar.gz"
      sha256 "25fa309c34fd7c75aa0063256f9bc7ac0c80617bf2638fbf6b2805c87ffa6394"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.6/adversary_2026.7.28-beta.6_darwin_arm64.tar.gz"
      sha256 "def7a8327143c7f033db9ef7f179339926adaf37041ee495ec18e550caea085d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.6/adversary_2026.7.28-beta.6_linux_amd64.tar.gz"
      sha256 "7419ac73def58e5f81cfdac92e77e3f7bde9ab6a6be60761a5050f0dc5bbb60a"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.6/adversary_2026.7.28-beta.6_linux_arm64.tar.gz"
      sha256 "0293bfe2db1335d30c8ecbd4d0dba6ec4bb0360c1294d759602db439b7f289f8"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
