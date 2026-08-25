class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.26-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.26-beta.1/adversary_2026.8.26-beta.1_darwin_amd64.tar.gz"
      sha256 "50bbf79425ca5a4ab0870ad0e887e3b68b897ab2292cef306ca8ef57981a1fea"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.26-beta.1/adversary_2026.8.26-beta.1_darwin_arm64.tar.gz"
      sha256 "5b867ecd5b4daef3a34c2d6bf7624d65baeaffc44baf1030694bfc43d2a6efef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.26-beta.1/adversary_2026.8.26-beta.1_linux_amd64.tar.gz"
      sha256 "2b3cdb040b16881575c3fc68c9bbb4816b9a4f3216f36cde9d0f5be884e8f5da"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.26-beta.1/adversary_2026.8.26-beta.1_linux_arm64.tar.gz"
      sha256 "474019a4b3e098e08f5f45ed66d971a6c809c05ed3bd05bff0e47b88b4e5620f"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
