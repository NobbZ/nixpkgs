{ lib
, fetchFromGitHub
, rustPlatform
}:

rustPlatform.buildRustPackage rec {
  pname = "moon";
  version = "v1.4.0";

  src = fetchFromGitHub {
    owner = "moonrepo";
    repo = pname;
    rev = version;
    hash = "sha256-MKrrPLiC2au/ffhwDGQeEFz3MVHLzu0hRDpsap0XX2c=";
  };

  cargoHash = "sha256-XJQ43//V2+ZxlNtx+r8QO4a7h+AtMQcsGrilKb1ARfE=";

  meta = with lib; {
    description = "A task runner and repo management tool for the web ecosystem, written in Rust.";
    homepage = "https://github.com/moonrepo/moon";
    license = licenses.mit;
    maintainers = with maintainers; [ flemzord ];
  };
}
