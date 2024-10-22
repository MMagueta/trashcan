{ config, pkgs, lib, ... }:

{
  nixpkgs.overlays = [
    (self: super: {
      erlang = super.erlang.overrideAttrs {
        version = "27.0.1";
        sha256 = "sha256-Lp6J9eq6RXDi0RRjeVO/CIa4h/m7/fwOp/y0u0sTdFQ=";
      };
    })
  ];
}