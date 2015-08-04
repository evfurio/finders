module BrowserModules
    PRODUCT_NAME="GameStop"

	  include GameStopAnalyticsFinder
    include GameStopCheckoutFinder
    include GameStopSearchFinder
    include GameStopCartFinder
    include GameStopOrderHistoryFinder
    include GameStopWishListFinder
    include GameStopProductDetailFinder
    include GameStopAccountInfoFinder
    include GameStopHopsFinder
    include GameStopHTMLFinder
    include GameStopHeaderFooterFinder
    include GameStopPayPalFinder
	  include RecommerceSearchFinder
		include GameStopGiftCardsFinder
    include GameStopPURCCFinder
end
