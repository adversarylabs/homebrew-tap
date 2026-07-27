class Adversary < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.7.27"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.27/adversary_2026.7.27_darwin_amd64.tar.gz"
      sha256 "ead081ec71c56e43e6fd343940dc07422efd5ac353410b4e9709106709a75377"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.27/adversary_2026.7.27_darwin_arm64.tar.gz"
      sha256 "5f45118c3ee68466ccea393c653c02a0654c37e582a8b376e273dec18afcc463"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.27/adversary_2026.7.27_linux_amd64.tar.gz"
      sha256 "665c445727b66aa42a2c2d0ea2f16fa6fb8dd7ca8522999c5d72d009d9e4013c"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.7.27/adversary_2026.7.27_linux_arm64.tar.gz"
      sha256 "7bacfb6ade1e50de310706d3c0b55973ccb1022714231b4efa24e0d64d9f4d35"
    end
  end

  def install
    bin.install "adversary" => "adversary"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary version")
  end
end
