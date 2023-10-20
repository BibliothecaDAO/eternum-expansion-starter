# eternum-expansion-starter

Eternum Expansion Starter: A comprehensive starter template for creating expansions for [Eternum](https://github.com/BibliothecaDAO/eternum), the first major mod of the Realms Autonomous World.

Note: to use dojo-language-server, make sure to update `cairo1.languageServerPath` in `.vscode/settings.json` to the path of your dojo-language-server installation. You can get it by running `$ where dojo-language_server` in your terminal

## Installation

Eternum is built using dojo engine. You can install the dojo toolchain by:

```
curl -L https://install.dojoengine.org | bash
```

Read the dojo book [here](https://book.dojoengine.org/index.html) to discover the toolchain in depth.

## Launch Eternum locally

Follow the steps [here](https://github.com/BibliothecaDAO/eternum/blob/3e234d4f3d9a40e4413162c16833f0f7e69b0b77/client/README.md).

## Updating your local Eternum world

1. In contracts directory, add your new models/systems
2. Build your new contracts: `sozo build`
3. In Scarb.toml comment out account_address, private_key and world_address under ##prod and uncomment under ##dev
4. Update remote eternum world: `sozo migrate`

## Updating the remote Eternum world

1. In contracts directory, add your new models/systems
2. Build your new contracts: `sozo build`
3. In Scarb.toml comment out account_address, private_key and world_address under ##dev and uncomment under ##prod
4. Update remote eternum world: `sozo migrate rpc-url https://api.cartridge.gg/x/eternum/katana`
