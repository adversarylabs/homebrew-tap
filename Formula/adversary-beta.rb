class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.12"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.12/adversary_2026.9.15-beta.12_darwin_amd64.tar.gz"
      sha256 "ff5021401f2c7ff27fa5f447722f82087cb08627144fdf7ab74ddb0c32842a10"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.12/adversary_2026.9.15-beta.12_darwin_arm64.tar.gz"
      sha256 "57ce84258ff32961383df1264902cf1c7eadab9f2af983e007aa0f8247177ea0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.12/adversary_2026.9.15-beta.12_linux_amd64.tar.gz"
      sha256 "16208bfae3db7667ee1e1ee458d228c84f667d4b15ce6c0668c5739823f79d38"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.12/adversary_2026.9.15-beta.12_linux_arm64.tar.gz"
      sha256 "009c4fd16c2117d2290ad68193850ec606c0886fea2fa6e27bcb7eb1b836956e"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
