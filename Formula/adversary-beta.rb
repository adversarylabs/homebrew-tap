class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.3-beta.6"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.6/adversary_2026.9.3-beta.6_darwin_amd64.tar.gz"
      sha256 "db44a2d9781b3e6f456d15b550e8e057408854c9c778731bbafa4bb6ae1090e3"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.6/adversary_2026.9.3-beta.6_darwin_arm64.tar.gz"
      sha256 "274a4a5bb0ccfdd6949191270546d6a998bd950f510b3e4997406f70f4b0da10"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.6/adversary_2026.9.3-beta.6_linux_amd64.tar.gz"
      sha256 "e67395b63f98c8141c42015dccc748e9ba5364ef0e280c17d8f821b89298980a"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.3-beta.6/adversary_2026.9.3-beta.6_linux_arm64.tar.gz"
      sha256 "6c8b03ed41e0886cac23af255a06ab790e0deeede1158bf48f25f9cfd47110fb"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
