# @dev Implementation of ERC-721 non-fungible token standard.

from vyper.interfaces import ERC721

implements: ERC721

# Interface for the contract called by safeTransferFrom()
interface ERC721Receiver:
    def onERC721Received(
        _operator: address,
        _from: address,
        _tokenId: uint256,
        _data: Bytes[1024]
    ) -> bytes32: view


# @dev Emits when ownership of any NFT changes by any mechanism.This emits when NFTs are 
    # created ('from' == 0) and destroyed ('to' == 0). Exception: during contract creation, any number of 
    # NFTs may be created and assigned without emitting Transfer. At the time of any transfer, approved address 
    # for that NFT (if any) is reset to none.
# @param _from Sender of NFT (if address is zero it indicates token creation.)
# @param _to Receiver of NFT (if address is zero it indicates token destruction)
# @param _tokenId The NFT that got transferred.
event Transfer:
    sender: indexed(address)
    receiver: indexed()
