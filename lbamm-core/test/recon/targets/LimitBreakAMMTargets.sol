// SPDX-License-Identifier: GPL-2.0
pragma solidity ^0.8.0;

import {BaseTargetFunctions} from "@chimera/BaseTargetFunctions.sol";
import {BeforeAfter} from "../BeforeAfter.sol";
import {Properties} from "../Properties.sol";
// Chimera deps
import {vm} from "@chimera/Hevm.sol";

// Helpers
import {Panic} from "@recon/Panic.sol";

import "src/LimitBreakAMM.sol";

abstract contract LimitBreakAMMTargets is
    BaseTargetFunctions,
    Properties
{
    /// CUSTOM TARGET FUNCTIONS - Add your own target functions here ///


    /// AUTO GENERATED TARGET FUNCTIONS - WARNING: DO NOT DELETE OR MODIFY THIS LINE ///

    function limitBreakAMM___activateTstore() public asActor {
        limitBreakAMM.__activateTstore();
    }

    function limitBreakAMM_addLiquidity(LiquidityModificationParams memory liquidityParams, LiquidityHooksExtraData memory liquidityHooksExtraData) public payable asActor {
        limitBreakAMM.addLiquidity{value: msg.value}(liquidityParams, liquidityHooksExtraData);
    }

    function limitBreakAMM_collectFees(LiquidityCollectFeesParams memory liquidityParams, LiquidityHooksExtraData memory liquidityHooksExtraData) public asActor {
        limitBreakAMM.collectFees(liquidityParams, liquidityHooksExtraData);
    }

    function limitBreakAMM_collectHookFeesByHook(address tokenFor, address tokenFee, address recipient, uint256 amount) public asActor {
        limitBreakAMM.collectHookFeesByHook(tokenFor, tokenFee, recipient, amount);
    }

    function limitBreakAMM_collectHookFeesByToken(address tokenFor, address tokenFee, address recipient, uint256 amount) public asActor {
        limitBreakAMM.collectHookFeesByToken(tokenFor, tokenFee, recipient, amount);
    }

    function limitBreakAMM_collectProtocolFees(address[] memory tokens) public asActor {
        limitBreakAMM.collectProtocolFees(tokens);
    }

    function limitBreakAMM_collectTokensOwed(address[] memory tokensOwed) public asActor {
        limitBreakAMM.collectTokensOwed(tokensOwed);
    }

    function limitBreakAMM_createPool(PoolCreationDetails memory details, bytes memory token0HookData, bytes memory token1HookData, bytes memory poolHookData, bytes memory liquidityData) public payable asActor {
        limitBreakAMM.createPool{value: msg.value}(details, token0HookData, token1HookData, poolHookData, liquidityData);
    }

    function limitBreakAMM_directSwap(SwapOrder memory swapOrder, DirectSwapParams memory directSwapParams, BPSFeeWithRecipient memory exchangeFee, FlatFeeWithRecipient memory feeOnTop, SwapHooksExtraData memory swapHooksExtraData, bytes memory transferData) public payable asActor {
        limitBreakAMM.directSwap{value: msg.value}(swapOrder, directSwapParams, exchangeFee, feeOnTop, swapHooksExtraData, transferData);
    }

    function limitBreakAMM_executeQueuedHookFeesByHookTransfers() public asActor {
        limitBreakAMM.executeQueuedHookFeesByHookTransfers();
    }

    function limitBreakAMM_executeStaticDelegateCall(address target, bytes memory data) public asActor {
        limitBreakAMM.executeStaticDelegateCall(target, data);
    }

    function limitBreakAMM_flashLoan(FlashloanRequest memory flashloanRequest) public asActor {
        limitBreakAMM.flashLoan(flashloanRequest);
    }

    function limitBreakAMM_multiSwap(SwapOrder memory swapOrder, bytes32[] memory poolIds, BPSFeeWithRecipient memory exchangeFee, FlatFeeWithRecipient memory feeOnTop, SwapHooksExtraData[] memory swapHooksExtraDatas, bytes memory transferData) public payable asActor {
        limitBreakAMM.multiSwap{value: msg.value}(swapOrder, poolIds, exchangeFee, feeOnTop, swapHooksExtraDatas, transferData);
    }

    function limitBreakAMM_removeLiquidity(LiquidityModificationParams memory liquidityParams, LiquidityHooksExtraData memory liquidityHooksExtraData) public asActor {
        limitBreakAMM.removeLiquidity(liquidityParams, liquidityHooksExtraData);
    }

    function limitBreakAMM_setExchangeProtocolFeeOverride(address recipient, bool feeOverrideEnabled, uint256 protocolFeeBPS) public asActor {
        limitBreakAMM.setExchangeProtocolFeeOverride(recipient, feeOverrideEnabled, protocolFeeBPS);
    }

    function limitBreakAMM_setFeeOnTopProtocolFeeOverride(address recipient, bool feeOverrideEnabled, uint256 protocolFeeBPS) public asActor {
        limitBreakAMM.setFeeOnTopProtocolFeeOverride(recipient, feeOverrideEnabled, protocolFeeBPS);
    }

    function limitBreakAMM_setFlashloanFee(uint256 flashLoanBPS) public asActor {
        limitBreakAMM.setFlashloanFee(flashLoanBPS);
    }

    function limitBreakAMM_setLPProtocolFeeOverride(bytes32 poolId, bool feeOverrideEnabled, uint256 protocolFeeBPS) public asActor {
        limitBreakAMM.setLPProtocolFeeOverride(poolId, feeOverrideEnabled, protocolFeeBPS);
    }

    function limitBreakAMM_setProtocolFees(ProtocolFeeStructure memory protocolFeeStructure) public asActor {
        limitBreakAMM.setProtocolFees(protocolFeeStructure);
    }

    function limitBreakAMM_setTokenFees(address[] memory tokens, uint16[] memory hopFeesBPS) public asActor {
        limitBreakAMM.setTokenFees(tokens, hopFeesBPS);
    }

    function limitBreakAMM_setTokenSettings(address token, address tokenHook, uint32 packedSettings) public asActor {
        limitBreakAMM.setTokenSettings(token, tokenHook, packedSettings);
    }

    function limitBreakAMM_singleSwap(SwapOrder memory swapOrder, bytes32 poolId, BPSFeeWithRecipient memory exchangeFee, FlatFeeWithRecipient memory feeOnTop, SwapHooksExtraData memory swapHooksExtraData, bytes memory transferData) public payable asActor {
        limitBreakAMM.singleSwap{value: msg.value}(swapOrder, poolId, exchangeFee, feeOnTop, swapHooksExtraData, transferData);
    }
}