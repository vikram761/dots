{
	inputs = {
		nixpkgs.url = "nixpkgs/nixos-unstable";
		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};
	outputs = {self, nixpkgs, home-manager, ... }@inputs: {
		nixosConfigurations.dark = nixpkgs.lib.nixosSystem {
			system = "x86_64-linux";
			modules = [ 
				./system/configuration.nix
				home-manager.nixosModules.home-manager {
					home-manager.useGlobalPkgs = true;
					home-manager.useUserPackages = true;
					home-manager.backupFileExtension = "backup";
					home-manager.users.vikram_18 = import ./home;
				}
			];
			specialArgs = { inherit inputs; };
		};
	};
}
