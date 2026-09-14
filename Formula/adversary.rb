class Adversary < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.14"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.14/adversary_2026.9.14_darwin_amd64.tar.gz"
      sha256 "88c7c844e5e2ece1bf3547fd01733fa5b60550baf6292ec2eaf06730ec28e904"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.14/adversary_2026.9.14_darwin_arm64.tar.gz"
      sha256 "473c1f426741b2e42aac4b112dd3337b08ae596a3180e5f9d4a9e657fc75ed66"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.14/adversary_2026.9.14_linux_amd64.tar.gz"
      sha256 "27a0c00bf54c9f12253cb75eb6134862a0dcc867df0be874cde6a5a2e2f7c5bc"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.14/adversary_2026.9.14_linux_arm64.tar.gz"
      sha256 "168ed63cb4dd36edc24cb6218086540962f38d04ec8964e680701c383554888f"
    end
  end

  def install
    bin.install "adversary" => "adversary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary version")
  end
end
