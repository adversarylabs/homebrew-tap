class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.20-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.20-beta.1/adversary_2026.7.20-beta.1_darwin_amd64.tar.gz"
      sha256 "f07daa668cba8eb8c7cfd0ad7e37e1d652b04c27ca93c8604583a2c5854ed799"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.20-beta.1/adversary_2026.7.20-beta.1_darwin_arm64.tar.gz"
      sha256 "097ef5d96c4269b19b1fa7787c5f1aa1643600f1e0dbe7649a29daef0f544872"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.20-beta.1/adversary_2026.7.20-beta.1_linux_amd64.tar.gz"
      sha256 "26148eb3b956c9b61ed31d6ebe07a810f51d669ec846494c32367cd452a90095"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.20-beta.1/adversary_2026.7.20-beta.1_linux_arm64.tar.gz"
      sha256 "aae76580df98db1e822bb303b706ad4fe325cc2f788dbc001f2f71496dc665a0"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
