{ ghcVer }:
self: super:
let inherit (super.haskell.lib) dontCheck;
in {
  haskell = super.haskell // {
    packages = super.haskell.packages // {
      "${ghcVer}" = super.haskell.packages."${ghcVer}".override {
        overrides = hself: hsuper: {
          yesod-auth-lti13 = hsuper.callPackage ../yesod-auth-oauth2.nix { };
        };
      };
    };
  };
}

