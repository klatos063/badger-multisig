// SPDX-License-Identifier: MIT
// !! THIS FILE WAS AUTOGENERATED BY abi-to-sol v0.5.2. SEE SOURCE BELOW. !!
pragma solidity ^0.5.0;

interface IRariComptroller {
    event ActionPaused(string action, bool pauseState);
    event ActionPaused(address cToken, string action, bool pauseState);
    event Failure(uint256 error, uint256 info, uint256 detail);
    event MarketEntered(address cToken, address account);
    event MarketExited(address cToken, address account);
    event MarketListed(address cToken);
    event NewCloseFactor(
        uint256 oldCloseFactorMantissa,
        uint256 newCloseFactorMantissa
    );
    event NewCollateralFactor(
        address cToken,
        uint256 oldCollateralFactorMantissa,
        uint256 newCollateralFactorMantissa
    );
    event NewLiquidationIncentive(
        uint256 oldLiquidationIncentiveMantissa,
        uint256 newLiquidationIncentiveMantissa
    );
    event NewMaxAssets(uint256 oldMaxAssets, uint256 newMaxAssets);
    event NewPauseGuardian(address oldPauseGuardian, address newPauseGuardian);
    event NewPriceOracle(address oldPriceOracle, address newPriceOracle);

    function _become(address unitroller) external;

    function _borrowGuardianPaused() external view returns (bool);

    function _mintGuardianPaused() external view returns (bool);

    function _setBorrowPaused(address cToken, bool state)
        external
        returns (bool);

    function _setCloseFactor(uint256 newCloseFactorMantissa)
        external
        returns (uint256);

    function _setCollateralFactor(
        address cToken,
        uint256 newCollateralFactorMantissa
    ) external returns (uint256);

    function _setLiquidationIncentive(uint256 newLiquidationIncentiveMantissa)
        external
        returns (uint256);

    function _setMaxAssets(uint256 newMaxAssets) external returns (uint256);

    function _setMintPaused(address cToken, bool state) external returns (bool);

    function _setPauseGuardian(address newPauseGuardian)
        external
        returns (uint256);

    function _setPriceOracle(address newOracle) external returns (uint256);

    function _setSeizePaused(bool state) external returns (bool);

    function _setTransferPaused(bool state) external returns (bool);

    function _supportMarket(address cToken) external returns (uint256);

    function _supportMarketAndSetCollateralFactor(
        address cToken,
        uint256 newCollateralFactorMantissa
    ) external returns (uint256);

    function accountAssets(address, uint256) external view returns (address);

    function admin() external view returns (address);

    function adminHasRights() external view returns (bool);

    function allBorrowers(uint256) external view returns (address);

    function allMarkets(uint256) external view returns (address);

    function borrowAllowed(
        address cToken,
        address borrower,
        uint256 borrowAmount
    ) external returns (uint256);

    function borrowGuardianPaused(address) external view returns (bool);

    function borrowVerify(
        address cToken,
        address borrower,
        uint256 borrowAmount
    ) external;

    function borrowWithinLimits(address cToken, uint256 accountBorrowsNew)
        external
        returns (uint256);

    function cTokensByUnderlying(address) external view returns (address);

    function checkMembership(address account, address cToken)
        external
        view
        returns (bool);

    function closeFactorMantissa() external view returns (uint256);

    function comptrollerImplementation() external view returns (address);

    function enforceWhitelist() external view returns (bool);

    function enterMarkets(address[] calldata cTokens)
        external
        returns (uint256[] memory);

    function exitMarket(address cTokenAddress) external returns (uint256);

    function fuseAdminHasRights() external view returns (bool);

    function getAccountLiquidity(address account)
        external
        view
        returns (
            uint256,
            uint256,
            uint256
        );

    function getAllBorrowers() external view returns (address[] memory);

    function getAllMarkets() external view returns (address[] memory);

    function getAssetsIn(address account)
        external
        view
        returns (address[] memory);

    function getHypotheticalAccountLiquidity(
        address account,
        address cTokenModify,
        uint256 redeemTokens,
        uint256 borrowAmount
    )
        external
        view
        returns (
            uint256,
            uint256,
            uint256
        );

    function getMaxBorrow(address account, address cTokenModify)
        external
        returns (uint256, uint256);

    function getMaxRedeem(address account, address cTokenModify)
        external
        returns (uint256, uint256);

    function isComptroller() external view returns (bool);

    function liquidateBorrowAllowed(
        address cTokenBorrowed,
        address cTokenCollateral,
        address liquidator,
        address borrower,
        uint256 repayAmount
    ) external returns (uint256);

    function liquidateBorrowVerify(
        address cTokenBorrowed,
        address cTokenCollateral,
        address liquidator,
        address borrower,
        uint256 actualRepayAmount,
        uint256 seizeTokens
    ) external;

