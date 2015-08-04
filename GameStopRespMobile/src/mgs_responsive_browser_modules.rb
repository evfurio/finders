module BrowserModules
    PRODUCT_NAME="GameStopRespMobile"

	include GameStopRespMobileBrowseFinder
    include GameStopRespMobileProductDetailFinder
	include GameStopRespMobileCartFinder
	include GameStopRespMobileErrorFinder
    include GameStopRespMobileHeaderFinder
    include GameStopRespMobileFooterFinder
	include GameStopRespMobileCheckoutFinder
	
    include GameStopMobileCheckoutNewFinder
    include GameStopMobileGiftCardsFinder
    include GameStopMobilePaypalFinder

    #included desktop finders
    include GameStopSearchFinder
    include GameStopProductDetailFinder
end
