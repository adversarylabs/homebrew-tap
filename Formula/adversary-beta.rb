class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.19"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.19/adversary_2026.9.15-beta.19_darwin_amd64.tar.gz"
      sha256 "c4ffc6b9ac870aa07cc1babc69c86d7f26e4a8789a6331e767e572394989248a"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.19/adversary_2026.9.15-beta.19_darwin_arm64.tar.gz"
      sha256 "ea4a89e3ccc06e7354a780701bbf5cf3d76572e43b867fea934b1a1379890a76"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.19/adversary_2026.9.15-beta.19_linux_amd64.tar.gz"
      sha256 "b5cca5a0b1ced2b9ed0a3dd3205862a72c0b0ddf53dedb95248ec19fdbaa8437"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.19/adversary_2026.9.15-beta.19_linux_arm64.tar.gz"
      sha256 "2dac009499e05cffd83844a171102d496250d27e1e57d7a4131ba42b5c14435d"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
