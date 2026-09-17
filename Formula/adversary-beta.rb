class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.18-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.18-beta.1/adversary_2026.9.18-beta.1_darwin_amd64.tar.gz"
      sha256 "84af892affc9e531127609d6c169a25e1492e6a137e3e53fa8bf9cc8ed7deca4"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.18-beta.1/adversary_2026.9.18-beta.1_darwin_arm64.tar.gz"
      sha256 "08c54697991cdd21f775a340cac6219b0c582743f9da65b55ff8f2fd29260918"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.18-beta.1/adversary_2026.9.18-beta.1_linux_amd64.tar.gz"
      sha256 "98c90f3b3de70e547a0a4f86e6127ea021fe54691306962e39c10f8c50661264"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.18-beta.1/adversary_2026.9.18-beta.1_linux_arm64.tar.gz"
      sha256 "5d0dbea6aaae7720f5221a41abf685d4279a5b9f2eb27a84fbbdafe5be384295"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
