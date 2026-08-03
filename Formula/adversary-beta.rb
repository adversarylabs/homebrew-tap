class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.3-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.3-beta.1/adversary_2026.8.3-beta.1_darwin_amd64.tar.gz"
      sha256 "9b666ca8210cecd6866f93de6b64ee39a254dffd9bc7bd6dea70e84aa1af3bb0"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.3-beta.1/adversary_2026.8.3-beta.1_darwin_arm64.tar.gz"
      sha256 "c3ac63ff1b4e222dc2700b866e0b482d3add15a26eee4bab14f8c3446aeaa9b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.3-beta.1/adversary_2026.8.3-beta.1_linux_amd64.tar.gz"
      sha256 "311df5628b895be3516cbb668dcf9a9abc922a0ed5896c693041e2fcbf06dc17"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.3-beta.1/adversary_2026.8.3-beta.1_linux_arm64.tar.gz"
      sha256 "65a9bf3c6cd90b8766bc4bd8cbef260998a6604e1860984239a9aecf1f70a6aa"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
