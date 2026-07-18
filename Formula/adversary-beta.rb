class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.17-beta.5"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.17-beta.5/adversary_2026.7.17-beta.5_darwin_amd64.tar.gz"
      sha256 "c473f32ca0594db33539d1c7803e6e70bef9bd5fac22d58d41abe44488ade42e"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.17-beta.5/adversary_2026.7.17-beta.5_darwin_arm64.tar.gz"
      sha256 "db09b47b773c5dafaf436d779118c3dcbf30e7cc85b1c6a6dcb1d14586c3781a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.17-beta.5/adversary_2026.7.17-beta.5_linux_amd64.tar.gz"
      sha256 "74957f58de714144ada6372009db3f384dd5649bdd516499ec6ff9e37b12ca01"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.17-beta.5/adversary_2026.7.17-beta.5_linux_arm64.tar.gz"
      sha256 "0a58f97537fdbad5132e078ee169e6047016e8a94e9b58a843e388e9d5695ca9"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
