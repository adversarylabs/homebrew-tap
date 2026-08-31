class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.31-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.31-beta.1/adversary_2026.8.31-beta.1_darwin_amd64.tar.gz"
      sha256 "a24d917f94855ae874446b3bf0a6febb26d5d0d9829e0515a04116a126d65b73"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.31-beta.1/adversary_2026.8.31-beta.1_darwin_arm64.tar.gz"
      sha256 "718ff2c632c2e07db4057fb143ea0e5abde2f0f8979ea61a6df53a45d28459e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.31-beta.1/adversary_2026.8.31-beta.1_linux_amd64.tar.gz"
      sha256 "548e85f9c131f98e1bc96ddf93be26fbe34c2d3a9e9bd2dca4eddebfcf330baf"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.31-beta.1/adversary_2026.8.31-beta.1_linux_arm64.tar.gz"
      sha256 "61fc887f06f743e741e89cee61bddfe08890e023626da8f64b3be03ba94450b7"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
