class Adversary < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.25"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.25/adversary_2026.7.25_darwin_amd64.tar.gz"
      sha256 "ecaa17b91f490dc713a3d1a11cbb1902fc8350413b6d3a37f54b1f4731b860c5"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.25/adversary_2026.7.25_darwin_arm64.tar.gz"
      sha256 "86bf854f8b870c0eb65b940b7c56a4a150821af674ec443b1570d78edfd82217"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.25/adversary_2026.7.25_linux_amd64.tar.gz"
      sha256 "6ba0cafdbc53acec5f07e979939bf15898243c56d4331cd9df7b51c2c357a3a9"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.25/adversary_2026.7.25_linux_arm64.tar.gz"
      sha256 "f8fe5134cc45ef9a567673588cbdf160d221db7c78036b393f98c259e6728d31"
    end
  end

  def install
    bin.install "adversary" => "adversary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary version")
  end
end
