class AdversaryBeta < Formula
  desc "Run source-code adversaries against a local repository"
  homepage "https://github.com/adversarylabs/adversary"
  version "2026.9.6-beta.1"
  # No license stanza: upstream has not selected a license. See LICENSE.

  on_macos do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.6-beta.1/adversary_2026.9.6-beta.1_darwin_amd64.tar.gz"
      sha256 "3ec5f576efbb8e9d35a65eb86f9d7f499eeba8f1dc79280b54634871988ec986"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.6-beta.1/adversary_2026.9.6-beta.1_darwin_arm64.tar.gz"
      sha256 "c6f6ed1514d99f07d6bdc12d16176e34b875089045e0deba6b53a5c56653ab6e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.6-beta.1/adversary_2026.9.6-beta.1_linux_amd64.tar.gz"
      sha256 "653e530ba262d5a2c8b7b58bf73a64e5d8fc690e2c7fb3a111befa3a64bf2737"
    end

    on_arm do
      url "https://github.com/adversarylabs/adversary/releases/download/2026.9.6-beta.1/adversary_2026.9.6-beta.1_linux_arm64.tar.gz"
      sha256 "d17ea70f0106d06b497455e274c863ce5ce5fba6476c5bffa76000398c82ab9e"
    end
  end

  def install
    bin.install "adversary" => "adversary-beta"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/adversary-beta version")
  end
end
