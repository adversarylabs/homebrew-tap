class AdversaryBeta < Formula
  desc "Run containerized source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.8-beta.4"

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.8-beta.4/adversary_2026.7.8-beta.4_darwin_amd64.tar.gz"
      sha256 "f576bf665c029f040dfea5a5c0117c28cc8059c96b404874dbd2e8ad312133e3"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.8-beta.4/adversary_2026.7.8-beta.4_darwin_arm64.tar.gz"
      sha256 "5b15895b338fbdf66fcf510ffc5b32b78ecdaca92227c6a6b0c11c616e1e1737"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.8-beta.4/adversary_2026.7.8-beta.4_linux_amd64.tar.gz"
      sha256 "d893900255bd2baeccda2312c9943f6a976de85b6796a24a17df5c80c4cf9249"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.8-beta.4/adversary_2026.7.8-beta.4_linux_arm64.tar.gz"
      sha256 "6e8dc0a4553382c36e1de131c6f5b16c127a9a3d8f17a482019d2fba22a45a96"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match "Run containerized source-code adversaries", shell_output("#{bin}/adversary-beta --help")
  end
end
