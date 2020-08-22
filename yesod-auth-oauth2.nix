{ mkDerivation, aeson, base, bytestring, cryptonite, errors
, hoauth2, hpack, hspec, http-client, http-conduit, http-types
, memory, microlens, safe-exceptions, stdenv, text, uri-bytestring
, yesod-auth, yesod-core
}:
mkDerivation {
  pname = "yesod-auth-oauth2";
  version = "0.6.1.3";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base bytestring cryptonite errors hoauth2 http-client
    http-conduit http-types memory microlens safe-exceptions text
    uri-bytestring yesod-auth yesod-core
  ];
  libraryToolDepends = [ hpack ];
  testHaskellDepends = [ base hspec uri-bytestring ];
  prePatch = "hpack";
  homepage = "http://github.com/thoughtbot/yesod-auth-oauth2";
  description = "OAuth 2.0 authentication plugins";
  license = stdenv.lib.licenses.mit;
}