    function liquidateCalculateSeizeTokens(
        address cTokenBorrowed,
        address cTokenCollateral,
        uint256 actualRepayAmount
    ) external view returns (uint256, uint256);

    function liquidationIncentiveMantissa() external view returns (uint256);

    function markets(address)
        external
        view
        returns (bool isListed, uint256 collateralFactorMantissa);

    function maxAssets() external view returns (uint256);

    function mintAllowed(
        address cToken,
        address minter,
        uint256 mintAmount
    ) external returns (uint256);

    function mintGuardianPaused(address) external view returns (bool);

    function mintVerify(
        address cToken,
        address minter,
        uint256 actualMintAmount,
        uint256 mintTokens
    ) external;

    function mintWithinLimits(
        address cToken,
        uint256 exchangeRateMantissa,
        uint256 accountTokens,
        uint256 mintAmount
    ) external returns (uint256);

    function oracle() external view returns (address);

    function pauseGuardian() external view returns (address);

    function pendingAdmin() external view returns (address);

    function pendingComptrollerImplementation() external view returns (address);

    function redeemAllowed(
        address cToken,
        address redeemer,
        uint256 redeemTokens
    ) external returns (uint256);

    function redeemVerify(
        address cToken,
        address redeemer,
        uint256 redeemAmount,
        uint256 redeemTokens
    ) external;

    function repayBorrowAllowed(
        address cToken,
        address payer,
        address borrower,
        uint256 repayAmount
    ) external returns (uint256);

    function repayBorrowVerify(
        address cToken,
        address payer,
        address borrower,
        uint256 actualRepayAmount,
        uint256 borrowerIndex
    ) external;

    function seizeAllowed(
        address cTokenCollateral,
        address cTokenBorrowed,
        address liquidator,
        address borrower,
        uint256 seizeTokens
    ) external returns (uint256);

    function seizeGuardianPaused() external view returns (bool);

    function seizeVerify(
        address cTokenCollateral,
        address cTokenBorrowed,
        address liquidator,
        address borrower,
        uint256 seizeTokens
    ) external;

    function suppliers(address) external view returns (bool);

    function transferAllowed(
        address cToken,
        address src,
        address dst,
        uint256 transferTokens
    ) external returns (uint256);

    function transferGuardianPaused() external view returns (bool);

    function transferVerify(
        address cToken,
        address src,
        address dst,
        uint256 transferTokens
    ) external;

    function whitelist(address) external view returns (bool);

    function whitelistArray(uint256) external view returns (address);
}

