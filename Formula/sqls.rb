class Sqls < Formula
  desc "SQL language server written in Go"
  homepage "https://github.com/lighttiger2505/sqls"
  url "https://github.com/lighttiger2505/sqls/archive/v0.2.20.tar.gz"
  sha256 "ab9a7cfc4cd881df88efd388fa2b27e7807b0580c0d9b21165946cc452905cdb"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    system "true"
  end
end
