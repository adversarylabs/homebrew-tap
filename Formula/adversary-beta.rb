class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.3-beta.10"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.10/adversary_2026.9.3-beta.10_darwin_amd64.tar.gz"
      sha256 "9200d1dffa9d60f2ae98c2528014c53d0bb92af6d1b2992956421264054ccf0a"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.10/adversary_2026.9.3-beta.10_darwin_arm64.tar.gz"
      sha256 "3449e90c826d29ac9f24daaad58fb64e4ce85940e47a1ce57e9378c78280ce24"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.10/adversary_2026.9.3-beta.10_linux_amd64.tar.gz"
      sha256 "5d3859043a6d21ad8ec834725101fd28c7e37e8cc0bcc5bc0b7a77a26d34d19d"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.10/adversary_2026.9.3-beta.10_linux_arm64.tar.gz"
      sha256 "5dff2de4659acb3ab4ab2d8722a70940ea0e16a85a8820a4d2106e0ca3634f68"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
