class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.15-beta.13"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.13/adversary_2026.9.15-beta.13_darwin_amd64.tar.gz"
      sha256 "9daaceeb0c386db9ccce608f76904bf1f42d4503a1e81b58d61d344ecaf8d033"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.13/adversary_2026.9.15-beta.13_darwin_arm64.tar.gz"
      sha256 "a317ffb7145fd44151c214b250021bba0ade47120131dc62ff4297f828bdfa09"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.13/adversary_2026.9.15-beta.13_linux_amd64.tar.gz"
      sha256 "f7864ab53220e235d3480ffa12216401c07a6f8662a2cceb87c1c2cf1d409ea2"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.15-beta.13/adversary_2026.9.15-beta.13_linux_arm64.tar.gz"
      sha256 "fbf7f31bbf33e0fb7a536b9066686e2ecd4fa89606faf6cd17f366cfcaed4e82"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
