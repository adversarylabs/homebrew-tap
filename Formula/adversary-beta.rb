class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.3-beta.4"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.4/adversary_2026.9.3-beta.4_darwin_amd64.tar.gz"
      sha256 "02f44343b696d4535e389ab47b52f419d4304459c656842b74b7dd3bf30ffe4c"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.4/adversary_2026.9.3-beta.4_darwin_arm64.tar.gz"
      sha256 "17c81ec06e5bf4dc83f19598fa568c20bb7e093a9087645aa463032e5d5f1cfd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.4/adversary_2026.9.3-beta.4_linux_amd64.tar.gz"
      sha256 "734fa3864a47cb3d4c046c3a012f09a1ff6b90637e3fb4979b787092e052a0c6"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.4/adversary_2026.9.3-beta.4_linux_arm64.tar.gz"
      sha256 "535ad80d2a4ec0166a7d57902e386d46c5c1b1fc3cbae73efd45130b1fb1e2cf"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
