class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.17-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.17-beta.1/adversary_2026.8.17-beta.1_darwin_amd64.tar.gz"
      sha256 "8779a719b1d0f3548cb592af1f8628e8d8fdd11603da32ca4167d48bdd269017"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.17-beta.1/adversary_2026.8.17-beta.1_darwin_arm64.tar.gz"
      sha256 "6ed2efced65e9ea7fb9668b3fc445ef00fe302656b94199d6febca178a8502f3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.17-beta.1/adversary_2026.8.17-beta.1_linux_amd64.tar.gz"
      sha256 "4224d4a9d7e051773f75cff2e7b839e7b72b109e2982682fee197e6a6eeb46de"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.17-beta.1/adversary_2026.8.17-beta.1_linux_arm64.tar.gz"
      sha256 "de6396c0cbacc24dac2e8f61706a063c9e04f7091dbe7868d5ea69bb0e002b7d"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
