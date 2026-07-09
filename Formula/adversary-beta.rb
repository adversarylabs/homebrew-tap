class AdversaryBeta < Formula
  desc "Run containerized source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.9-beta.1"

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.9-beta.1/adversary_2026.7.9-beta.1_darwin_amd64.tar.gz"
      sha256 "cc63fa73e80286269bb75cf33d9743fb29189ef64a9aaa0802fd90195b518f59"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.9-beta.1/adversary_2026.7.9-beta.1_darwin_arm64.tar.gz"
      sha256 "5ae945ad79d15e31f6140fd37a81d8e8448ef507185a8d9af2b9ebc053aca1cb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.9-beta.1/adversary_2026.7.9-beta.1_linux_amd64.tar.gz"
      sha256 "d5a26787f2c9db946ffe181b4a45651be1bb5f5863a3e40c82060e73f47bdea4"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.9-beta.1/adversary_2026.7.9-beta.1_linux_arm64.tar.gz"
      sha256 "b2852e254110ca8ae94aea4aba6ac7e3a38d5a42a898c908a8470d576e8a998c"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match "Run containerized source-code adversaries", shell_output("#{bin}/adversary-beta --help")
  end
end
