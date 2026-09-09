class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.9-beta.7"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.7/adversary_2026.9.9-beta.7_darwin_amd64.tar.gz"
      sha256 "fae218e62a7b7d48fc0b84575fca9c502af3c5fe9f5ecd065be0aa85599c0cc3"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.7/adversary_2026.9.9-beta.7_darwin_arm64.tar.gz"
      sha256 "e03085d96611568561543e9113ed5772c023f67c955fbff5fa2b572318b4c1b0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.7/adversary_2026.9.9-beta.7_linux_amd64.tar.gz"
      sha256 "2ae9cb8226fc30c824cff229d8f2a3b28dd6158e6b2dee54a4bb39aaba5aa870"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.9-beta.7/adversary_2026.9.9-beta.7_linux_arm64.tar.gz"
      sha256 "f9d48fe2a142826cb835551b2e71b2a5521b47b3313bb506b13ffcf8dc7c85bb"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