// THIS FILE WAS AUTOGENERATED FROM THE FOLLOWING ABI JSON:
/*
[{"inputs":[],"stateMutability":"nonpayable","type":"constructor"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"string","name":"action","type":"string"},{"indexed":false,"internalType":"bool","name":"pauseState","type":"bool"}],"name":"ActionPaused","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"contract CToken","name":"cToken","type":"address"},{"indexed":false,"internalType":"string","name":"action","type":"string"},{"indexed":false,"internalType":"bool","name":"pauseState","type":"bool"}],"name":"ActionPaused","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"error","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"info","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"detail","type":"uint256"}],"name":"Failure","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"contract CToken","name":"cToken","type":"address"},{"indexed":false,"internalType":"address","name":"account","type":"address"}],"name":"MarketEntered","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"contract CToken","name":"cToken","type":"address"},{"indexed":false,"internalType":"address","name":"account","type":"address"}],"name":"MarketExited","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"contract CToken","name":"cToken","type":"address"}],"name":"MarketListed","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"oldCloseFactorMantissa","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"newCloseFactorMantissa","type":"uint256"}],"name":"NewCloseFactor","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"contract CToken","name":"cToken","type":"address"},{"indexed":false,"internalType":"uint256","name":"oldCollateralFactorMantissa","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"newCollateralFactorMantissa","type":"uint256"}],"name":"NewCollateralFactor","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"oldLiquidationIncentiveMantissa","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"newLiquidationIncentiveMantissa","type":"uint256"}],"name":"NewLiquidationIncentive","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"uint256","name":"oldMaxAssets","type":"uint256"},{"indexed":false,"internalType":"uint256","name":"newMaxAssets","type":"uint256"}],"name":"NewMaxAssets","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"address","name":"oldPauseGuardian","type":"address"},{"indexed":false,"internalType":"address","name":"newPauseGuardian","type":"address"}],"name":"NewPauseGuardian","type":"event"},{"anonymous":false,"inputs":[{"indexed":false,"internalType":"contract PriceOracle","name":"oldPriceOracle","type":"address"},{"indexed":false,"internalType":"contract PriceOracle","name":"newPriceOracle","type":"address"}],"name":"NewPriceOracle","type":"event"},{"inputs":[{"internalType":"contract Unitroller","name":"unitroller","type":"address"}],"name":"_become","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"_borrowGuardianPaused","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"_mintGuardianPaused","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"contract CToken","name":"cToken","type":"address"},{"internalType":"bool","name":"state","type":"bool"}],"name":"_setBorrowPaused","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"newCloseFactorMantissa","type":"uint256"}],"name":"_setCloseFactor","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"contract CToken","name":"cToken","type":"address"},{"internalType":"uint256","name":"newCollateralFactorMantissa","type":"uint256"}],"name":"_setCollateralFactor","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"newLiquidationIncentiveMantissa","type":"uint256"}],"name":"_setLiquidationIncentive","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"uint256","name":"newMaxAssets","type":"uint256"}],"name":"_setMaxAssets","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"contract CToken","name":"cToken","type":"address"},{"internalType":"bool","name":"state","type":"bool"}],"name":"_setMintPaused","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"newPauseGuardian","type":"address"}],"name":"_setPauseGuardian","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"contract PriceOracle","name":"newOracle","type":"address"}],"name":"_setPriceOracle","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"bool","name":"state","type":"bool"}],"name":"_setSeizePaused","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"bool","name":"state","type":"bool"}],"name":"_setTransferPaused","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"contract CToken","name":"cToken","type":"address"}],"name":"_supportMarket","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"contract CToken","name":"cToken","type":"address"},{"internalType":"uint256","name":"newCollateralFactorMantissa","type":"uint256"}],"name":"_supportMarketAndSetCollateralFactor","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"},{"internalType":"uint256","name":"","type":"uint256"}],"name":"accountAssets","outputs":[{"internalType":"contract CToken","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"admin","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"adminHasRights","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"","type":"uint256"}],"name":"allBorrowers","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"","type":"uint256"}],"name":"allMarkets","outputs":[{"internalType":"contract CToken","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"cToken","type":"address"},{"internalType":"address","name":"borrower","type":"address"},{"internalType":"uint256","name":"borrowAmount","type":"uint256"}],"name":"borrowAllowed","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"}],"name":"borrowGuardianPaused","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"cToken","type":"address"},{"internalType":"address","name":"borrower","type":"address"},{"internalType":"uint256","name":"borrowAmount","type":"uint256"}],"name":"borrowVerify","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"cToken","type":"address"},{"internalType":"uint256","name":"accountBorrowsNew","type":"uint256"}],"name":"borrowWithinLimits","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"}],"name":"cTokensByUnderlying","outputs":[{"internalType":"contract CToken","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"account","type":"address"},{"internalType":"contract CToken","name":"cToken","type":"address"}],"name":"checkMembership","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"closeFactorMantissa","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"comptrollerImplementation","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"enforceWhitelist","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address[]","name":"cTokens","type":"address[]"}],"name":"enterMarkets","outputs":[{"internalType":"uint256[]","name":"","type":"uint256[]"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"cTokenAddress","type":"address"}],"name":"exitMarket","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"fuseAdminHasRights","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"account","type":"address"}],"name":"getAccountLiquidity","outputs":[{"internalType":"uint256","name":"","type":"uint256"},{"internalType":"uint256","name":"","type":"uint256"},{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getAllBorrowers","outputs":[{"internalType":"address[]","name":"","type":"address[]"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"getAllMarkets","outputs":[{"internalType":"contract CToken[]","name":"","type":"address[]"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"account","type":"address"}],"name":"getAssetsIn","outputs":[{"internalType":"contract CToken[]","name":"","type":"address[]"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"account","type":"address"},{"internalType":"address","name":"cTokenModify","type":"address"},{"internalType":"uint256","name":"redeemTokens","type":"uint256"},{"internalType":"uint256","name":"borrowAmount","type":"uint256"}],"name":"getHypotheticalAccountLiquidity","outputs":[{"internalType":"uint256","name":"","type":"uint256"},{"internalType":"uint256","name":"","type":"uint256"},{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"account","type":"address"},{"internalType":"contract CToken","name":"cTokenModify","type":"address"}],"name":"getMaxBorrow","outputs":[{"internalType":"uint256","name":"","type":"uint256"},{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"account","type":"address"},{"internalType":"contract CToken","name":"cTokenModify","type":"address"}],"name":"getMaxRedeem","outputs":[{"internalType":"uint256","name":"","type":"uint256"},{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"isComptroller","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"cTokenBorrowed","type":"address"},{"internalType":"address","name":"cTokenCollateral","type":"address"},{"internalType":"address","name":"liquidator","type":"address"},{"internalType":"address","name":"borrower","type":"address"},{"internalType":"uint256","name":"repayAmount","type":"uint256"}],"name":"liquidateBorrowAllowed","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"cTokenBorrowed","type":"address"},{"internalType":"address","name":"cTokenCollateral","type":"address"},{"internalType":"address","name":"liquidator","type":"address"},{"internalType":"address","name":"borrower","type":"address"},{"internalType":"uint256","name":"actualRepayAmount","type":"uint256"},{"internalType":"uint256","name":"seizeTokens","type":"uint256"}],"name":"liquidateBorrowVerify","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"cTokenBorrowed","type":"address"},{"internalType":"address","name":"cTokenCollateral","type":"address"},{"internalType":"uint256","name":"actualRepayAmount","type":"uint256"}],"name":"liquidateCalculateSeizeTokens","outputs":[{"internalType":"uint256","name":"","type":"uint256"},{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"liquidationIncentiveMantissa","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"}],"name":"markets","outputs":[{"internalType":"bool","name":"isListed","type":"bool"},{"internalType":"uint256","name":"collateralFactorMantissa","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"maxAssets","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"cToken","type":"address"},{"internalType":"address","name":"minter","type":"address"},{"internalType":"uint256","name":"mintAmount","type":"uint256"}],"name":"mintAllowed","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"}],"name":"mintGuardianPaused","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"cToken","type":"address"},{"internalType":"address","name":"minter","type":"address"},{"internalType":"uint256","name":"actualMintAmount","type":"uint256"},{"internalType":"uint256","name":"mintTokens","type":"uint256"}],"name":"mintVerify","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"cToken","type":"address"},{"internalType":"uint256","name":"exchangeRateMantissa","type":"uint256"},{"internalType":"uint256","name":"accountTokens","type":"uint256"},{"internalType":"uint256","name":"mintAmount","type":"uint256"}],"name":"mintWithinLimits","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"oracle","outputs":[{"internalType":"contract PriceOracle","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"pauseGuardian","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"pendingAdmin","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[],"name":"pendingComptrollerImplementation","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"cToken","type":"address"},{"internalType":"address","name":"redeemer","type":"address"},{"internalType":"uint256","name":"redeemTokens","type":"uint256"}],"name":"redeemAllowed","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"cToken","type":"address"},{"internalType":"address","name":"redeemer","type":"address"},{"internalType":"uint256","name":"redeemAmount","type":"uint256"},{"internalType":"uint256","name":"redeemTokens","type":"uint256"}],"name":"redeemVerify","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"cToken","type":"address"},{"internalType":"address","name":"payer","type":"address"},{"internalType":"address","name":"borrower","type":"address"},{"internalType":"uint256","name":"repayAmount","type":"uint256"}],"name":"repayBorrowAllowed","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"cToken","type":"address"},{"internalType":"address","name":"payer","type":"address"},{"internalType":"address","name":"borrower","type":"address"},{"internalType":"uint256","name":"actualRepayAmount","type":"uint256"},{"internalType":"uint256","name":"borrowerIndex","type":"uint256"}],"name":"repayBorrowVerify","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"cTokenCollateral","type":"address"},{"internalType":"address","name":"cTokenBorrowed","type":"address"},{"internalType":"address","name":"liquidator","type":"address"},{"internalType":"address","name":"borrower","type":"address"},{"internalType":"uint256","name":"seizeTokens","type":"uint256"}],"name":"seizeAllowed","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"seizeGuardianPaused","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"cTokenCollateral","type":"address"},{"internalType":"address","name":"cTokenBorrowed","type":"address"},{"internalType":"address","name":"liquidator","type":"address"},{"internalType":"address","name":"borrower","type":"address"},{"internalType":"uint256","name":"seizeTokens","type":"uint256"}],"name":"seizeVerify","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"}],"name":"suppliers","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"cToken","type":"address"},{"internalType":"address","name":"src","type":"address"},{"internalType":"address","name":"dst","type":"address"},{"internalType":"uint256","name":"transferTokens","type":"uint256"}],"name":"transferAllowed","outputs":[{"internalType":"uint256","name":"","type":"uint256"}],"stateMutability":"nonpayable","type":"function"},{"inputs":[],"name":"transferGuardianPaused","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"address","name":"cToken","type":"address"},{"internalType":"address","name":"src","type":"address"},{"internalType":"address","name":"dst","type":"address"},{"internalType":"uint256","name":"transferTokens","type":"uint256"}],"name":"transferVerify","outputs":[],"stateMutability":"nonpayable","type":"function"},{"inputs":[{"internalType":"address","name":"","type":"address"}],"name":"whitelist","outputs":[{"internalType":"bool","name":"","type":"bool"}],"stateMutability":"view","type":"function"},{"inputs":[{"internalType":"uint256","name":"","type":"uint256"}],"name":"whitelistArray","outputs":[{"internalType":"address","name":"","type":"address"}],"stateMutability":"view","type":"function"}]
*/
