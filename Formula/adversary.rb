class Adversary < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.30"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.30/adversary_2026.7.30_darwin_amd64.tar.gz"
      sha256 "8def4257396013d61d60bc2e6f8bc1e80e30fa5a3d69db453b35680ed296fa35"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.30/adversary_2026.7.30_darwin_arm64.tar.gz"
      sha256 "895cb757ec22ca1439a2bbc5f4eb5674bfb518f5efa4eec12224c45ad12ebfe2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.30/adversary_2026.7.30_linux_amd64.tar.gz"
      sha256 "2614023209f8f529f38fab48871c73e19d97896dab58d6bab57660832e75cbff"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.30/adversary_2026.7.30_linux_arm64.tar.gz"
      sha256 "d5efe907dcb63aad16af57558647cae9806f0eaae2def40cd691d13cd5b69c69"
    end
  end

  def install
    bin.install "adversary" => "adversary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary version")
  end
end
