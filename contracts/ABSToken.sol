pragma solidity ^0.6.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20Pausable.sol";

contract ABSToken is ERC20, ERC20Burnable, ERC20Pausable {

	constructor(string memory _name, string memory _symbol)
		ERC20("Abnormal Booty Salsa Token", "ABS")
		public
	 {

	 }
	 function _mintDaCasa(address to, uint256 amount) public virtual{
            _mint(to, amount);
        }

        function _mintDaCasaprive(address to, uint256 amount) internal virtual{
                 _mint(to, amount);
             }
    function _beforeTokenTransfer(address from, address to, uint256 amount) internal override(ERC20, ERC20Pausable) {
      super._beforeTokenTransfer(from, to, amount);
    }
}
