import SoraFoundation

protocol CrowdloanListInteractorInputProtocol: AnyObject {
    func setup()
    func refresh()
    func saveSelected(chainModel: ChainModel)
    func becomeOnline()
    func putOffline()
}

protocol CrowdloanListInteractorOutputProtocol: AnyObject {
    func didReceiveCrowdloans(result: Result<[Crowdloan], Error>)
    func didReceiveDisplayInfo(result: Result<CrowdloanDisplayInfoDict, Error>)
    func didReceiveBlockNumber(result: Result<BlockNumber?, Error>)
    func didReceiveBlockDuration(result: Result<BlockTime, Error>)
    func didReceiveLeasingPeriod(result: Result<LeasingPeriod, Error>)
    func didReceiveContributions(result: Result<CrowdloanContributionDict, Error>)
    func didReceiveExternalContributions(result: Result<[ExternalContribution], Error>)
    func didReceiveLeaseInfo(result: Result<ParachainLeaseInfoDict, Error>)
    func didReceiveSelectedChain(result: Result<ChainModel, Error>)
    func didReceiveAccountInfo(result: Result<AccountInfo?, Error>)
}
