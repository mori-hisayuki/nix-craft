{ packages ? import <nixpkgs> {} }:

let 
  # 共通の設定
  baseShell = import ../../shells/shell.nix { inherit packages; };
in
packages.mkShell {
  # 基本シェルから設定を継承
  inherit (baseShell) pure;

  buildInputs = baseShell.buildInputs ++ (with packages; [
    ruby_3_3 # Ruby 3.3系
    bundler # Bundler
  ]);

  shellHook = ''
    ${baseShell.shellHook}
    echo "Ruby development environment activated"
    echo "Ruby version: $(ruby --version)"
    echo "Bundler version: $(bundle --version)"
  '';
}
