{ packages ? import <nixpkgs> {} }:

let
  # node
  nodeShell = import ../../base/node/shell.nix { inherit packages; };
  # ruby
  rubyShell = import ../../base/ruby/shell.nix { inherit packages; };
in
packages.mkShell {
  inherit (nodeShell) pure; # どちらかの設定を継承

  buildInputs = nodeShell.buildInputs ++ rubyShell.buildInputs;

  shellHook = ''
    ${nodeShell.shellHook}
    ${rubyShell.shellHook}
  ''
}
