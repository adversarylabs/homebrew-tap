class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.4-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4-beta.1/adversary_2026.9.4-beta.1_darwin_amd64.tar.gz"
      sha256 "575e6402a96d4d3c509ea6d1f05b382d71480ed46086204cc7a18b332013f0bb"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4-beta.1/adversary_2026.9.4-beta.1_darwin_arm64.tar.gz"
      sha256 "f3fe8fdcc0bfa319f96b124c62aa3674b3ed9fb41159f8a83a5a5835b9a08a36"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4-beta.1/adversary_2026.9.4-beta.1_linux_amd64.tar.gz"
      sha256 "0786f565dcc141e4a3090495496a572d49d388334f2bf7c757aef912660e3cfc"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.4-beta.1/adversary_2026.9.4-beta.1_linux_arm64.tar.gz"
      sha256 "94529b8d9d53e781039d056e84a44f9d1a488767466486c977a5a1d24e2ca0a2"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
