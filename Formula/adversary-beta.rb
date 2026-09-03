class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.3-beta.5"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.5/adversary_2026.9.3-beta.5_darwin_amd64.tar.gz"
      sha256 "df34648da5d3cc0329ffaf1279d0854d100846a4c998e43f0e47fa61e3cef01b"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.5/adversary_2026.9.3-beta.5_darwin_arm64.tar.gz"
      sha256 "18d9a850fb70674bbcfccd840bcda8c411ff8a971f7f85c6832b4dd31b48b4e9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.5/adversary_2026.9.3-beta.5_linux_amd64.tar.gz"
      sha256 "6b7876cb37685320bd4993de26f902942d6939868d45804778a7e82d4141da3e"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.5/adversary_2026.9.3-beta.5_linux_arm64.tar.gz"
      sha256 "0416962d51ddfa8f230f72acb070e0058b220f86fd10088e238c533c38cb84cc"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
