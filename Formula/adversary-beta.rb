class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.8.26-beta.2"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.26-beta.2/adversary_2026.8.26-beta.2_darwin_amd64.tar.gz"
      sha256 "f8a495b582ce1bbcb3262bfb390c7a4edc47e88bbea23ddd4d29a1d48bef331e"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.26-beta.2/adversary_2026.8.26-beta.2_darwin_arm64.tar.gz"
      sha256 "0ae719b9ef21963782d239f030485d4bc72c4d8b690938c01937031ac1bc831c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.26-beta.2/adversary_2026.8.26-beta.2_linux_amd64.tar.gz"
      sha256 "393e743073aefc5f3b9dee87a6ed13b2560fdb59fea6fec7192f5e023ef77ed4"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.8.26-beta.2/adversary_2026.8.26-beta.2_linux_arm64.tar.gz"
      sha256 "6a602a1e83c362e1202f91242d7f4c44168c049d5482f28895c66d40991bcc93"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
