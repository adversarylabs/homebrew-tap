class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.28-beta.4"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.4/adversary_2026.7.28-beta.4_darwin_amd64.tar.gz"
      sha256 "2fe41f8e37e647349126929d614963e80e06b688aa9b7155b64ccd0d727ab3d2"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.4/adversary_2026.7.28-beta.4_darwin_arm64.tar.gz"
      sha256 "710a93a100e5db3a8e858944dcd60f97a70b5f78401f2420ccc917ac023e221b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.4/adversary_2026.7.28-beta.4_linux_amd64.tar.gz"
      sha256 "ddb52850b7688f4f6fe0ae8397a8bd6bfbe13b04b0a018443a9972797ac225a7"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.4/adversary_2026.7.28-beta.4_linux_arm64.tar.gz"
      sha256 "66d005070f9bc6641700a6eea9275f876f3a8cfe7733c03a7a01a38ae65e752e"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
