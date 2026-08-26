class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.27-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.1/adversary_2026.8.27-beta.1_darwin_amd64.tar.gz"
      sha256 "63520d44434a39379ec2d58f77f2e1b0a8677a977b936208321621d72b014ad1"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.1/adversary_2026.8.27-beta.1_darwin_arm64.tar.gz"
      sha256 "e8c3f75e64f5f5c245fd43ea9cb9131d3474f40e1dfc389be9012b1a4e84d4b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.1/adversary_2026.8.27-beta.1_linux_amd64.tar.gz"
      sha256 "dc8895ca1d72d66b1ea546c973844f2262bebd360651cbf973e743543b068400"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.27-beta.1/adversary_2026.8.27-beta.1_linux_arm64.tar.gz"
      sha256 "2d5531e5b89198e90f898e1e87aa0f9f423f37924db77ee5198b1c8583f8fb74"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
