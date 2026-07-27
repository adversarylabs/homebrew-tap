class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.28-beta.8"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.8/adversary_2026.7.28-beta.8_darwin_amd64.tar.gz"
      sha256 "4e2c0c8c700c3cbc9ee13f2a8ea7a9eb505741c5f1f6eb71778471a1f980f678"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.8/adversary_2026.7.28-beta.8_darwin_arm64.tar.gz"
      sha256 "231f531fd20b630f6812237ad3d4640ab40ad21935d847d2c1fd69566da8feaa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.8/adversary_2026.7.28-beta.8_linux_amd64.tar.gz"
      sha256 "e961c06b4ee17686188f6784b15d3226a1967acde8d66b444f808156b7d75a60"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.28-beta.8/adversary_2026.7.28-beta.8_linux_arm64.tar.gz"
      sha256 "115cf05147ed82d68e5a01d91248a99bf8ed0c01cc6a3c279fd045bb958ce81c"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
