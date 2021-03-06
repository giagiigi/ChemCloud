IF OBJECT_ID(N'[dbo].[FK_BonusGrantId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ShopBonusReceive] DROP CONSTRAINT [FK_BonusGrantId];
GO
IF OBJECT_ID(N'[dbo].[FK_CategoryId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_Products] DROP CONSTRAINT [FK_CategoryId];
GO
IF OBJECT_ID(N'[dbo].[FK_Collocation_CollPoruducts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_CollocationPoruducts] DROP CONSTRAINT [FK_Collocation_CollPoruducts];
GO
IF OBJECT_ID(N'[dbo].[FK_ColloProuducts_Skus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_CollocationSkus] DROP CONSTRAINT [FK_ColloProuducts_Skus];
GO
IF OBJECT_ID(N'[dbo].[FK_Himall_CategoriesObligation_Categories]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_CategoryCashDeposit] DROP CONSTRAINT [FK_Himall_CategoriesObligation_Categories];
GO
IF OBJECT_ID(N'[dbo].[FK_Himall_Gitem_OrderId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_GiftOrderItem] DROP CONSTRAINT [FK_Himall_Gitem_OrderId];
GO
IF OBJECT_ID(N'[dbo].[FK_Himall_WXLog_CardLogId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_WXCardCodeLog] DROP CONSTRAINT [FK_Himall_WXLog_CardLogId];
GO
IF OBJECT_ID(N'[dbo].[FK_Product_ColloSkus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_CollocationSkus] DROP CONSTRAINT [FK_Product_ColloSkus];
GO
IF OBJECT_ID(N'[dbo].[FK_Product_CollPoruducts]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_CollocationPoruducts] DROP CONSTRAINT [FK_Product_CollPoruducts];
GO
IF OBJECT_ID(N'[dbo].[FK_Reference_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_BonusReceive] DROP CONSTRAINT [FK_Reference_1];
GO
IF OBJECT_ID(N'[dbo].[FK_Reference_Himall_CapitalDetail]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_CapitalDetail] DROP CONSTRAINT [FK_Reference_Himall_CapitalDetail];
GO
IF OBJECT_ID(N'[dbo].[FK_ShopBonusId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ShopBonusGrant] DROP CONSTRAINT [FK_ShopBonusId];
GO
IF OBJECT_ID(N'[dbo].[FK_SHOPID]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_Products] DROP CONSTRAINT [FK_SHOPID];
GO
IF OBJECT_ID(N'[dbo].[FK_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_BonusReceive] DROP CONSTRAINT [FK_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_useUserID]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ShopBonusReceive] DROP CONSTRAINT [FK_useUserID];
GO
IF OBJECT_ID(N'[dbo].[FK_zzzShopId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ShopBonus] DROP CONSTRAINT [FK_zzzShopId];
GO
IF OBJECT_ID(N'[dbo].[FK_zzzUserID]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ShopBonusGrant] DROP CONSTRAINT [FK_zzzUserID];
GO
IF OBJECT_ID(N'[dbo].[FK_FloorIdFK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_FloorTabls] DROP CONSTRAINT [FK_FloorIdFK];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_accountdetails_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_AccountDetails] DROP CONSTRAINT [FK_himall_accountdetails_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_accountpurchaseagreement_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_AccountPurchaseAgreement] DROP CONSTRAINT [FK_himall_accountpurchaseagreement_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_articles_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_Articles] DROP CONSTRAINT [FK_himall_articles_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_attributes_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_Attributes] DROP CONSTRAINT [FK_himall_attributes_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_attributevalues_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_AttributeValues] DROP CONSTRAINT [FK_himall_attributevalues_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_browsinghistory_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_BrowsingHistory] DROP CONSTRAINT [FK_himall_browsinghistory_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_browsinghistory_ibfk_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_BrowsingHistory] DROP CONSTRAINT [FK_himall_browsinghistory_ibfk_2];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_businesscategories_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_BusinessCategories] DROP CONSTRAINT [FK_himall_businesscategories_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_cashdeposit_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_CashDeposit] DROP CONSTRAINT [FK_himall_cashdeposit_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_cashdepositdetail_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_CashDepositDetail] DROP CONSTRAINT [FK_himall_cashdepositdetail_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_categories_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_Categories] DROP CONSTRAINT [FK_himall_categories_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_coupon_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_Coupon] DROP CONSTRAINT [FK_himall_coupon_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_couponrecord_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_CouponRecord] DROP CONSTRAINT [FK_himall_couponrecord_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_couponrecord_ibfk_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_CouponRecord] DROP CONSTRAINT [FK_himall_couponrecord_ibfk_2];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_favorites_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_Favorites] DROP CONSTRAINT [FK_himall_favorites_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_favorites_ibfk_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_Favorites] DROP CONSTRAINT [FK_himall_favorites_ibfk_2];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_floorbrands_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_FloorBrands] DROP CONSTRAINT [FK_himall_floorbrands_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_floorbrands_ibfk_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_FloorBrands] DROP CONSTRAINT [FK_himall_floorbrands_ibfk_2];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_floorcategories_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_FloorCategories] DROP CONSTRAINT [FK_himall_floorcategories_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_floorcategories_ibfk_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_FloorCategories] DROP CONSTRAINT [FK_himall_floorcategories_ibfk_2];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_floorproducts_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_FloorProducts] DROP CONSTRAINT [FK_himall_floorproducts_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_floorproducts_ibfk_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_FloorProducts] DROP CONSTRAINT [FK_himall_floorproducts_ibfk_2];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_floortopics_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_FloorTopics] DROP CONSTRAINT [FK_himall_floortopics_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_freightareacontent_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_FreightAreaContent] DROP CONSTRAINT [FK_himall_freightareacontent_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_homecategories_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_HomeCategories] DROP CONSTRAINT [FK_himall_homecategories_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_marketservicerecord_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_MarketServiceRecord] DROP CONSTRAINT [FK_himall_marketservicerecord_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_marketsettingmeta_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_MarketSettingMeta] DROP CONSTRAINT [FK_himall_marketsettingmeta_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_memberintegral_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_MemberIntegral] DROP CONSTRAINT [FK_himall_memberintegral_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_memberintegralrecord_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_MemberIntegralRecord] DROP CONSTRAINT [FK_himall_memberintegralrecord_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_memberintegralrecordaction_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_MemberIntegralRecordAction] DROP CONSTRAINT [FK_himall_memberintegralrecordaction_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_memberopenids_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_MemberOpenIds] DROP CONSTRAINT [FK_himall_memberopenids_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_mobilehomeproducts_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_MobileHomeProducts] DROP CONSTRAINT [FK_himall_mobilehomeproducts_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_mobilehometopics_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_MobileHomeTopics] DROP CONSTRAINT [FK_himall_mobilehometopics_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_moduleproducts_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ModuleProducts] DROP CONSTRAINT [FK_himall_moduleproducts_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_moduleproducts_ibfk_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ModuleProducts] DROP CONSTRAINT [FK_himall_moduleproducts_ibfk_2];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_ordercomments_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_OrderComments] DROP CONSTRAINT [FK_himall_ordercomments_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_ordercomplaints_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_OrderComplaints] DROP CONSTRAINT [FK_himall_ordercomplaints_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_orderitems_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_OrderItems] DROP CONSTRAINT [FK_himall_orderitems_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_orderoperationlogs_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_OrderOperationLogs] DROP CONSTRAINT [FK_himall_orderoperationlogs_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_orderrefunds_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_OrderRefunds] DROP CONSTRAINT [FK_himall_orderrefunds_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_productattributes_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ProductAttributes] DROP CONSTRAINT [FK_himall_productattributes_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_productattributes_ibfk_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ProductAttributes] DROP CONSTRAINT [FK_himall_productattributes_ibfk_2];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_productcomments_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ProductComments] DROP CONSTRAINT [FK_himall_productcomments_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_productcomments_ibfk_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ProductComments] DROP CONSTRAINT [FK_himall_productcomments_ibfk_2];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_productcomments_ibfk_3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ProductComments] DROP CONSTRAINT [FK_himall_productcomments_ibfk_3];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_productcomments_ibfk_4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ProductComments] DROP CONSTRAINT [FK_himall_productcomments_ibfk_4];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_productconsultations_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ProductConsultations] DROP CONSTRAINT [FK_himall_productconsultations_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_productdescriptions_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ProductDescriptions] DROP CONSTRAINT [FK_himall_productdescriptions_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_productshopcategories_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ProductShopCategories] DROP CONSTRAINT [FK_himall_productshopcategories_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_productshopcategories_ibfk_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ProductShopCategories] DROP CONSTRAINT [FK_himall_productshopcategories_ibfk_2];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_productvistis_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ProductVistis] DROP CONSTRAINT [FK_himall_productvistis_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_roleprivileges_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_RolePrivileges] DROP CONSTRAINT [FK_himall_roleprivileges_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_sellerspecificationvalues_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_SellerSpecificationValues] DROP CONSTRAINT [FK_himall_sellerspecificationvalues_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_shippingaddresses_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ShippingAddresses] DROP CONSTRAINT [FK_himall_shippingaddresses_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_shopbrandapplys_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ShopBrandApplys] DROP CONSTRAINT [FK_himall_shopbrandapplys_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_shopbrandapplys_ibfk_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ShopBrandApplys] DROP CONSTRAINT [FK_himall_shopbrandapplys_ibfk_2];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_shopbrands_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ShopBrands] DROP CONSTRAINT [FK_himall_shopbrands_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_shopbrands_ibfk_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ShopBrands] DROP CONSTRAINT [FK_himall_shopbrands_ibfk_2];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_shophomemoduleproducts_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ShopHomeModuleProducts] DROP CONSTRAINT [FK_himall_shophomemoduleproducts_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_shophomemoduleproducts_ibfk_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ShopHomeModuleProducts] DROP CONSTRAINT [FK_himall_shophomemoduleproducts_ibfk_2];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_shoppingcarts_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ShoppingCarts] DROP CONSTRAINT [FK_himall_shoppingcarts_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_shoppingcarts_ibfk_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_ShoppingCarts] DROP CONSTRAINT [FK_himall_shoppingcarts_ibfk_2];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_skus_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_SKUs] DROP CONSTRAINT [FK_himall_skus_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_specificationvalues_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_SpecificationValues] DROP CONSTRAINT [FK_himall_specificationvalues_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_statisticordercomments_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_StatisticOrderComments] DROP CONSTRAINT [FK_himall_statisticordercomments_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_topicmodules_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_TopicModules] DROP CONSTRAINT [FK_himall_topicmodules_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_typebrands_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_TypeBrands] DROP CONSTRAINT [FK_himall_typebrands_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_typebrands_ibfk_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_TypeBrands] DROP CONSTRAINT [FK_himall_typebrands_ibfk_2];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_vshop_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_VShop] DROP CONSTRAINT [FK_himall_vshop_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_himall_vshopextend_ibfk_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_VShopExtend] DROP CONSTRAINT [FK_himall_vshopextend_ibfk_1];
GO
IF OBJECT_ID(N'[dbo].[FK_InviteMember]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_InviteRecord] DROP CONSTRAINT [FK_InviteMember];
GO
IF OBJECT_ID(N'[dbo].[FK_RegMember]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_InviteRecord] DROP CONSTRAINT [FK_RegMember];
GO
IF OBJECT_ID(N'[dbo].[FK_TabIdFK]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Himall_FloorTablDetails] DROP CONSTRAINT [FK_TabIdFK];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Himall_AccountDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_AccountDetails];
GO
IF OBJECT_ID(N'[dbo].[Himall_AccountMeta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_AccountMeta];
GO
IF OBJECT_ID(N'[dbo].[Himall_AccountPurchaseAgreement]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_AccountPurchaseAgreement];
GO
IF OBJECT_ID(N'[dbo].[Himall_Accounts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Accounts];
GO
IF OBJECT_ID(N'[dbo].[Himall_ActiveMarketService]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ActiveMarketService];
GO
IF OBJECT_ID(N'[dbo].[Himall_Agreement]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Agreement];
GO
IF OBJECT_ID(N'[dbo].[Himall_ApplyWithDraw]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ApplyWithDraw];
GO
IF OBJECT_ID(N'[dbo].[Himall_ArticleCategories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ArticleCategories];
GO
IF OBJECT_ID(N'[dbo].[Himall_Articles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Articles];
GO
IF OBJECT_ID(N'[dbo].[Himall_Attributes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Attributes];
GO
IF OBJECT_ID(N'[dbo].[Himall_AttributeValues]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_AttributeValues];
GO
IF OBJECT_ID(N'[dbo].[Himall_Banners]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Banners];
GO
IF OBJECT_ID(N'[dbo].[Himall_Bonus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Bonus];
GO
IF OBJECT_ID(N'[dbo].[Himall_BonusReceive]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_BonusReceive];
GO
IF OBJECT_ID(N'[dbo].[Himall_Brands]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Brands];
GO
IF OBJECT_ID(N'[dbo].[Himall_BrowsingHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_BrowsingHistory];
GO
IF OBJECT_ID(N'[dbo].[Himall_BusinessCategories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_BusinessCategories];
GO
IF OBJECT_ID(N'[dbo].[Himall_Capital]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Capital];
GO
IF OBJECT_ID(N'[dbo].[Himall_CapitalDetail]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_CapitalDetail];
GO
IF OBJECT_ID(N'[dbo].[Himall_CashDeposit]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_CashDeposit];
GO
IF OBJECT_ID(N'[dbo].[Himall_CashDepositDetail]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_CashDepositDetail];
GO
IF OBJECT_ID(N'[dbo].[Himall_Categories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Categories];
GO
IF OBJECT_ID(N'[dbo].[Himall_CategoryCashDeposit]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_CategoryCashDeposit];
GO
IF OBJECT_ID(N'[dbo].[Himall_ChargeDetail]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ChargeDetail];
GO
IF OBJECT_ID(N'[dbo].[Himall_Collocation]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Collocation];
GO
IF OBJECT_ID(N'[dbo].[Himall_CollocationPoruducts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_CollocationPoruducts];
GO
IF OBJECT_ID(N'[dbo].[Himall_CollocationSkus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_CollocationSkus];
GO
IF OBJECT_ID(N'[dbo].[Himall_Coupon]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Coupon];
GO
IF OBJECT_ID(N'[dbo].[Himall_CouponRecord]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_CouponRecord];
GO
IF OBJECT_ID(N'[dbo].[Himall_CouponSetting]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_CouponSetting];
GO
IF OBJECT_ID(N'[dbo].[Himall_CustomerServices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_CustomerServices];
GO
IF OBJECT_ID(N'[dbo].[Himall_Favorites]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Favorites];
GO
IF OBJECT_ID(N'[dbo].[Himall_FavoriteShops]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_FavoriteShops];
GO
IF OBJECT_ID(N'[dbo].[Himall_FloorBrands]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_FloorBrands];
GO
IF OBJECT_ID(N'[dbo].[Himall_FloorCategories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_FloorCategories];
GO
IF OBJECT_ID(N'[dbo].[Himall_FloorProducts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_FloorProducts];
GO
IF OBJECT_ID(N'[dbo].[Himall_FloorTablDetails]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_FloorTablDetails];
GO
IF OBJECT_ID(N'[dbo].[Himall_FloorTabls]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_FloorTabls];
GO
IF OBJECT_ID(N'[dbo].[Himall_FloorTopics]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_FloorTopics];
GO
IF OBJECT_ID(N'[dbo].[Himall_FreightAreaContent]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_FreightAreaContent];
GO
IF OBJECT_ID(N'[dbo].[Himall_FreightTemplate]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_FreightTemplate];
GO
IF OBJECT_ID(N'[dbo].[Himall_GiftOrderItem]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_GiftOrderItem];
GO
IF OBJECT_ID(N'[dbo].[Himall_Gifts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Gifts];
GO
IF OBJECT_ID(N'[dbo].[Himall_GiftsOrder]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_GiftsOrder];
GO
IF OBJECT_ID(N'[dbo].[Himall_HandSlideAds]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_HandSlideAds];
GO
IF OBJECT_ID(N'[dbo].[Himall_HomeCategories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_HomeCategories];
GO
IF OBJECT_ID(N'[dbo].[Himall_HomeCategoryRows]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_HomeCategoryRows];
GO
IF OBJECT_ID(N'[dbo].[Himall_HomeFloors]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_HomeFloors];
GO
IF OBJECT_ID(N'[dbo].[Himall_ImageAds]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ImageAds];
GO
IF OBJECT_ID(N'[dbo].[Himall_InviteRecord]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_InviteRecord];
GO
IF OBJECT_ID(N'[dbo].[Himall_InviteRule]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_InviteRule];
GO
IF OBJECT_ID(N'[dbo].[Himall_InvoiceContext]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_InvoiceContext];
GO
IF OBJECT_ID(N'[dbo].[Himall_InvoiceTitle]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_InvoiceTitle];
GO
IF OBJECT_ID(N'[dbo].[Himall_LimitTimeMarket]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_LimitTimeMarket];
GO
IF OBJECT_ID(N'[dbo].[Himall_Logs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Logs];
GO
IF OBJECT_ID(N'[dbo].[Himall_Managers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Managers];
GO
IF OBJECT_ID(N'[dbo].[Himall_MarketServiceRecord]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_MarketServiceRecord];
GO
IF OBJECT_ID(N'[dbo].[Himall_MarketSetting]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_MarketSetting];
GO
IF OBJECT_ID(N'[dbo].[Himall_MarketSettingMeta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_MarketSettingMeta];
GO
IF OBJECT_ID(N'[dbo].[Himall_MemberContacts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_MemberContacts];
GO
IF OBJECT_ID(N'[dbo].[Himall_MemberGrade]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_MemberGrade];
GO
IF OBJECT_ID(N'[dbo].[Himall_MemberIntegral]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_MemberIntegral];
GO
IF OBJECT_ID(N'[dbo].[Himall_MemberIntegralExchangeRules]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_MemberIntegralExchangeRules];
GO
IF OBJECT_ID(N'[dbo].[Himall_MemberIntegralRecord]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_MemberIntegralRecord];
GO
IF OBJECT_ID(N'[dbo].[Himall_MemberIntegralRecordAction]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_MemberIntegralRecordAction];
GO
IF OBJECT_ID(N'[dbo].[Himall_MemberIntegralRule]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_MemberIntegralRule];
GO
IF OBJECT_ID(N'[dbo].[Himall_MemberOpenIds]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_MemberOpenIds];
GO
IF OBJECT_ID(N'[dbo].[Himall_Members]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Members];
GO
IF OBJECT_ID(N'[dbo].[Himall_Menus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Menus];
GO
IF OBJECT_ID(N'[dbo].[Himall_MessageLog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_MessageLog];
GO
IF OBJECT_ID(N'[dbo].[Himall_MobileHomeProducts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_MobileHomeProducts];
GO
IF OBJECT_ID(N'[dbo].[Himall_MobileHomeTopics]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_MobileHomeTopics];
GO
IF OBJECT_ID(N'[dbo].[Himall_ModuleProducts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ModuleProducts];
GO
IF OBJECT_ID(N'[dbo].[Himall_OpenIds]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_OpenIds];
GO
IF OBJECT_ID(N'[dbo].[Himall_OrderComments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_OrderComments];
GO
IF OBJECT_ID(N'[dbo].[Himall_OrderComplaints]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_OrderComplaints];
GO
IF OBJECT_ID(N'[dbo].[Himall_OrderItems]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_OrderItems];
GO
IF OBJECT_ID(N'[dbo].[Himall_OrderOperationLogs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_OrderOperationLogs];
GO
IF OBJECT_ID(N'[dbo].[Himall_OrderPay]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_OrderPay];
GO
IF OBJECT_ID(N'[dbo].[Himall_OrderRefunds]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_OrderRefunds];
GO
IF OBJECT_ID(N'[dbo].[Himall_Orders]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Orders];
GO
IF OBJECT_ID(N'[dbo].[Himall_ProductAttributes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ProductAttributes];
GO
IF OBJECT_ID(N'[dbo].[Himall_ProductComments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ProductComments];
GO
IF OBJECT_ID(N'[dbo].[Himall_ProductConsultations]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ProductConsultations];
GO
IF OBJECT_ID(N'[dbo].[Himall_ProductDescriptions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ProductDescriptions];
GO
IF OBJECT_ID(N'[dbo].[Himall_ProductDescriptionTemplates]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ProductDescriptionTemplates];
GO
IF OBJECT_ID(N'[dbo].[Himall_Products]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Products];
GO
IF OBJECT_ID(N'[dbo].[Himall_ProductShopCategories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ProductShopCategories];
GO
IF OBJECT_ID(N'[dbo].[Himall_ProductVistis]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ProductVistis];
GO
IF OBJECT_ID(N'[dbo].[Himall_RolePrivileges]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_RolePrivileges];
GO
IF OBJECT_ID(N'[dbo].[Himall_Roles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Roles];
GO
IF OBJECT_ID(N'[dbo].[Himall_SellerSpecificationValues]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_SellerSpecificationValues];
GO
IF OBJECT_ID(N'[dbo].[Himall_SensitiveWords]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_SensitiveWords];
GO
IF OBJECT_ID(N'[dbo].[Himall_ShippingAddresses]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ShippingAddresses];
GO
IF OBJECT_ID(N'[dbo].[Himall_ShopBonus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ShopBonus];
GO
IF OBJECT_ID(N'[dbo].[Himall_ShopBonusGrant]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ShopBonusGrant];
GO
IF OBJECT_ID(N'[dbo].[Himall_ShopBonusReceive]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ShopBonusReceive];
GO
IF OBJECT_ID(N'[dbo].[Himall_ShopBrandApplys]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ShopBrandApplys];
GO
IF OBJECT_ID(N'[dbo].[Himall_ShopBrands]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ShopBrands];
GO
IF OBJECT_ID(N'[dbo].[Himall_ShopCategories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ShopCategories];
GO
IF OBJECT_ID(N'[dbo].[Himall_ShopGrades]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ShopGrades];
GO
IF OBJECT_ID(N'[dbo].[Himall_ShopHomeModuleProducts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ShopHomeModuleProducts];
GO
IF OBJECT_ID(N'[dbo].[Himall_ShopHomeModules]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ShopHomeModules];
GO
IF OBJECT_ID(N'[dbo].[Himall_ShoppingCarts]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ShoppingCarts];
GO
IF OBJECT_ID(N'[dbo].[Himall_Shops]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Shops];
GO
IF OBJECT_ID(N'[dbo].[Himall_ShopVistis]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_ShopVistis];
GO
IF OBJECT_ID(N'[dbo].[Himall_SiteSettings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_SiteSettings];
GO
IF OBJECT_ID(N'[dbo].[Himall_SKUs]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_SKUs];
GO
IF OBJECT_ID(N'[dbo].[Himall_SlideAds]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_SlideAds];
GO
IF OBJECT_ID(N'[dbo].[Himall_SpecificationValues]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_SpecificationValues];
GO
IF OBJECT_ID(N'[dbo].[Himall_StatisticOrderComments]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_StatisticOrderComments];
GO
IF OBJECT_ID(N'[dbo].[Himall_TopicModules]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_TopicModules];
GO
IF OBJECT_ID(N'[dbo].[Himall_Topics]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Topics];
GO
IF OBJECT_ID(N'[dbo].[Himall_TypeBrands]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_TypeBrands];
GO
IF OBJECT_ID(N'[dbo].[Himall_Types]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_Types];
GO
IF OBJECT_ID(N'[dbo].[Himall_VShop]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_VShop];
GO
IF OBJECT_ID(N'[dbo].[Himall_VShopExtend]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_VShopExtend];
GO
IF OBJECT_ID(N'[dbo].[Himall_WeiXinBasic]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_WeiXinBasic];
GO
IF OBJECT_ID(N'[dbo].[Himall_WXAccToken]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_WXAccToken];
GO
IF OBJECT_ID(N'[dbo].[Himall_WXCardCodeLog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_WXCardCodeLog];
GO
IF OBJECT_ID(N'[dbo].[Himall_WXCardLog]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_WXCardLog];
GO
IF OBJECT_ID(N'[dbo].[Himall_WXshop]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Himall_WXshop];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Himall_Categories'
CREATE TABLE [dbo].[Himall_Categories] (
    [Id] bigint  NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [Icon] nvarchar(1000)  NULL,
    [DisplaySequence] bigint  NOT NULL,
    [ParentCategoryId] bigint  NOT NULL,
    [Depth] int  NOT NULL,
    [Path] nvarchar(100)  NOT NULL,
    [RewriteName] nvarchar(50)  NULL,
    [HasChildren] bit  NOT NULL,
    [TypeId] bigint  NOT NULL,
    [CommisRate] decimal(19,4)  NOT NULL,
    [Meta_Title] nvarchar(1000)  NULL,
    [Meta_Description] nvarchar(1000)  NULL,
    [Meta_Keywords] nvarchar(1000)  NULL
);
GO

-- Creating table 'Himall_Attributes'
CREATE TABLE [dbo].[Himall_Attributes] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [TypeId] bigint  NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [DisplaySequence] bigint  NOT NULL,
    [IsMust] bit  NOT NULL,
    [IsMulti] bit  NOT NULL
);
GO

-- Creating table 'Himall_AttributeValues'
CREATE TABLE [dbo].[Himall_AttributeValues] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [AttributeId] bigint  NOT NULL,
    [Value] nvarchar(100)  NOT NULL,
    [DisplaySequence] bigint  NOT NULL
);
GO

-- Creating table 'Himall_Brands'
CREATE TABLE [dbo].[Himall_Brands] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [DisplaySequence] bigint  NOT NULL,
    [logo] nvarchar(1000)  NULL,
    [RewriteName] nvarchar(50)  NULL,
    [Description] nvarchar(1000)  NULL,
    [Meta_Title] nvarchar(1000)  NULL,
    [Meta_Description] nvarchar(1000)  NULL,
    [Meta_Keywords] nvarchar(1000)  NULL,
    [IsRecommend] bit  NOT NULL
);
GO

-- Creating table 'Himall_ProductConsultations'
CREATE TABLE [dbo].[Himall_ProductConsultations] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ProductId] bigint  NOT NULL,
    [ShopId] bigint  NOT NULL,
    [ShopName] nvarchar(100)  NULL,
    [UserId] bigint  NOT NULL,
    [UserName] nvarchar(100)  NULL,
    [Email] nvarchar(1000)  NULL,
    [ConsultationContent] nvarchar(1000)  NULL,
    [ConsultationDate] datetime  NOT NULL,
    [ReplyContent] nvarchar(1000)  NULL,
    [ReplyDate] datetime  NULL
);
GO

-- Creating table 'Himall_Products'
CREATE TABLE [dbo].[Himall_Products] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [CategoryId] bigint  NOT NULL,
    [CategoryPath] nvarchar(100)  NOT NULL,
    [TypeId] bigint  NOT NULL,
    [BrandId] bigint  NOT NULL,
    [ProductName] nvarchar(100)  NOT NULL,
    [ProductCode] nvarchar(100)  NULL,
    [ShortDescription] nvarchar(4000)  NULL,
    [SaleStatus] int  NOT NULL,
    [AddedDate] datetime  NOT NULL,
    [DisplaySequence] bigint  NOT NULL,
    [imagePath] nvarchar(100)  NULL,
    [MarketPrice] decimal(19,4)  NOT NULL,
    [MinSalePrice] decimal(19,4)  NOT NULL,
    [HasSKU] bit  NOT NULL,
    [VistiCounts] bigint  NOT NULL,
    [SaleCounts] bigint  NOT NULL,
    [AuditStatus] int  NOT NULL,
    [FreightTemplateId] bigint  NOT NULL,
    [Weight] decimal(18,0)  NULL,
    [Volume] decimal(18,0)  NULL,
    [Quantity] int  NULL,
    [MeasureUnit] varchar(20)  NULL,
    [EditStatus] int  NOT NULL
);
GO

-- Creating table 'Himall_SellerSpecificationValues'
CREATE TABLE [dbo].[Himall_SellerSpecificationValues] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [ValueId] bigint  NOT NULL,
    [Specification] int  NOT NULL,
    [TypeId] bigint  NOT NULL,
    [Value] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'Himall_SpecificationValues'
CREATE TABLE [dbo].[Himall_SpecificationValues] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Specification] int  NOT NULL,
    [TypeId] bigint  NOT NULL,
    [Value] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'Himall_TypeBrands'
CREATE TABLE [dbo].[Himall_TypeBrands] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [TypeId] bigint  NOT NULL,
    [BrandId] bigint  NOT NULL
);
GO

-- Creating table 'Himall_Types'
CREATE TABLE [dbo].[Himall_Types] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [IsSupportColor] bit  NOT NULL,
    [IsSupportSize] bit  NOT NULL,
    [IsSupportVersion] bit  NOT NULL
);
GO

-- Creating table 'Himall_ProductAttributes'
CREATE TABLE [dbo].[Himall_ProductAttributes] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ProductId] bigint  NOT NULL,
    [AttributeId] bigint  NOT NULL,
    [ValueId] bigint  NOT NULL
);
GO

-- Creating table 'Himall_ProductDescriptions'
CREATE TABLE [dbo].[Himall_ProductDescriptions] (
    [Id] bigint  NOT NULL,
    [ProductId] bigint  NOT NULL,
    [Description] nvarchar(max)  NULL,
    [DescriptionPrefixId] bigint  NOT NULL,
    [DescriptiondSuffixId] bigint  NOT NULL,
    [Meta_Title] nvarchar(1000)  NULL,
    [Meta_Description] nvarchar(1000)  NULL,
    [Meta_Keywords] nvarchar(1000)  NULL,
    [AuditReason] nvarchar(1000)  NULL,
    [MobileDescription] varchar(max)  NULL
);
GO

-- Creating table 'Himall_ProductDescriptionTemplates'
CREATE TABLE [dbo].[Himall_ProductDescriptionTemplates] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [Position] int  NOT NULL,
    [Content] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Himall_SKUs'
CREATE TABLE [dbo].[Himall_SKUs] (
    [Id] nvarchar(100)  NOT NULL,
    [ProductId] bigint  NOT NULL,
    [Color] nvarchar(100)  NULL,
    [Size] nvarchar(100)  NULL,
    [Version] nvarchar(100)  NULL,
    [Sku] nvarchar(100)  NULL,
    [Stock] bigint  NOT NULL,
    [CostPrice] decimal(19,4)  NOT NULL,
    [SalePrice] decimal(19,4)  NOT NULL,
    [AutoId] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Himall_Accounts'
CREATE TABLE [dbo].[Himall_Accounts] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [ShopName] nvarchar(100)  NOT NULL,
    [AccountDate] datetime  NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NOT NULL,
    [Status] int  NOT NULL,
    [CommissionAmount] decimal(19,4)  NOT NULL,
    [RefundAmount] decimal(19,4)  NOT NULL,
    [Remark] nvarchar(1000)  NULL,
    [FreightAmount] decimal(18,0)  NOT NULL,
    [RefundCommissionAmount] decimal(18,0)  NOT NULL,
    [AdvancePaymentAmount] decimal(18,0)  NOT NULL,
    [PeriodSettlement] decimal(18,0)  NOT NULL,
    [ProductActualPaidAmount] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'Himall_ArticleCategories'
CREATE TABLE [dbo].[Himall_ArticleCategories] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ParentCategoryId] bigint  NOT NULL,
    [Name] nvarchar(100)  NULL,
    [DisplaySequence] bigint  NOT NULL,
    [IsDefault] bit  NOT NULL
);
GO

-- Creating table 'Himall_Articles'
CREATE TABLE [dbo].[Himall_Articles] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [CategoryId] bigint  NOT NULL,
    [Title] nvarchar(100)  NOT NULL,
    [IconUrl] nvarchar(100)  NULL,
    [Content] nvarchar(max)  NOT NULL,
    [AddDate] datetime  NOT NULL,
    [DisplaySequence] bigint  NOT NULL,
    [Meta_Title] nvarchar(1000)  NULL,
    [Meta_Description] nvarchar(1000)  NULL,
    [Meta_Keywords] nvarchar(1000)  NULL,
    [IsRelease] bit  NOT NULL
);
GO

-- Creating table 'Himall_Banners'
CREATE TABLE [dbo].[Himall_Banners] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [Position] int  NOT NULL,
    [DisplaySequence] bigint  NOT NULL,
    [Url] nvarchar(1000)  NOT NULL,
    [Platform] int  NOT NULL,
    [UrlType] int  NOT NULL
);
GO

-- Creating table 'Himall_CustomerServices'
CREATE TABLE [dbo].[Himall_CustomerServices] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [Tool] int  NOT NULL,
    [Type] int  NOT NULL,
    [Name] nvarchar(1000)  NOT NULL,
    [AccountCode] nvarchar(1000)  NOT NULL
);
GO

-- Creating table 'Himall_Favorites'
CREATE TABLE [dbo].[Himall_Favorites] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [UserId] bigint  NOT NULL,
    [ProductId] bigint  NOT NULL,
    [Tags] nvarchar(100)  NULL,
    [Date] datetime  NOT NULL
);
GO

-- Creating table 'Himall_FloorBrands'
CREATE TABLE [dbo].[Himall_FloorBrands] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [FloorId] bigint  NOT NULL,
    [BrandId] bigint  NOT NULL
);
GO

-- Creating table 'Himall_FloorCategories'
CREATE TABLE [dbo].[Himall_FloorCategories] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [FloorId] bigint  NOT NULL,
    [CategoryId] bigint  NOT NULL,
    [Depth] int  NOT NULL
);
GO

-- Creating table 'Himall_FloorProducts'
CREATE TABLE [dbo].[Himall_FloorProducts] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [FloorId] bigint  NOT NULL,
    [Tab] int  NOT NULL,
    [ProductId] bigint  NOT NULL
);
GO

-- Creating table 'Himall_FloorTopics'
CREATE TABLE [dbo].[Himall_FloorTopics] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [FloorId] bigint  NOT NULL,
    [TopicType] int  NOT NULL,
    [topicImage] nvarchar(100)  NOT NULL,
    [TopicName] nvarchar(100)  NOT NULL,
    [Url] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'Himall_HandSlideAds'
CREATE TABLE [dbo].[Himall_HandSlideAds] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [imageUrl] nvarchar(100)  NOT NULL,
    [Url] nvarchar(1000)  NOT NULL,
    [DisplaySequence] bigint  NOT NULL
);
GO

-- Creating table 'Himall_HomeCategories'
CREATE TABLE [dbo].[Himall_HomeCategories] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [RowId] int  NOT NULL,
    [CategoryId] bigint  NOT NULL,
    [Depth] int  NOT NULL
);
GO

-- Creating table 'Himall_HomeFloors'
CREATE TABLE [dbo].[Himall_HomeFloors] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [FloorName] nvarchar(100)  NOT NULL,
    [DisplaySequence] bigint  NOT NULL,
    [IsShow] bit  NOT NULL,
    [SubName] varchar(100)  NULL,
    [StyleLevel] bigint  NOT NULL,
    [DefaultTabName] varchar(50)  NULL
);
GO

-- Creating table 'Himall_ImageAds'
CREATE TABLE [dbo].[Himall_ImageAds] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [imageUrl] nvarchar(100)  NOT NULL,
    [Url] nvarchar(1000)  NOT NULL
);
GO

-- Creating table 'Himall_Logs'
CREATE TABLE [dbo].[Himall_Logs] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [PageUrl] nvarchar(1000)  NOT NULL,
    [Date] datetime  NOT NULL,
    [UserName] nvarchar(100)  NOT NULL,
    [IPAddress] nvarchar(100)  NOT NULL,
    [Description] nvarchar(1000)  NOT NULL
);
GO

-- Creating table 'Himall_Managers'
CREATE TABLE [dbo].[Himall_Managers] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [RoleId] bigint  NOT NULL,
    [UserName] nvarchar(100)  NOT NULL,
    [Password] nvarchar(100)  NOT NULL,
    [PasswordSalt] nvarchar(100)  NOT NULL,
    [CreateDate] datetime  NOT NULL,
    [Remark] varchar(1000)  NULL,
    [RealName] varchar(1000)  NULL
);
GO

-- Creating table 'Himall_MemberOpenIds'
CREATE TABLE [dbo].[Himall_MemberOpenIds] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [UserId] bigint  NOT NULL,
    [OpenId] nvarchar(100)  NOT NULL,
    [ServiceProvider] nvarchar(40)  NOT NULL,
    [AppIdType] int  NOT NULL,
    [UnionId] varchar(100)  NULL,
    [UnionOpenId] varchar(100)  NULL
);
GO

-- Creating table 'Himall_Members'
CREATE TABLE [dbo].[Himall_Members] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [UserName] nvarchar(100)  NOT NULL,
    [Password] nvarchar(100)  NOT NULL,
    [PasswordSalt] nvarchar(100)  NOT NULL,
    [Email] nvarchar(100)  NULL,
    [CreateDate] datetime  NOT NULL,
    [TopRegionId] int  NOT NULL,
    [RegionId] int  NOT NULL,
    [RealName] nvarchar(100)  NULL,
    [CellPhone] nvarchar(100)  NULL,
    [QQ] nvarchar(100)  NULL,
    [Address] nvarchar(100)  NULL,
    [Disabled] bit  NOT NULL,
    [LastLoginDate] datetime  NOT NULL,
    [OrderNumber] int  NOT NULL,
    [Expenditure] decimal(19,4)  NOT NULL,
    [Points] int  NOT NULL,
    [Nick] nvarchar(50)  NULL,
    [photo] nvarchar(100)  NULL,
    [ParentSellerId] bigint  NOT NULL,
    [Remark] varchar(1000)  NULL,
    [PayPwd] varchar(100)  NULL,
    [PayPwdSalt] varchar(100)  NULL,
    [InviteUserId] bigint  NULL
);
GO

-- Creating table 'Himall_ModuleProducts'
CREATE TABLE [dbo].[Himall_ModuleProducts] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ModuleId] bigint  NOT NULL,
    [ProductId] bigint  NOT NULL,
    [DisplaySequence] bigint  NOT NULL
);
GO

-- Creating table 'Himall_OrderComplaints'
CREATE TABLE [dbo].[Himall_OrderComplaints] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [OrderId] bigint  NOT NULL,
    [Status] int  NOT NULL,
    [ComplaintReason] nvarchar(1000)  NOT NULL,
    [SellerReply] nvarchar(1000)  NULL,
    [ComplaintDate] datetime  NOT NULL,
    [ShopId] bigint  NOT NULL,
    [ShopName] nvarchar(100)  NOT NULL,
    [ShopPhone] nvarchar(100)  NOT NULL,
    [UserId] bigint  NOT NULL,
    [UserName] nvarchar(100)  NOT NULL,
    [UserPhone] nvarchar(100)  NULL
);
GO

-- Creating table 'Himall_OrderItems'
CREATE TABLE [dbo].[Himall_OrderItems] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [OrderId] bigint  NOT NULL,
    [ShopId] bigint  NOT NULL,
    [ProductId] bigint  NOT NULL,
    [SkuId] nvarchar(100)  NULL,
    [SKU] nvarchar(20)  NULL,
    [Quantity] bigint  NOT NULL,
    [ReturnQuantity] bigint  NOT NULL,
    [CostPrice] decimal(19,4)  NOT NULL,
    [SalePrice] decimal(19,4)  NOT NULL,
    [DiscountAmount] decimal(19,4)  NOT NULL,
    [RealTotalPrice] decimal(19,4)  NOT NULL,
    [RefundPrice] decimal(19,4)  NOT NULL,
    [ProductName] nvarchar(100)  NOT NULL,
    [Color] nvarchar(100)  NULL,
    [Size] nvarchar(100)  NULL,
    [Version] nvarchar(100)  NULL,
    [ThumbnailsUrl] nvarchar(100)  NULL,
    [CommisRate] decimal(19,4)  NOT NULL,
    [EnabledRefundAmount] decimal(8,0)  NULL,
    [IsLimitBuy] bit  NOT NULL
);
GO

-- Creating table 'Himall_OrderOperationLogs'
CREATE TABLE [dbo].[Himall_OrderOperationLogs] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [OrderId] bigint  NOT NULL,
    [Operator] nvarchar(100)  NOT NULL,
    [OperateDate] datetime  NOT NULL,
    [OperateContent] nvarchar(1000)  NULL
);
GO

-- Creating table 'Himall_OrderRefunds'
CREATE TABLE [dbo].[Himall_OrderRefunds] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [OrderId] bigint  NOT NULL,
    [OrderItemId] bigint  NOT NULL,
    [ShopId] bigint  NOT NULL,
    [ShopName] nvarchar(100)  NOT NULL,
    [UserId] bigint  NOT NULL,
    [Applicant] nvarchar(100)  NOT NULL,
    [Reason] nvarchar(1000)  NOT NULL,
    [ContactPerson] nvarchar(100)  NULL,
    [ContactCellPhone] nvarchar(100)  NULL,
    [RefundAccount] nvarchar(100)  NULL,
    [ApplyDate] datetime  NOT NULL,
    [Amount] decimal(19,4)  NOT NULL,
    [SellerAuditStatus] int  NOT NULL,
    [SellerAuditDate] datetime  NOT NULL,
    [SellerRemark] nvarchar(1000)  NULL,
    [ManagerConfirmStatus] int  NOT NULL,
    [ManagerConfirmDate] datetime  NOT NULL,
    [ManagerRemark] nvarchar(1000)  NULL,
    [IsReturn] bit  NOT NULL,
    [ExpressCompanyName] nvarchar(100)  NULL,
    [ShipOrderNumber] nvarchar(100)  NULL,
    [Payee] varchar(200)  NULL,
    [PayeeAccount] varchar(200)  NULL,
    [RefundMode] int  NOT NULL,
    [BuyerDeliverDate] datetime  NULL,
    [SellerConfirmArrivalDate] datetime  NULL,
    [RefundPayStatus] int  NULL,
    [RefundPayType] int  NULL
);
GO

-- Creating table 'Himall_Orders'
CREATE TABLE [dbo].[Himall_Orders] (
    [Id] bigint  NOT NULL,
    [OrderStatus] int  NOT NULL,
    [OrderDate] datetime  NOT NULL,
    [CloseReason] nvarchar(1000)  NULL,
    [ShopId] bigint  NOT NULL,
    [ShopName] nvarchar(100)  NOT NULL,
    [SellerPhone] nvarchar(100)  NULL,
    [SellerAddress] nvarchar(100)  NULL,
    [SellerRemark] nvarchar(1000)  NULL,
    [UserId] bigint  NOT NULL,
    [UserName] nvarchar(100)  NOT NULL,
    [UserRemark] nvarchar(1000)  NULL,
    [ShipTo] nvarchar(100)  NOT NULL,
    [CellPhone] nvarchar(100)  NULL,
    [TopRegionId] int  NOT NULL,
    [RegionId] int  NOT NULL,
    [RegionFullName] nvarchar(100)  NOT NULL,
    [Address] nvarchar(100)  NOT NULL,
    [ExpressCompanyName] nvarchar(100)  NULL,
    [Freight] decimal(19,4)  NOT NULL,
    [ShipOrderNumber] nvarchar(100)  NULL,
    [ShippingDate] datetime  NULL,
    [IsPrinted] bit  NOT NULL,
    [PaymentTypeName] nvarchar(100)  NULL,
    [PaymentTypeGateway] nvarchar(100)  NULL,
    [GatewayOrderId] nvarchar(100)  NULL,
    [PayRemark] nvarchar(1000)  NULL,
    [PayDate] datetime  NULL,
    [InvoiceTitle] nvarchar(100)  NULL,
    [Tax] decimal(19,4)  NOT NULL,
    [FinishDate] datetime  NULL,
    [ProductTotalAmount] decimal(19,4)  NOT NULL,
    [RefundTotalAmount] decimal(19,4)  NOT NULL,
    [CommisTotalAmount] decimal(19,4)  NOT NULL,
    [RefundCommisAmount] decimal(19,4)  NOT NULL,
    [ActiveType] int  NOT NULL,
    [Platform] int  NOT NULL,
    [DiscountAmount] decimal(19,4)  NOT NULL,
    [InvoiceType] int  NOT NULL,
    [IntegralDiscount] decimal(18,0)  NOT NULL,
    [InvoiceContext] varchar(50)  NULL,
    [OrderType] int  NULL
);
GO

-- Creating table 'Himall_ProductShopCategories'
CREATE TABLE [dbo].[Himall_ProductShopCategories] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ProductId] bigint  NOT NULL,
    [ShopCategoryId] bigint  NOT NULL
);
GO

-- Creating table 'Himall_RolePrivileges'
CREATE TABLE [dbo].[Himall_RolePrivileges] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Privilege] int  NOT NULL,
    [RoleId] bigint  NOT NULL
);
GO

-- Creating table 'Himall_Roles'
CREATE TABLE [dbo].[Himall_Roles] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [RoleName] nvarchar(100)  NOT NULL,
    [Description] nvarchar(1000)  NOT NULL
);
GO

-- Creating table 'Himall_ShippingAddresses'
CREATE TABLE [dbo].[Himall_ShippingAddresses] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [UserId] bigint  NOT NULL,
    [RegionId] int  NOT NULL,
    [ShipTo] nvarchar(100)  NOT NULL,
    [Address] nvarchar(100)  NOT NULL,
    [Phone] nvarchar(100)  NOT NULL,
    [IsDefault] bit  NOT NULL,
    [IsQuick] bit  NOT NULL
);
GO

-- Creating table 'Himall_ShopCategories'
CREATE TABLE [dbo].[Himall_ShopCategories] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [ParentCategoryId] bigint  NOT NULL,
    [Name] nvarchar(100)  NULL,
    [DisplaySequence] bigint  NOT NULL,
    [IsShow] bit  NOT NULL
);
GO

-- Creating table 'Himall_ShopGrades'
CREATE TABLE [dbo].[Himall_ShopGrades] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [ProductLimit] int  NOT NULL,
    [ImageLimit] int  NOT NULL,
    [TemplateLimit] int  NOT NULL,
    [ChargeStandard] decimal(19,4)  NOT NULL,
    [Remark] nvarchar(1000)  NULL
);
GO

-- Creating table 'Himall_ShoppingCarts'
CREATE TABLE [dbo].[Himall_ShoppingCarts] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [UserId] bigint  NOT NULL,
    [ProductId] bigint  NOT NULL,
    [SkuId] nvarchar(100)  NULL,
    [Quantity] int  NOT NULL,
    [AddTime] datetime  NOT NULL
);
GO

-- Creating table 'Himall_Shops'
CREATE TABLE [dbo].[Himall_Shops] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [GradeId] bigint  NOT NULL,
    [ShopName] nvarchar(100)  NOT NULL,
    [SubDomains] nvarchar(100)  NULL,
    [Theme] nvarchar(100)  NULL,
    [IsSelf] bit  NOT NULL,
    [ShopStatus] int  NOT NULL,
    [RefuseReason] nvarchar(1000)  NULL,
    [CreateDate] datetime  NOT NULL,
    [EndDate] datetime  NULL,
    [CompanyName] nvarchar(100)  NULL,
    [CompanyRegionId] int  NOT NULL,
    [CompanyAddress] nvarchar(100)  NULL,
    [CompanyPhone] nvarchar(100)  NULL,
    [CompanyEmployeeCount] int  NOT NULL,
    [CompanyRegisteredCapital] decimal(19,4)  NOT NULL,
    [ContactsName] nvarchar(100)  NULL,
    [ContactsPhone] nvarchar(100)  NULL,
    [ContactsEmail] nvarchar(100)  NULL,
    [BusinessLicenceNumber] nvarchar(100)  NULL,
    [BusinessLicenceNumberPhoto] nvarchar(100)  NOT NULL,
    [BusinessLicenceRegionId] int  NOT NULL,
    [BusinessLicenceStart] datetime  NULL,
    [BusinessLicenceEnd] datetime  NULL,
    [BusinessSphere] nvarchar(100)  NULL,
    [OrganizationCode] nvarchar(100)  NULL,
    [OrganizationCodePhoto] nvarchar(100)  NULL,
    [GeneralTaxpayerPhot] nvarchar(100)  NULL,
    [BankAccountName] nvarchar(100)  NULL,
    [BankAccountNumber] nvarchar(100)  NULL,
    [BankName] nvarchar(100)  NULL,
    [BankCode] nvarchar(100)  NULL,
    [BankRegionId] int  NOT NULL,
    [BankPhoto] nvarchar(100)  NULL,
    [TaxRegistrationCertificate] nvarchar(100)  NULL,
    [TaxpayerId] nvarchar(100)  NULL,
    [TaxRegistrationCertificatePhoto] nvarchar(100)  NULL,
    [PayPhoto] nvarchar(100)  NULL,
    [PayRemark] nvarchar(1000)  NULL,
    [SenderName] nvarchar(100)  NULL,
    [SenderAddress] nvarchar(100)  NULL,
    [SenderPhone] nvarchar(100)  NULL,
    [Freight] decimal(18,2)  NOT NULL,
    [FreeFreight] decimal(18,2)  NOT NULL,
    [Logo] nvarchar(100)  NULL,
    [Stage] int  NULL,
    [SenderRegionId] int  NULL,
    [BusinessLicenseCert] varchar(120)  NULL,
    [ProductCert] varchar(120)  NULL,
    [OtherCert] varchar(120)  NULL,
    [legalPerson] varchar(50)  NULL,
    [CompanyFoundingDate] datetime  NULL
);
GO

-- Creating table 'Himall_SiteSettings'
CREATE TABLE [dbo].[Himall_SiteSettings] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Key] nvarchar(100)  NOT NULL,
    [Value] nvarchar(4000)  NOT NULL
);
GO

-- Creating table 'Himall_SlideAds'
CREATE TABLE [dbo].[Himall_SlideAds] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [imageUrl] nvarchar(100)  NOT NULL,
    [Url] nvarchar(1000)  NOT NULL,
    [DisplaySequence] bigint  NOT NULL,
    [TypeId] int  NOT NULL,
    [Description] nvarchar(100)  NULL
);
GO

-- Creating table 'Himall_TopicModules'
CREATE TABLE [dbo].[Himall_TopicModules] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [TopicId] bigint  NOT NULL,
    [Name] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'Himall_Topics'
CREATE TABLE [dbo].[Himall_Topics] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [topImage] nvarchar(100)  NOT NULL,
    [backgroundImage] nvarchar(100)  NULL,
    [frontCoverImage] nvarchar(100)  NULL,
    [Tags] nvarchar(100)  NULL,
    [PlatForm] int  NOT NULL,
    [ShopId] bigint  NOT NULL,
    [IsRecommend] bit  NOT NULL,
    [SelfDefineText] varchar(max)  NULL
);
GO

-- Creating table 'Himall_ProductComments'
CREATE TABLE [dbo].[Himall_ProductComments] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ProductId] bigint  NOT NULL,
    [ShopId] bigint  NOT NULL,
    [ShopName] nvarchar(100)  NULL,
    [UserId] bigint  NOT NULL,
    [UserName] nvarchar(100)  NULL,
    [Email] nvarchar(1000)  NULL,
    [ReviewContent] nvarchar(1000)  NULL,
    [ReviewDate] datetime  NOT NULL,
    [ReplyContent] nvarchar(1000)  NULL,
    [ReplyDate] datetime  NULL,
    [ReviewMark] int  NOT NULL,
    [SubOrderId] bigint  NULL
);
GO

-- Creating table 'Himall_OrderComments'
CREATE TABLE [dbo].[Himall_OrderComments] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [OrderId] bigint  NOT NULL,
    [ShopId] bigint  NOT NULL,
    [ShopName] nvarchar(100)  NOT NULL,
    [UserId] bigint  NOT NULL,
    [UserName] nvarchar(100)  NOT NULL,
    [CommentDate] datetime  NOT NULL,
    [PackMark] int  NOT NULL,
    [DeliveryMark] int  NOT NULL,
    [ServiceMark] int  NOT NULL
);
GO

-- Creating table 'Himall_BusinessCategories'
CREATE TABLE [dbo].[Himall_BusinessCategories] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [CategoryId] bigint  NOT NULL,
    [CommisRate] decimal(19,4)  NOT NULL
);
GO

-- Creating table 'Himall_AccountDetails'
CREATE TABLE [dbo].[Himall_AccountDetails] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [Date] datetime  NOT NULL,
    [OrderId] bigint  NOT NULL,
    [CommissionAmount] decimal(19,4)  NOT NULL,
    [RefundTotalAmount] decimal(19,4)  NOT NULL,
    [RefundCommisAmount] decimal(19,4)  NOT NULL,
    [OrderType] int  NOT NULL,
    [FreightAmount] decimal(18,0)  NOT NULL,
    [ProductActualPaidAmount] decimal(18,0)  NOT NULL,
    [AccountId] bigint  NOT NULL,
    [OrderDate] datetime  NOT NULL,
    [OrderRefundsDates] varchar(300)  NOT NULL
);
GO

-- Creating table 'Himall_HomeCategoryRows'
CREATE TABLE [dbo].[Himall_HomeCategoryRows] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [RowId] int  NOT NULL,
    [image1] nvarchar(100)  NOT NULL,
    [Url1] nvarchar(100)  NOT NULL,
    [image2] nvarchar(100)  NOT NULL,
    [Url2] nvarchar(100)  NOT NULL
);
GO

-- Creating table 'Himall_ShopHomeModuleProducts'
CREATE TABLE [dbo].[Himall_ShopHomeModuleProducts] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [HomeModuleId] bigint  NOT NULL,
    [ProductId] bigint  NOT NULL
);
GO

-- Creating table 'Himall_ShopHomeModules'
CREATE TABLE [dbo].[Himall_ShopHomeModules] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [Name] nvarchar(20)  NOT NULL
);
GO

-- Creating table 'Himall_ProductVistis'
CREATE TABLE [dbo].[Himall_ProductVistis] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ProductId] bigint  NOT NULL,
    [Date] datetime  NOT NULL,
    [VistiCounts] bigint  NOT NULL,
    [SaleCounts] bigint  NOT NULL,
    [SaleAmounts] decimal(19,4)  NOT NULL,
    [OrderCounts] bigint  NULL
);
GO

-- Creating table 'Himall_ShopVistis'
CREATE TABLE [dbo].[Himall_ShopVistis] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [Date] datetime  NOT NULL,
    [VistiCounts] bigint  NOT NULL,
    [SaleCounts] bigint  NOT NULL,
    [SaleAmounts] decimal(19,4)  NOT NULL
);
GO

-- Creating table 'Himall_FavoriteShops'
CREATE TABLE [dbo].[Himall_FavoriteShops] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [UserId] bigint  NOT NULL,
    [ShopId] bigint  NOT NULL,
    [Tags] nvarchar(100)  NULL,
    [Date] datetime  NOT NULL
);
GO

-- Creating table 'Himall_BrowsingHistory'
CREATE TABLE [dbo].[Himall_BrowsingHistory] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [MemberId] bigint  NOT NULL,
    [ProductId] bigint  NOT NULL,
    [BrowseTime] datetime  NOT NULL
);
GO

-- Creating table 'Himall_Menus'
CREATE TABLE [dbo].[Himall_Menus] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ParentId] bigint  NOT NULL,
    [ShopId] bigint  NOT NULL,
    [Title] nvarchar(10)  NOT NULL,
    [Url] nvarchar(200)  NULL,
    [Depth] smallint  NOT NULL,
    [Sequence] smallint  NOT NULL,
    [FullIdPath] varchar(100)  NOT NULL,
    [Platform] int  NOT NULL,
    [UrlType] int  NULL
);
GO

-- Creating table 'Himall_MessageLog'
CREATE TABLE [dbo].[Himall_MessageLog] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NULL,
    [TypeId] nvarchar(100)  NULL,
    [MessageContent] nvarchar(max)  NULL,
    [SendTime] datetime  NULL
);
GO

-- Creating table 'Himall_MemberContacts'
CREATE TABLE [dbo].[Himall_MemberContacts] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [UserId] bigint  NOT NULL,
    [ServiceProvider] nvarchar(40)  NOT NULL,
    [Contact] nvarchar(100)  NOT NULL,
    [UserType] int  NOT NULL
);
GO

-- Creating table 'Himall_FreightAreaContent'
CREATE TABLE [dbo].[Himall_FreightAreaContent] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [FreightTemplateId] bigint  NOT NULL,
    [AreaContent] varchar(4000)  NULL,
    [FirstUnit] int  NULL,
    [FirstUnitMonry] real  NULL,
    [AccumulationUnit] int  NULL,
    [AccumulationUnitMoney] real  NULL,
    [IsDefault] tinyint  NULL
);
GO

-- Creating table 'Himall_FreightTemplate'
CREATE TABLE [dbo].[Himall_FreightTemplate] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] varchar(100)  NULL,
    [SourceAddress] int  NULL,
    [SendTime] varchar(100)  NULL,
    [IsFree] int  NOT NULL,
    [ValuationMethod] int  NOT NULL,
    [ShippingMethod] int  NULL,
    [ShopID] bigint  NOT NULL
);
GO

-- Creating table 'Himall_Agreement'
CREATE TABLE [dbo].[Himall_Agreement] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [AgreementType] int  NOT NULL,
    [AgreementContent] varchar(max)  NOT NULL,
    [LastUpdateTime] datetime  NOT NULL
);
GO

-- Creating table 'Himall_CashDeposit'
CREATE TABLE [dbo].[Himall_CashDeposit] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [CurrentBalance] decimal(18,0)  NOT NULL,
    [TotalBalance] decimal(18,0)  NOT NULL,
    [Date] datetime  NOT NULL,
    [EnableLabels] bit  NOT NULL
);
GO

-- Creating table 'Himall_CashDepositDetail'
CREATE TABLE [dbo].[Himall_CashDepositDetail] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [CashDepositId] bigint  NOT NULL,
    [AddDate] datetime  NOT NULL,
    [Balance] decimal(18,0)  NOT NULL,
    [Operator] varchar(50)  NOT NULL,
    [Description] varchar(1000)  NULL,
    [RechargeWay] int  NULL
);
GO

-- Creating table 'Himall_ShopBrandApplys'
CREATE TABLE [dbo].[Himall_ShopBrandApplys] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [BrandId] bigint  NULL,
    [BrandName] varchar(100)  NULL,
    [Logo] varchar(1000)  NULL,
    [Description] varchar(1000)  NULL,
    [AuthCertificate] varchar(4000)  NULL,
    [ApplyMode] int  NOT NULL,
    [Remark] varchar(1000)  NULL,
    [AuditStatus] int  NOT NULL,
    [ApplyTime] datetime  NOT NULL
);
GO

-- Creating table 'Himall_ShopBrands'
CREATE TABLE [dbo].[Himall_ShopBrands] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [BrandId] bigint  NOT NULL
);
GO

-- Creating table 'Himall_StatisticOrderComments'
CREATE TABLE [dbo].[Himall_StatisticOrderComments] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [CommentKey] int  NOT NULL,
    [CommentValue] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'Himall_AccountPurchaseAgreement'
CREATE TABLE [dbo].[Himall_AccountPurchaseAgreement] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [AccountId] bigint  NULL,
    [ShopId] bigint  NOT NULL,
    [Date] datetime  NOT NULL,
    [PurchaseAgreementId] bigint  NOT NULL,
    [AdvancePayment] decimal(18,0)  NOT NULL,
    [FinishDate] datetime  NOT NULL,
    [ApplyDate] datetime  NULL
);
GO

-- Creating table 'Himall_SensitiveWords'
CREATE TABLE [dbo].[Himall_SensitiveWords] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [SensitiveWord] varchar(100)  NULL,
    [CategoryName] varchar(100)  NULL
);
GO

-- Creating table 'Himall_Coupon'
CREATE TABLE [dbo].[Himall_Coupon] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [ShopName] varchar(100)  NULL,
    [Price] decimal(18,0)  NOT NULL,
    [PerMax] int  NOT NULL,
    [OrderAmount] decimal(18,0)  NOT NULL,
    [Num] int  NOT NULL,
    [StartTime] datetime  NOT NULL,
    [EndTime] datetime  NOT NULL,
    [CouponName] varchar(100)  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [ReceiveType] int  NOT NULL,
    [NeedIntegral] int  NOT NULL,
    [EndIntegralExchange] datetime  NULL,
    [IntegralCover] varchar(200)  NULL,
    [IsSyncWeiXin] int  NOT NULL,
    [WXAuditStatus] int  NOT NULL,
    [CardLogId] bigint  NULL
);
GO

-- Creating table 'Himall_CouponRecord'
CREATE TABLE [dbo].[Himall_CouponRecord] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [CouponId] bigint  NOT NULL,
    [CounponSN] varchar(50)  NOT NULL,
    [CounponTime] datetime  NOT NULL,
    [UserName] varchar(100)  NOT NULL,
    [UserId] bigint  NOT NULL,
    [UsedTime] datetime  NULL,
    [OrderId] bigint  NULL,
    [ShopId] bigint  NOT NULL,
    [ShopName] varchar(100)  NOT NULL,
    [CounponStatus] int  NOT NULL,
    [WXCodeId] bigint  NULL
);
GO

-- Creating table 'Himall_CouponSetting'
CREATE TABLE [dbo].[Himall_CouponSetting] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [PlatForm] int  NOT NULL,
    [CouponID] bigint  NOT NULL,
    [Display] int  NULL
);
GO

-- Creating table 'Himall_MemberGrade'
CREATE TABLE [dbo].[Himall_MemberGrade] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [GradeName] varchar(100)  NOT NULL,
    [Integral] int  NOT NULL,
    [Remark] varchar(1000)  NULL
);
GO

-- Creating table 'Himall_MemberIntegral'
CREATE TABLE [dbo].[Himall_MemberIntegral] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [MemberId] bigint  NULL,
    [UserName] varchar(100)  NOT NULL,
    [HistoryIntegrals] int  NOT NULL,
    [AvailableIntegrals] int  NOT NULL
);
GO

-- Creating table 'Himall_MemberIntegralExchangeRules'
CREATE TABLE [dbo].[Himall_MemberIntegralExchangeRules] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [IntegralPerMoney] int  NOT NULL,
    [MoneyPerIntegral] int  NOT NULL
);
GO

-- Creating table 'Himall_MemberIntegralRecord'
CREATE TABLE [dbo].[Himall_MemberIntegralRecord] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [MemberId] bigint  NOT NULL,
    [UserName] varchar(100)  NOT NULL,
    [TypeId] int  NOT NULL,
    [Integral] int  NOT NULL,
    [RecordDate] datetime  NULL,
    [ReMark] varchar(100)  NULL
);
GO

-- Creating table 'Himall_MemberIntegralRecordAction'
CREATE TABLE [dbo].[Himall_MemberIntegralRecordAction] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [IntegralRecordId] bigint  NOT NULL,
    [VirtualItemTypeId] int  NULL,
    [VirtualItemId] bigint  NOT NULL
);
GO

-- Creating table 'Himall_MemberIntegralRule'
CREATE TABLE [dbo].[Himall_MemberIntegralRule] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [TypeId] int  NOT NULL,
    [Integral] int  NOT NULL
);
GO

-- Creating table 'Himall_VShop'
CREATE TABLE [dbo].[Himall_VShop] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] varchar(20)  NULL,
    [ShopId] bigint  NOT NULL,
    [CreateTime] datetime  NOT NULL,
    [VisitNum] int  NOT NULL,
    [buyNum] int  NOT NULL,
    [State] int  NOT NULL,
    [logo] varchar(200)  NULL,
    [backgroundImage] varchar(200)  NULL,
    [Description] varchar(30)  NULL,
    [Tags] varchar(100)  NULL,
    [HomePageTitle] varchar(20)  NULL,
    [WXLogo] varchar(200)  NULL
);
GO

-- Creating table 'Himall_VShopExtend'
CREATE TABLE [dbo].[Himall_VShopExtend] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [VShopId] bigint  NOT NULL,
    [Sequence] int  NULL,
    [Type] int  NOT NULL,
    [AddTime] datetime  NOT NULL,
    [State] int  NOT NULL
);
GO

-- Creating table 'Himall_WXshop'
CREATE TABLE [dbo].[Himall_WXshop] (
    [ID] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [AppId] varchar(30)  NOT NULL,
    [AppSecret] varchar(35)  NOT NULL,
    [Token] varchar(30)  NOT NULL,
    [FollowUrl] varchar(500)  NULL
);
GO

-- Creating table 'Himall_ActiveMarketService'
CREATE TABLE [dbo].[Himall_ActiveMarketService] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [TypeId] int  NOT NULL,
    [ShopId] bigint  NOT NULL,
    [ShopName] varchar(100)  NOT NULL
);
GO

-- Creating table 'Himall_AccountMeta'
CREATE TABLE [dbo].[Himall_AccountMeta] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [AccountId] bigint  NOT NULL,
    [MetaKey] varchar(100)  NOT NULL,
    [MetaValue] varchar(max)  NOT NULL,
    [ServiceStartTime] datetime  NOT NULL,
    [ServiceEndTime] datetime  NOT NULL
);
GO

-- Creating table 'Himall_LimitTimeMarket'
CREATE TABLE [dbo].[Himall_LimitTimeMarket] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Title] varchar(100)  NOT NULL,
    [ProductId] bigint  NOT NULL,
    [ProductName] varchar(100)  NOT NULL,
    [CategoryName] varchar(100)  NOT NULL,
    [AuditStatus] smallint  NOT NULL,
    [AuditTime] datetime  NOT NULL,
    [ShopId] bigint  NOT NULL,
    [ShopName] varchar(100)  NOT NULL,
    [Price] decimal(18,0)  NOT NULL,
    [RecentMonthPrice] decimal(18,0)  NOT NULL,
    [StartTime] datetime  NOT NULL,
    [EndTime] datetime  NOT NULL,
    [Stock] int  NOT NULL,
    [SaleCount] int  NOT NULL,
    [CancelReson] varchar(max)  NOT NULL,
    [MaxSaleCount] int  NOT NULL,
    [ProductAd] varchar(100)  NOT NULL,
    [MinPrice] decimal(18,0)  NOT NULL,
    [ImagePath] varchar(100)  NOT NULL
);
GO

-- Creating table 'Himall_MarketServiceRecord'
CREATE TABLE [dbo].[Himall_MarketServiceRecord] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [MarketServiceId] bigint  NOT NULL,
    [StartTime] datetime  NOT NULL,
    [EndTime] datetime  NOT NULL,
    [SettlementFlag] bigint  NOT NULL
);
GO

-- Creating table 'Himall_MarketSetting'
CREATE TABLE [dbo].[Himall_MarketSetting] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TypeId] int  NOT NULL,
    [Price] decimal(18,0)  NOT NULL
);
GO

-- Creating table 'Himall_MarketSettingMeta'
CREATE TABLE [dbo].[Himall_MarketSettingMeta] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [MarketId] int  NOT NULL,
    [MetaKey] varchar(100)  NOT NULL,
    [MetaValue] varchar(max)  NULL
);
GO

-- Creating table 'Himall_MobileHomeProducts'
CREATE TABLE [dbo].[Himall_MobileHomeProducts] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [PlatFormType] int  NOT NULL,
    [Sequence] smallint  NOT NULL,
    [ProductId] bigint  NOT NULL
);
GO

-- Creating table 'Himall_MobileHomeTopics'
CREATE TABLE [dbo].[Himall_MobileHomeTopics] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [Platform] int  NOT NULL,
    [TopicId] bigint  NOT NULL,
    [Sequence] int  NOT NULL
);
GO

-- Creating table 'Himall_FloorTablDetails'
CREATE TABLE [dbo].[Himall_FloorTablDetails] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [TabId] bigint  NOT NULL,
    [ProductId] bigint  NOT NULL
);
GO

-- Creating table 'Himall_FloorTabls'
CREATE TABLE [dbo].[Himall_FloorTabls] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [FloorId] bigint  NOT NULL,
    [Name] varchar(50)  NOT NULL
);
GO

-- Creating table 'Himall_InvoiceContext'
CREATE TABLE [dbo].[Himall_InvoiceContext] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Name] varchar(50)  NOT NULL
);
GO

-- Creating table 'Himall_InvoiceTitle'
CREATE TABLE [dbo].[Himall_InvoiceTitle] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [UserId] bigint  NOT NULL,
    [Name] varchar(200)  NULL,
    [IsDefault] tinyint  NOT NULL
);
GO

-- Creating table 'Himall_OrderPay'
CREATE TABLE [dbo].[Himall_OrderPay] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [OrderId] bigint  NOT NULL,
    [PayId] bigint  NOT NULL,
    [PayState] bit  NOT NULL,
    [PayTime] datetime  NULL
);
GO

-- Creating table 'Himall_GiftOrderItem'
CREATE TABLE [dbo].[Himall_GiftOrderItem] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [OrderId] bigint  NULL,
    [GiftId] bigint  NOT NULL,
    [Quantity] int  NOT NULL,
    [SaleIntegral] int  NULL,
    [GiftName] varchar(100)  NULL,
    [GiftValue] decimal(8,3)  NULL,
    [ImagePath] varchar(100)  NULL
);
GO

-- Creating table 'Himall_Gifts'
CREATE TABLE [dbo].[Himall_Gifts] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [GiftName] varchar(100)  NOT NULL,
    [NeedIntegral] int  NOT NULL,
    [LimtQuantity] int  NOT NULL,
    [StockQuantity] int  NOT NULL,
    [EndDate] datetime  NOT NULL,
    [NeedGrade] int  NOT NULL,
    [VirtualSales] int  NOT NULL,
    [RealSales] int  NOT NULL,
    [SalesStatus] int  NOT NULL,
    [ImagePath] varchar(100)  NULL,
    [Sequence] int  NOT NULL,
    [GiftValue] decimal(8,2)  NULL,
    [Description] varchar(max)  NULL,
    [AddDate] datetime  NULL
);
GO

-- Creating table 'Himall_GiftsOrder'
CREATE TABLE [dbo].[Himall_GiftsOrder] (
    [Id] bigint  NOT NULL,
    [OrderStatus] int  NOT NULL,
    [UserId] bigint  NOT NULL,
    [UserRemark] varchar(200)  NULL,
    [ShipTo] varchar(100)  NULL,
    [CellPhone] varchar(100)  NULL,
    [TopRegionId] int  NULL,
    [RegionId] int  NULL,
    [RegionFullName] varchar(100)  NULL,
    [Address] varchar(100)  NULL,
    [ExpressCompanyName] varchar(4000)  NULL,
    [ShipOrderNumber] varchar(4000)  NULL,
    [ShippingDate] datetime  NULL,
    [OrderDate] datetime  NOT NULL,
    [FinishDate] datetime  NULL,
    [TotalIntegral] int  NULL,
    [CloseReason] varchar(200)  NULL
);
GO

-- Creating table 'Himall_Bonus'
CREATE TABLE [dbo].[Himall_Bonus] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Type] int  NOT NULL,
    [Style] int  NOT NULL,
    [Name] varchar(100)  NOT NULL,
    [MerchantsName] varchar(50)  NOT NULL,
    [Remark] varchar(200)  NULL,
    [Blessing] varchar(100)  NULL,
    [TotalPrice] decimal(18,0)  NOT NULL,
    [StartTime] datetime  NOT NULL,
    [EndTime] datetime  NOT NULL,
    [QRPath] varchar(100)  NULL,
    [FixedAmount] decimal(18,0)  NULL,
    [RandomAmountStart] decimal(18,0)  NULL,
    [RandomAmountEnd] decimal(18,0)  NULL,
    [ReceiveCount] int  NOT NULL,
    [ImagePath] varchar(100)  NULL,
    [Description] varchar(255)  NULL,
    [IsInvalid] bit  NOT NULL,
    [PriceType] int  NULL,
    [ReceivePrice] decimal(18,0)  NOT NULL,
    [ReceiveHref] varchar(200)  NOT NULL
);
GO

-- Creating table 'Himall_BonusReceive'
CREATE TABLE [dbo].[Himall_BonusReceive] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [BonusId] bigint  NOT NULL,
    [OpenId] varchar(100)  NULL,
    [ReceiveTime] datetime  NULL,
    [Price] decimal(18,0)  NOT NULL,
    [IsShare] bit  NULL,
    [IsTransformedDeposit] bit  NOT NULL,
    [UserId] bigint  NULL
);
GO

-- Creating table 'Himall_ApplyWithDraw'
CREATE TABLE [dbo].[Himall_ApplyWithDraw] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [MemId] bigint  NOT NULL,
    [NickName] varchar(50)  NULL,
    [OpenId] varchar(50)  NULL,
    [ApplyStatus] int  NOT NULL,
    [ApplyAmount] decimal(18,0)  NOT NULL,
    [ApplyTime] datetime  NOT NULL,
    [ConfirmTime] datetime  NULL,
    [PayTime] datetime  NULL,
    [PayNo] varchar(50)  NULL,
    [OpUser] varchar(50)  NULL,
    [Remark] varchar(200)  NULL
);
GO

-- Creating table 'Himall_Capital'
CREATE TABLE [dbo].[Himall_Capital] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [MemId] bigint  NOT NULL,
    [Balance] decimal(18,0)  NULL,
    [FreezeAmount] decimal(18,0)  NULL,
    [ChargeAmount] decimal(18,0)  NULL
);
GO

-- Creating table 'Himall_CapitalDetail'
CREATE TABLE [dbo].[Himall_CapitalDetail] (
    [Id] bigint  NOT NULL,
    [CapitalID] bigint  NOT NULL,
    [SourceType] int  NOT NULL,
    [Amount] decimal(18,0)  NOT NULL,
    [SourceData] varchar(100)  NULL,
    [CreateTime] datetime  NULL,
    [Remark] varchar(255)  NULL
);
GO

-- Creating table 'Himall_CategoryCashDeposit'
CREATE TABLE [dbo].[Himall_CategoryCashDeposit] (
    [Id] bigint  NOT NULL,
    [CategoryId] bigint  NOT NULL,
    [NeedPayCashDeposit] decimal(18,0)  NOT NULL,
    [EnableNoReasonReturn] bit  NOT NULL
);
GO

-- Creating table 'Himall_InviteRecord'
CREATE TABLE [dbo].[Himall_InviteRecord] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [UserName] varchar(100)  NOT NULL,
    [RegName] varchar(100)  NOT NULL,
    [InviteIntegral] int  NOT NULL,
    [RegIntegral] int  NULL,
    [RegTime] datetime  NULL,
    [UserId] bigint  NULL,
    [RegUserId] bigint  NULL,
    [RecordTime] datetime  NULL
);
GO

-- Creating table 'Himall_InviteRule'
CREATE TABLE [dbo].[Himall_InviteRule] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [InviteIntegral] int  NULL,
    [RegIntegral] int  NULL,
    [ShareTitle] varchar(100)  NULL,
    [ShareDesc] varchar(1000)  NULL,
    [ShareIcon] varchar(200)  NULL,
    [ShareRule] varchar(1000)  NULL
);
GO

-- Creating table 'Himall_OpenIds'
CREATE TABLE [dbo].[Himall_OpenIds] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [OpenId] varchar(100)  NOT NULL,
    [SubscribeTime] datetime  NOT NULL,
    [IsSubscribe] bit  NOT NULL
);
GO

-- Creating table 'Himall_ChargeDetail'
CREATE TABLE [dbo].[Himall_ChargeDetail] (
    [Id] bigint  NOT NULL,
    [MemId] bigint  NOT NULL,
    [ChargeTime] datetime  NULL,
    [ChargeAmount] decimal(18,0)  NOT NULL,
    [ChargeWay] varchar(50)  NULL,
    [ChargeStatus] int  NOT NULL,
    [CreateTime] datetime  NULL
);
GO

-- Creating table 'Himall_WeiXinBasic'
CREATE TABLE [dbo].[Himall_WeiXinBasic] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Ticket] varchar(120)  NOT NULL,
    [TicketOutTime] datetime  NOT NULL,
    [AppId] varchar(50)  NOT NULL,
    [AccessToken] varchar(160)  NOT NULL
);
GO

-- Creating table 'Himall_WXCardCodeLog'
CREATE TABLE [dbo].[Himall_WXCardCodeLog] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [CardLogId] bigint  NULL,
    [CardId] varchar(50)  NULL,
    [Code] varchar(50)  NULL,
    [SendTime] datetime  NULL,
    [CodeStatus] int  NOT NULL,
    [UsedTime] datetime  NULL,
    [CouponType] int  NULL,
    [CouponCodeId] bigint  NULL,
    [OpenId] varchar(4000)  NULL
);
GO

-- Creating table 'Himall_WXCardLog'
CREATE TABLE [dbo].[Himall_WXCardLog] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [CardId] varchar(50)  NULL,
    [CardTitle] varchar(50)  NULL,
    [CardSubTitle] varchar(100)  NULL,
    [CardColor] varchar(10)  NULL,
    [AuditStatus] int  NULL,
    [AppId] varchar(50)  NULL,
    [AppSecret] varchar(50)  NULL,
    [CouponType] int  NULL,
    [CouponId] bigint  NULL
);
GO

-- Creating table 'Himall_Collocation'
CREATE TABLE [dbo].[Himall_Collocation] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [Title] varchar(100)  NOT NULL,
    [StartTime] datetime  NOT NULL,
    [EndTime] datetime  NOT NULL,
    [ShortDesc] varchar(1000)  NULL,
    [ShopId] bigint  NOT NULL,
    [CreateTime] datetime  NULL
);
GO

-- Creating table 'Himall_CollocationPoruducts'
CREATE TABLE [dbo].[Himall_CollocationPoruducts] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ProductId] bigint  NOT NULL,
    [ColloId] bigint  NOT NULL,
    [IsMain] bit  NOT NULL,
    [DisplaySequence] int  NULL
);
GO

-- Creating table 'Himall_CollocationSkus'
CREATE TABLE [dbo].[Himall_CollocationSkus] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ProductId] bigint  NOT NULL,
    [SkuID] varchar(100)  NOT NULL,
    [ColloProductId] bigint  NOT NULL,
    [Price] decimal(18,0)  NOT NULL,
    [SkuPirce] decimal(18,0)  NULL
);
GO

-- Creating table 'Himall_WXAccToken'
CREATE TABLE [dbo].[Himall_WXAccToken] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [AppId] varchar(50)  NULL,
    [AccessToken] varchar(100)  NOT NULL,
    [TokenOutTime] datetime  NOT NULL
);
GO

-- Creating table 'Himall_ShopBonus'
CREATE TABLE [dbo].[Himall_ShopBonus] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopId] bigint  NOT NULL,
    [Name] varchar(40)  NOT NULL,
    [Count] int  NOT NULL,
    [RandomAmountStart] decimal(18,0)  NOT NULL,
    [RandomAmountEnd] decimal(18,0)  NOT NULL,
    [UseState] int  NOT NULL,
    [UsrStatePrice] decimal(18,0)  NOT NULL,
    [GrantPrice] decimal(18,0)  NOT NULL,
    [DateStart] datetime  NOT NULL,
    [DateEnd] datetime  NOT NULL,
    [BonusDateStart] datetime  NOT NULL,
    [BonusDateEnd] datetime  NOT NULL,
    [ShareTitle] varchar(30)  NOT NULL,
    [ShareDetail] varchar(150)  NOT NULL,
    [ShareImg] varchar(200)  NOT NULL,
    [SynchronizeCard] bit  NOT NULL,
    [CardTitle] varchar(32)  NULL,
    [CardColor] varchar(16)  NULL,
    [CardSubtitle] varchar(30)  NULL,
    [IsInvalid] bit  NOT NULL,
    [ReceiveCount] int  NULL,
    [QRPath] varchar(80)  NOT NULL,
    [WXCardState] int  NOT NULL
);
GO

-- Creating table 'Himall_ShopBonusGrant'
CREATE TABLE [dbo].[Himall_ShopBonusGrant] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [ShopBonusId] bigint  NOT NULL,
    [UserId] bigint  NOT NULL,
    [OrderId] bigint  NOT NULL,
    [BonusQR] varchar(255)  NOT NULL
);
GO

-- Creating table 'Himall_ShopBonusReceive'
CREATE TABLE [dbo].[Himall_ShopBonusReceive] (
    [Id] bigint IDENTITY(1,1) NOT NULL,
    [BonusGrantId] bigint  NOT NULL,
    [OpenId] varchar(100)  NULL,
    [Price] decimal(18,0)  NULL,
    [State] int  NOT NULL,
    [ReceiveTime] datetime  NULL,
    [UsedTime] datetime  NULL,
    [UserId] bigint  NULL,
    [UsedOrderId] bigint  NULL,
    [WXName] varchar(30)  NULL,
    [WXHead] varchar(255)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Himall_Categories'
ALTER TABLE [dbo].[Himall_Categories]
ADD CONSTRAINT [PK_Himall_Categories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Attributes'
ALTER TABLE [dbo].[Himall_Attributes]
ADD CONSTRAINT [PK_Himall_Attributes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_AttributeValues'
ALTER TABLE [dbo].[Himall_AttributeValues]
ADD CONSTRAINT [PK_Himall_AttributeValues]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Brands'
ALTER TABLE [dbo].[Himall_Brands]
ADD CONSTRAINT [PK_Himall_Brands]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ProductConsultations'
ALTER TABLE [dbo].[Himall_ProductConsultations]
ADD CONSTRAINT [PK_Himall_ProductConsultations]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Products'
ALTER TABLE [dbo].[Himall_Products]
ADD CONSTRAINT [PK_Himall_Products]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_SellerSpecificationValues'
ALTER TABLE [dbo].[Himall_SellerSpecificationValues]
ADD CONSTRAINT [PK_Himall_SellerSpecificationValues]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_SpecificationValues'
ALTER TABLE [dbo].[Himall_SpecificationValues]
ADD CONSTRAINT [PK_Himall_SpecificationValues]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_TypeBrands'
ALTER TABLE [dbo].[Himall_TypeBrands]
ADD CONSTRAINT [PK_Himall_TypeBrands]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Types'
ALTER TABLE [dbo].[Himall_Types]
ADD CONSTRAINT [PK_Himall_Types]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ProductAttributes'
ALTER TABLE [dbo].[Himall_ProductAttributes]
ADD CONSTRAINT [PK_Himall_ProductAttributes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ProductId] in table 'Himall_ProductDescriptions'
ALTER TABLE [dbo].[Himall_ProductDescriptions]
ADD CONSTRAINT [PK_Himall_ProductDescriptions]
    PRIMARY KEY CLUSTERED ([ProductId] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ProductDescriptionTemplates'
ALTER TABLE [dbo].[Himall_ProductDescriptionTemplates]
ADD CONSTRAINT [PK_Himall_ProductDescriptionTemplates]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [AutoId] in table 'Himall_SKUs'
ALTER TABLE [dbo].[Himall_SKUs]
ADD CONSTRAINT [PK_Himall_SKUs]
    PRIMARY KEY CLUSTERED ([AutoId] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Accounts'
ALTER TABLE [dbo].[Himall_Accounts]
ADD CONSTRAINT [PK_Himall_Accounts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ArticleCategories'
ALTER TABLE [dbo].[Himall_ArticleCategories]
ADD CONSTRAINT [PK_Himall_ArticleCategories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Articles'
ALTER TABLE [dbo].[Himall_Articles]
ADD CONSTRAINT [PK_Himall_Articles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Banners'
ALTER TABLE [dbo].[Himall_Banners]
ADD CONSTRAINT [PK_Himall_Banners]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_CustomerServices'
ALTER TABLE [dbo].[Himall_CustomerServices]
ADD CONSTRAINT [PK_Himall_CustomerServices]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Favorites'
ALTER TABLE [dbo].[Himall_Favorites]
ADD CONSTRAINT [PK_Himall_Favorites]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_FloorBrands'
ALTER TABLE [dbo].[Himall_FloorBrands]
ADD CONSTRAINT [PK_Himall_FloorBrands]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_FloorCategories'
ALTER TABLE [dbo].[Himall_FloorCategories]
ADD CONSTRAINT [PK_Himall_FloorCategories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_FloorProducts'
ALTER TABLE [dbo].[Himall_FloorProducts]
ADD CONSTRAINT [PK_Himall_FloorProducts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_FloorTopics'
ALTER TABLE [dbo].[Himall_FloorTopics]
ADD CONSTRAINT [PK_Himall_FloorTopics]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_HandSlideAds'
ALTER TABLE [dbo].[Himall_HandSlideAds]
ADD CONSTRAINT [PK_Himall_HandSlideAds]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_HomeCategories'
ALTER TABLE [dbo].[Himall_HomeCategories]
ADD CONSTRAINT [PK_Himall_HomeCategories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_HomeFloors'
ALTER TABLE [dbo].[Himall_HomeFloors]
ADD CONSTRAINT [PK_Himall_HomeFloors]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ImageAds'
ALTER TABLE [dbo].[Himall_ImageAds]
ADD CONSTRAINT [PK_Himall_ImageAds]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Logs'
ALTER TABLE [dbo].[Himall_Logs]
ADD CONSTRAINT [PK_Himall_Logs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Managers'
ALTER TABLE [dbo].[Himall_Managers]
ADD CONSTRAINT [PK_Himall_Managers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_MemberOpenIds'
ALTER TABLE [dbo].[Himall_MemberOpenIds]
ADD CONSTRAINT [PK_Himall_MemberOpenIds]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Members'
ALTER TABLE [dbo].[Himall_Members]
ADD CONSTRAINT [PK_Himall_Members]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ModuleProducts'
ALTER TABLE [dbo].[Himall_ModuleProducts]
ADD CONSTRAINT [PK_Himall_ModuleProducts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_OrderComplaints'
ALTER TABLE [dbo].[Himall_OrderComplaints]
ADD CONSTRAINT [PK_Himall_OrderComplaints]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_OrderItems'
ALTER TABLE [dbo].[Himall_OrderItems]
ADD CONSTRAINT [PK_Himall_OrderItems]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_OrderOperationLogs'
ALTER TABLE [dbo].[Himall_OrderOperationLogs]
ADD CONSTRAINT [PK_Himall_OrderOperationLogs]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_OrderRefunds'
ALTER TABLE [dbo].[Himall_OrderRefunds]
ADD CONSTRAINT [PK_Himall_OrderRefunds]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Orders'
ALTER TABLE [dbo].[Himall_Orders]
ADD CONSTRAINT [PK_Himall_Orders]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ProductShopCategories'
ALTER TABLE [dbo].[Himall_ProductShopCategories]
ADD CONSTRAINT [PK_Himall_ProductShopCategories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_RolePrivileges'
ALTER TABLE [dbo].[Himall_RolePrivileges]
ADD CONSTRAINT [PK_Himall_RolePrivileges]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Roles'
ALTER TABLE [dbo].[Himall_Roles]
ADD CONSTRAINT [PK_Himall_Roles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ShippingAddresses'
ALTER TABLE [dbo].[Himall_ShippingAddresses]
ADD CONSTRAINT [PK_Himall_ShippingAddresses]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ShopCategories'
ALTER TABLE [dbo].[Himall_ShopCategories]
ADD CONSTRAINT [PK_Himall_ShopCategories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ShopGrades'
ALTER TABLE [dbo].[Himall_ShopGrades]
ADD CONSTRAINT [PK_Himall_ShopGrades]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ShoppingCarts'
ALTER TABLE [dbo].[Himall_ShoppingCarts]
ADD CONSTRAINT [PK_Himall_ShoppingCarts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Shops'
ALTER TABLE [dbo].[Himall_Shops]
ADD CONSTRAINT [PK_Himall_Shops]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_SiteSettings'
ALTER TABLE [dbo].[Himall_SiteSettings]
ADD CONSTRAINT [PK_Himall_SiteSettings]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_SlideAds'
ALTER TABLE [dbo].[Himall_SlideAds]
ADD CONSTRAINT [PK_Himall_SlideAds]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_TopicModules'
ALTER TABLE [dbo].[Himall_TopicModules]
ADD CONSTRAINT [PK_Himall_TopicModules]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Topics'
ALTER TABLE [dbo].[Himall_Topics]
ADD CONSTRAINT [PK_Himall_Topics]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ProductComments'
ALTER TABLE [dbo].[Himall_ProductComments]
ADD CONSTRAINT [PK_Himall_ProductComments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_OrderComments'
ALTER TABLE [dbo].[Himall_OrderComments]
ADD CONSTRAINT [PK_Himall_OrderComments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_BusinessCategories'
ALTER TABLE [dbo].[Himall_BusinessCategories]
ADD CONSTRAINT [PK_Himall_BusinessCategories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_AccountDetails'
ALTER TABLE [dbo].[Himall_AccountDetails]
ADD CONSTRAINT [PK_Himall_AccountDetails]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_HomeCategoryRows'
ALTER TABLE [dbo].[Himall_HomeCategoryRows]
ADD CONSTRAINT [PK_Himall_HomeCategoryRows]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ShopHomeModuleProducts'
ALTER TABLE [dbo].[Himall_ShopHomeModuleProducts]
ADD CONSTRAINT [PK_Himall_ShopHomeModuleProducts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ShopHomeModules'
ALTER TABLE [dbo].[Himall_ShopHomeModules]
ADD CONSTRAINT [PK_Himall_ShopHomeModules]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ProductVistis'
ALTER TABLE [dbo].[Himall_ProductVistis]
ADD CONSTRAINT [PK_Himall_ProductVistis]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ShopVistis'
ALTER TABLE [dbo].[Himall_ShopVistis]
ADD CONSTRAINT [PK_Himall_ShopVistis]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_FavoriteShops'
ALTER TABLE [dbo].[Himall_FavoriteShops]
ADD CONSTRAINT [PK_Himall_FavoriteShops]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_BrowsingHistory'
ALTER TABLE [dbo].[Himall_BrowsingHistory]
ADD CONSTRAINT [PK_Himall_BrowsingHistory]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Menus'
ALTER TABLE [dbo].[Himall_Menus]
ADD CONSTRAINT [PK_Himall_Menus]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_MessageLog'
ALTER TABLE [dbo].[Himall_MessageLog]
ADD CONSTRAINT [PK_Himall_MessageLog]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_MemberContacts'
ALTER TABLE [dbo].[Himall_MemberContacts]
ADD CONSTRAINT [PK_Himall_MemberContacts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_FreightAreaContent'
ALTER TABLE [dbo].[Himall_FreightAreaContent]
ADD CONSTRAINT [PK_Himall_FreightAreaContent]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_FreightTemplate'
ALTER TABLE [dbo].[Himall_FreightTemplate]
ADD CONSTRAINT [PK_Himall_FreightTemplate]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Agreement'
ALTER TABLE [dbo].[Himall_Agreement]
ADD CONSTRAINT [PK_Himall_Agreement]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_CashDeposit'
ALTER TABLE [dbo].[Himall_CashDeposit]
ADD CONSTRAINT [PK_Himall_CashDeposit]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_CashDepositDetail'
ALTER TABLE [dbo].[Himall_CashDepositDetail]
ADD CONSTRAINT [PK_Himall_CashDepositDetail]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ShopBrandApplys'
ALTER TABLE [dbo].[Himall_ShopBrandApplys]
ADD CONSTRAINT [PK_Himall_ShopBrandApplys]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ShopBrands'
ALTER TABLE [dbo].[Himall_ShopBrands]
ADD CONSTRAINT [PK_Himall_ShopBrands]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_StatisticOrderComments'
ALTER TABLE [dbo].[Himall_StatisticOrderComments]
ADD CONSTRAINT [PK_Himall_StatisticOrderComments]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_AccountPurchaseAgreement'
ALTER TABLE [dbo].[Himall_AccountPurchaseAgreement]
ADD CONSTRAINT [PK_Himall_AccountPurchaseAgreement]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_SensitiveWords'
ALTER TABLE [dbo].[Himall_SensitiveWords]
ADD CONSTRAINT [PK_Himall_SensitiveWords]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Coupon'
ALTER TABLE [dbo].[Himall_Coupon]
ADD CONSTRAINT [PK_Himall_Coupon]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_CouponRecord'
ALTER TABLE [dbo].[Himall_CouponRecord]
ADD CONSTRAINT [PK_Himall_CouponRecord]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ID] in table 'Himall_CouponSetting'
ALTER TABLE [dbo].[Himall_CouponSetting]
ADD CONSTRAINT [PK_Himall_CouponSetting]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_MemberGrade'
ALTER TABLE [dbo].[Himall_MemberGrade]
ADD CONSTRAINT [PK_Himall_MemberGrade]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_MemberIntegral'
ALTER TABLE [dbo].[Himall_MemberIntegral]
ADD CONSTRAINT [PK_Himall_MemberIntegral]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_MemberIntegralExchangeRules'
ALTER TABLE [dbo].[Himall_MemberIntegralExchangeRules]
ADD CONSTRAINT [PK_Himall_MemberIntegralExchangeRules]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_MemberIntegralRecord'
ALTER TABLE [dbo].[Himall_MemberIntegralRecord]
ADD CONSTRAINT [PK_Himall_MemberIntegralRecord]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_MemberIntegralRecordAction'
ALTER TABLE [dbo].[Himall_MemberIntegralRecordAction]
ADD CONSTRAINT [PK_Himall_MemberIntegralRecordAction]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_MemberIntegralRule'
ALTER TABLE [dbo].[Himall_MemberIntegralRule]
ADD CONSTRAINT [PK_Himall_MemberIntegralRule]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_VShop'
ALTER TABLE [dbo].[Himall_VShop]
ADD CONSTRAINT [PK_Himall_VShop]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_VShopExtend'
ALTER TABLE [dbo].[Himall_VShopExtend]
ADD CONSTRAINT [PK_Himall_VShopExtend]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [ID] in table 'Himall_WXshop'
ALTER TABLE [dbo].[Himall_WXshop]
ADD CONSTRAINT [PK_Himall_WXshop]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ActiveMarketService'
ALTER TABLE [dbo].[Himall_ActiveMarketService]
ADD CONSTRAINT [PK_Himall_ActiveMarketService]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_AccountMeta'
ALTER TABLE [dbo].[Himall_AccountMeta]
ADD CONSTRAINT [PK_Himall_AccountMeta]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_LimitTimeMarket'
ALTER TABLE [dbo].[Himall_LimitTimeMarket]
ADD CONSTRAINT [PK_Himall_LimitTimeMarket]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_MarketServiceRecord'
ALTER TABLE [dbo].[Himall_MarketServiceRecord]
ADD CONSTRAINT [PK_Himall_MarketServiceRecord]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_MarketSetting'
ALTER TABLE [dbo].[Himall_MarketSetting]
ADD CONSTRAINT [PK_Himall_MarketSetting]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_MarketSettingMeta'
ALTER TABLE [dbo].[Himall_MarketSettingMeta]
ADD CONSTRAINT [PK_Himall_MarketSettingMeta]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_MobileHomeProducts'
ALTER TABLE [dbo].[Himall_MobileHomeProducts]
ADD CONSTRAINT [PK_Himall_MobileHomeProducts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_MobileHomeTopics'
ALTER TABLE [dbo].[Himall_MobileHomeTopics]
ADD CONSTRAINT [PK_Himall_MobileHomeTopics]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_FloorTablDetails'
ALTER TABLE [dbo].[Himall_FloorTablDetails]
ADD CONSTRAINT [PK_Himall_FloorTablDetails]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_FloorTabls'
ALTER TABLE [dbo].[Himall_FloorTabls]
ADD CONSTRAINT [PK_Himall_FloorTabls]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_InvoiceContext'
ALTER TABLE [dbo].[Himall_InvoiceContext]
ADD CONSTRAINT [PK_Himall_InvoiceContext]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_InvoiceTitle'
ALTER TABLE [dbo].[Himall_InvoiceTitle]
ADD CONSTRAINT [PK_Himall_InvoiceTitle]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_OrderPay'
ALTER TABLE [dbo].[Himall_OrderPay]
ADD CONSTRAINT [PK_Himall_OrderPay]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_GiftOrderItem'
ALTER TABLE [dbo].[Himall_GiftOrderItem]
ADD CONSTRAINT [PK_Himall_GiftOrderItem]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Gifts'
ALTER TABLE [dbo].[Himall_Gifts]
ADD CONSTRAINT [PK_Himall_Gifts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_GiftsOrder'
ALTER TABLE [dbo].[Himall_GiftsOrder]
ADD CONSTRAINT [PK_Himall_GiftsOrder]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Bonus'
ALTER TABLE [dbo].[Himall_Bonus]
ADD CONSTRAINT [PK_Himall_Bonus]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_BonusReceive'
ALTER TABLE [dbo].[Himall_BonusReceive]
ADD CONSTRAINT [PK_Himall_BonusReceive]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ApplyWithDraw'
ALTER TABLE [dbo].[Himall_ApplyWithDraw]
ADD CONSTRAINT [PK_Himall_ApplyWithDraw]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Capital'
ALTER TABLE [dbo].[Himall_Capital]
ADD CONSTRAINT [PK_Himall_Capital]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_CapitalDetail'
ALTER TABLE [dbo].[Himall_CapitalDetail]
ADD CONSTRAINT [PK_Himall_CapitalDetail]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [CategoryId] in table 'Himall_CategoryCashDeposit'
ALTER TABLE [dbo].[Himall_CategoryCashDeposit]
ADD CONSTRAINT [PK_Himall_CategoryCashDeposit]
    PRIMARY KEY CLUSTERED ([CategoryId] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_InviteRecord'
ALTER TABLE [dbo].[Himall_InviteRecord]
ADD CONSTRAINT [PK_Himall_InviteRecord]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_InviteRule'
ALTER TABLE [dbo].[Himall_InviteRule]
ADD CONSTRAINT [PK_Himall_InviteRule]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_OpenIds'
ALTER TABLE [dbo].[Himall_OpenIds]
ADD CONSTRAINT [PK_Himall_OpenIds]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ChargeDetail'
ALTER TABLE [dbo].[Himall_ChargeDetail]
ADD CONSTRAINT [PK_Himall_ChargeDetail]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_WeiXinBasic'
ALTER TABLE [dbo].[Himall_WeiXinBasic]
ADD CONSTRAINT [PK_Himall_WeiXinBasic]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_WXCardCodeLog'
ALTER TABLE [dbo].[Himall_WXCardCodeLog]
ADD CONSTRAINT [PK_Himall_WXCardCodeLog]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_WXCardLog'
ALTER TABLE [dbo].[Himall_WXCardLog]
ADD CONSTRAINT [PK_Himall_WXCardLog]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_Collocation'
ALTER TABLE [dbo].[Himall_Collocation]
ADD CONSTRAINT [PK_Himall_Collocation]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_CollocationPoruducts'
ALTER TABLE [dbo].[Himall_CollocationPoruducts]
ADD CONSTRAINT [PK_Himall_CollocationPoruducts]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_CollocationSkus'
ALTER TABLE [dbo].[Himall_CollocationSkus]
ADD CONSTRAINT [PK_Himall_CollocationSkus]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_WXAccToken'
ALTER TABLE [dbo].[Himall_WXAccToken]
ADD CONSTRAINT [PK_Himall_WXAccToken]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ShopBonus'
ALTER TABLE [dbo].[Himall_ShopBonus]
ADD CONSTRAINT [PK_Himall_ShopBonus]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ShopBonusGrant'
ALTER TABLE [dbo].[Himall_ShopBonusGrant]
ADD CONSTRAINT [PK_Himall_ShopBonusGrant]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Himall_ShopBonusReceive'
ALTER TABLE [dbo].[Himall_ShopBonusReceive]
ADD CONSTRAINT [PK_Himall_ShopBonusReceive]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AttributeId] in table 'Himall_AttributeValues'
ALTER TABLE [dbo].[Himall_AttributeValues]
ADD CONSTRAINT [FK_Attribute_AttributeValue]
    FOREIGN KEY ([AttributeId])
    REFERENCES [dbo].[Himall_Attributes]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Attribute_AttributeValue'
CREATE INDEX [IX_FK_Attribute_AttributeValue]
ON [dbo].[Himall_AttributeValues]
    ([AttributeId]);
GO

-- Creating foreign key on [TypeId] in table 'Himall_Attributes'
ALTER TABLE [dbo].[Himall_Attributes]
ADD CONSTRAINT [FK_Type_Attribute]
    FOREIGN KEY ([TypeId])
    REFERENCES [dbo].[Himall_Types]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Type_Attribute'
CREATE INDEX [IX_FK_Type_Attribute]
ON [dbo].[Himall_Attributes]
    ([TypeId]);
GO

-- Creating foreign key on [BrandId] in table 'Himall_TypeBrands'
ALTER TABLE [dbo].[Himall_TypeBrands]
ADD CONSTRAINT [FK_Brand_TypeBrand]
    FOREIGN KEY ([BrandId])
    REFERENCES [dbo].[Himall_Brands]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Brand_TypeBrand'
CREATE INDEX [IX_FK_Brand_TypeBrand]
ON [dbo].[Himall_TypeBrands]
    ([BrandId]);
GO

-- Creating foreign key on [TypeId] in table 'Himall_Categories'
ALTER TABLE [dbo].[Himall_Categories]
ADD CONSTRAINT [FK_Type_Category]
    FOREIGN KEY ([TypeId])
    REFERENCES [dbo].[Himall_Types]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Type_Category'
CREATE INDEX [IX_FK_Type_Category]
ON [dbo].[Himall_Categories]
    ([TypeId]);
GO

-- Creating foreign key on [ProductId] in table 'Himall_ProductConsultations'
ALTER TABLE [dbo].[Himall_ProductConsultations]
ADD CONSTRAINT [FK_Product_ProductConsultation]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Himall_Products]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_ProductConsultation'
CREATE INDEX [IX_FK_Product_ProductConsultation]
ON [dbo].[Himall_ProductConsultations]
    ([ProductId]);
GO

-- Creating foreign key on [ValueId] in table 'Himall_SellerSpecificationValues'
ALTER TABLE [dbo].[Himall_SellerSpecificationValues]
ADD CONSTRAINT [FK_SpecificationValue_SellerSpecificationValue]
    FOREIGN KEY ([ValueId])
    REFERENCES [dbo].[Himall_SpecificationValues]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SpecificationValue_SellerSpecificationValue'
CREATE INDEX [IX_FK_SpecificationValue_SellerSpecificationValue]
ON [dbo].[Himall_SellerSpecificationValues]
    ([ValueId]);
GO

-- Creating foreign key on [TypeId] in table 'Himall_SpecificationValues'
ALTER TABLE [dbo].[Himall_SpecificationValues]
ADD CONSTRAINT [FK_Type_SpecificationValue]
    FOREIGN KEY ([TypeId])
    REFERENCES [dbo].[Himall_Types]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Type_SpecificationValue'
CREATE INDEX [IX_FK_Type_SpecificationValue]
ON [dbo].[Himall_SpecificationValues]
    ([TypeId]);
GO

-- Creating foreign key on [TypeId] in table 'Himall_TypeBrands'
ALTER TABLE [dbo].[Himall_TypeBrands]
ADD CONSTRAINT [FK_Type_TypeBrand]
    FOREIGN KEY ([TypeId])
    REFERENCES [dbo].[Himall_Types]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Type_TypeBrand'
CREATE INDEX [IX_FK_Type_TypeBrand]
ON [dbo].[Himall_TypeBrands]
    ([TypeId]);
GO

-- Creating foreign key on [AttributeId] in table 'Himall_ProductAttributes'
ALTER TABLE [dbo].[Himall_ProductAttributes]
ADD CONSTRAINT [FK_Attribute_ProductAttribute]
    FOREIGN KEY ([AttributeId])
    REFERENCES [dbo].[Himall_Attributes]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Attribute_ProductAttribute'
CREATE INDEX [IX_FK_Attribute_ProductAttribute]
ON [dbo].[Himall_ProductAttributes]
    ([AttributeId]);
GO

-- Creating foreign key on [ProductId] in table 'Himall_ProductAttributes'
ALTER TABLE [dbo].[Himall_ProductAttributes]
ADD CONSTRAINT [FK_Product_ProductAttribute]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Himall_Products]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_ProductAttribute'
CREATE INDEX [IX_FK_Product_ProductAttribute]
ON [dbo].[Himall_ProductAttributes]
    ([ProductId]);
GO

-- Creating foreign key on [ProductId] in table 'Himall_ProductDescriptions'
ALTER TABLE [dbo].[Himall_ProductDescriptions]
ADD CONSTRAINT [FK_Product_ProductDescription]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Himall_Products]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ProductId] in table 'Himall_SKUs'
ALTER TABLE [dbo].[Himall_SKUs]
ADD CONSTRAINT [FK_Product_Sku]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Himall_Products]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_Sku'
CREATE INDEX [IX_FK_Product_Sku]
ON [dbo].[Himall_SKUs]
    ([ProductId]);
GO

-- Creating foreign key on [CategoryId] in table 'Himall_Articles'
ALTER TABLE [dbo].[Himall_Articles]
ADD CONSTRAINT [FK_ArticleCategory_Article]
    FOREIGN KEY ([CategoryId])
    REFERENCES [dbo].[Himall_ArticleCategories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ArticleCategory_Article'
CREATE INDEX [IX_FK_ArticleCategory_Article]
ON [dbo].[Himall_Articles]
    ([CategoryId]);
GO

-- Creating foreign key on [BrandId] in table 'Himall_FloorBrands'
ALTER TABLE [dbo].[Himall_FloorBrands]
ADD CONSTRAINT [FK_Brand_FloorBrand]
    FOREIGN KEY ([BrandId])
    REFERENCES [dbo].[Himall_Brands]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Brand_FloorBrand'
CREATE INDEX [IX_FK_Brand_FloorBrand]
ON [dbo].[Himall_FloorBrands]
    ([BrandId]);
GO

-- Creating foreign key on [CategoryId] in table 'Himall_FloorCategories'
ALTER TABLE [dbo].[Himall_FloorCategories]
ADD CONSTRAINT [FK_Category_FloorCategory]
    FOREIGN KEY ([CategoryId])
    REFERENCES [dbo].[Himall_Categories]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Category_FloorCategory'
CREATE INDEX [IX_FK_Category_FloorCategory]
ON [dbo].[Himall_FloorCategories]
    ([CategoryId]);
GO

-- Creating foreign key on [CategoryId] in table 'Himall_HomeCategories'
ALTER TABLE [dbo].[Himall_HomeCategories]
ADD CONSTRAINT [FK_Category_HomeCategory]
    FOREIGN KEY ([CategoryId])
    REFERENCES [dbo].[Himall_Categories]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Category_HomeCategory'
CREATE INDEX [IX_FK_Category_HomeCategory]
ON [dbo].[Himall_HomeCategories]
    ([CategoryId]);
GO

-- Creating foreign key on [UserId] in table 'Himall_Favorites'
ALTER TABLE [dbo].[Himall_Favorites]
ADD CONSTRAINT [FK_Member_Favorite]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Himall_Members]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Member_Favorite'
CREATE INDEX [IX_FK_Member_Favorite]
ON [dbo].[Himall_Favorites]
    ([UserId]);
GO

-- Creating foreign key on [ProductId] in table 'Himall_Favorites'
ALTER TABLE [dbo].[Himall_Favorites]
ADD CONSTRAINT [FK_Product_Favorite]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Himall_Products]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_Favorite'
CREATE INDEX [IX_FK_Product_Favorite]
ON [dbo].[Himall_Favorites]
    ([ProductId]);
GO

-- Creating foreign key on [FloorId] in table 'Himall_FloorBrands'
ALTER TABLE [dbo].[Himall_FloorBrands]
ADD CONSTRAINT [FK_HomeFloor_FloorBrand]
    FOREIGN KEY ([FloorId])
    REFERENCES [dbo].[Himall_HomeFloors]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_HomeFloor_FloorBrand'
CREATE INDEX [IX_FK_HomeFloor_FloorBrand]
ON [dbo].[Himall_FloorBrands]
    ([FloorId]);
GO

-- Creating foreign key on [FloorId] in table 'Himall_FloorCategories'
ALTER TABLE [dbo].[Himall_FloorCategories]
ADD CONSTRAINT [FK_HomeFloor_FloorCategory]
    FOREIGN KEY ([FloorId])
    REFERENCES [dbo].[Himall_HomeFloors]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_HomeFloor_FloorCategory'
CREATE INDEX [IX_FK_HomeFloor_FloorCategory]
ON [dbo].[Himall_FloorCategories]
    ([FloorId]);
GO

-- Creating foreign key on [FloorId] in table 'Himall_FloorProducts'
ALTER TABLE [dbo].[Himall_FloorProducts]
ADD CONSTRAINT [FK_HomeFloor_FloorProduct]
    FOREIGN KEY ([FloorId])
    REFERENCES [dbo].[Himall_HomeFloors]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_HomeFloor_FloorProduct'
CREATE INDEX [IX_FK_HomeFloor_FloorProduct]
ON [dbo].[Himall_FloorProducts]
    ([FloorId]);
GO

-- Creating foreign key on [ProductId] in table 'Himall_FloorProducts'
ALTER TABLE [dbo].[Himall_FloorProducts]
ADD CONSTRAINT [FK_Product_FloorProduct]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Himall_Products]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_FloorProduct'
CREATE INDEX [IX_FK_Product_FloorProduct]
ON [dbo].[Himall_FloorProducts]
    ([ProductId]);
GO

-- Creating foreign key on [FloorId] in table 'Himall_FloorTopics'
ALTER TABLE [dbo].[Himall_FloorTopics]
ADD CONSTRAINT [FK_HomeFloor_FloorTopic]
    FOREIGN KEY ([FloorId])
    REFERENCES [dbo].[Himall_HomeFloors]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_HomeFloor_FloorTopic'
CREATE INDEX [IX_FK_HomeFloor_FloorTopic]
ON [dbo].[Himall_FloorTopics]
    ([FloorId]);
GO

-- Creating foreign key on [UserId] in table 'Himall_MemberOpenIds'
ALTER TABLE [dbo].[Himall_MemberOpenIds]
ADD CONSTRAINT [FK_Member_MemberOpenId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Himall_Members]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Member_MemberOpenId'
CREATE INDEX [IX_FK_Member_MemberOpenId]
ON [dbo].[Himall_MemberOpenIds]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Himall_ShippingAddresses'
ALTER TABLE [dbo].[Himall_ShippingAddresses]
ADD CONSTRAINT [FK_Member_ShippingAddress]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Himall_Members]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Member_ShippingAddress'
CREATE INDEX [IX_FK_Member_ShippingAddress]
ON [dbo].[Himall_ShippingAddresses]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Himall_ShoppingCarts'
ALTER TABLE [dbo].[Himall_ShoppingCarts]
ADD CONSTRAINT [FK_Member_ShoppingCart]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Himall_Members]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Member_ShoppingCart'
CREATE INDEX [IX_FK_Member_ShoppingCart]
ON [dbo].[Himall_ShoppingCarts]
    ([UserId]);
GO

-- Creating foreign key on [ModuleId] in table 'Himall_ModuleProducts'
ALTER TABLE [dbo].[Himall_ModuleProducts]
ADD CONSTRAINT [FK_TopicModule_ModuleProduct]
    FOREIGN KEY ([ModuleId])
    REFERENCES [dbo].[Himall_TopicModules]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TopicModule_ModuleProduct'
CREATE INDEX [IX_FK_TopicModule_ModuleProduct]
ON [dbo].[Himall_ModuleProducts]
    ([ModuleId]);
GO

-- Creating foreign key on [OrderId] in table 'Himall_OrderComplaints'
ALTER TABLE [dbo].[Himall_OrderComplaints]
ADD CONSTRAINT [FK_Order_OrderComplaint]
    FOREIGN KEY ([OrderId])
    REFERENCES [dbo].[Himall_Orders]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_OrderComplaint'
CREATE INDEX [IX_FK_Order_OrderComplaint]
ON [dbo].[Himall_OrderComplaints]
    ([OrderId]);
GO

-- Creating foreign key on [OrderId] in table 'Himall_OrderItems'
ALTER TABLE [dbo].[Himall_OrderItems]
ADD CONSTRAINT [FK_Order_OrderItem]
    FOREIGN KEY ([OrderId])
    REFERENCES [dbo].[Himall_Orders]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_OrderItem'
CREATE INDEX [IX_FK_Order_OrderItem]
ON [dbo].[Himall_OrderItems]
    ([OrderId]);
GO

-- Creating foreign key on [OrderItemId] in table 'Himall_OrderRefunds'
ALTER TABLE [dbo].[Himall_OrderRefunds]
ADD CONSTRAINT [FK_OrderItem_OrderRefund]
    FOREIGN KEY ([OrderItemId])
    REFERENCES [dbo].[Himall_OrderItems]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_OrderItem_OrderRefund'
CREATE INDEX [IX_FK_OrderItem_OrderRefund]
ON [dbo].[Himall_OrderRefunds]
    ([OrderItemId]);
GO

-- Creating foreign key on [OrderId] in table 'Himall_OrderOperationLogs'
ALTER TABLE [dbo].[Himall_OrderOperationLogs]
ADD CONSTRAINT [FK_Order_OrderOperationLog]
    FOREIGN KEY ([OrderId])
    REFERENCES [dbo].[Himall_Orders]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_OrderOperationLog'
CREATE INDEX [IX_FK_Order_OrderOperationLog]
ON [dbo].[Himall_OrderOperationLogs]
    ([OrderId]);
GO

-- Creating foreign key on [ProductId] in table 'Himall_ProductShopCategories'
ALTER TABLE [dbo].[Himall_ProductShopCategories]
ADD CONSTRAINT [FK_Product_ProductShopCategory]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Himall_Products]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_ProductShopCategory'
CREATE INDEX [IX_FK_Product_ProductShopCategory]
ON [dbo].[Himall_ProductShopCategories]
    ([ProductId]);
GO

-- Creating foreign key on [ProductId] in table 'Himall_ShoppingCarts'
ALTER TABLE [dbo].[Himall_ShoppingCarts]
ADD CONSTRAINT [FK_Product_ShoppingCart]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Himall_Products]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_ShoppingCart'
CREATE INDEX [IX_FK_Product_ShoppingCart]
ON [dbo].[Himall_ShoppingCarts]
    ([ProductId]);
GO

-- Creating foreign key on [ShopCategoryId] in table 'Himall_ProductShopCategories'
ALTER TABLE [dbo].[Himall_ProductShopCategories]
ADD CONSTRAINT [FK_ShopCategory_ProductShopCategory]
    FOREIGN KEY ([ShopCategoryId])
    REFERENCES [dbo].[Himall_ShopCategories]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ShopCategory_ProductShopCategory'
CREATE INDEX [IX_FK_ShopCategory_ProductShopCategory]
ON [dbo].[Himall_ProductShopCategories]
    ([ShopCategoryId]);
GO

-- Creating foreign key on [RoleId] in table 'Himall_RolePrivileges'
ALTER TABLE [dbo].[Himall_RolePrivileges]
ADD CONSTRAINT [FK_Role_RolePrivilege]
    FOREIGN KEY ([RoleId])
    REFERENCES [dbo].[Himall_Roles]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Role_RolePrivilege'
CREATE INDEX [IX_FK_Role_RolePrivilege]
ON [dbo].[Himall_RolePrivileges]
    ([RoleId]);
GO

-- Creating foreign key on [GradeId] in table 'Himall_Shops'
ALTER TABLE [dbo].[Himall_Shops]
ADD CONSTRAINT [FK_ShopGrade_Shop]
    FOREIGN KEY ([GradeId])
    REFERENCES [dbo].[Himall_ShopGrades]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ShopGrade_Shop'
CREATE INDEX [IX_FK_ShopGrade_Shop]
ON [dbo].[Himall_Shops]
    ([GradeId]);
GO

-- Creating foreign key on [TopicId] in table 'Himall_TopicModules'
ALTER TABLE [dbo].[Himall_TopicModules]
ADD CONSTRAINT [FK_Topic_TopicModule]
    FOREIGN KEY ([TopicId])
    REFERENCES [dbo].[Himall_Topics]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Topic_TopicModule'
CREATE INDEX [IX_FK_Topic_TopicModule]
ON [dbo].[Himall_TopicModules]
    ([TopicId]);
GO

-- Creating foreign key on [ProductId] in table 'Himall_ProductComments'
ALTER TABLE [dbo].[Himall_ProductComments]
ADD CONSTRAINT [FK_Product_ProductComment]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Himall_Products]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_ProductComment'
CREATE INDEX [IX_FK_Product_ProductComment]
ON [dbo].[Himall_ProductComments]
    ([ProductId]);
GO

-- Creating foreign key on [ProductId] in table 'Himall_ModuleProducts'
ALTER TABLE [dbo].[Himall_ModuleProducts]
ADD CONSTRAINT [FK_Product_ModuleProduct]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Himall_Products]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_ModuleProduct'
CREATE INDEX [IX_FK_Product_ModuleProduct]
ON [dbo].[Himall_ModuleProducts]
    ([ProductId]);
GO

-- Creating foreign key on [OrderId] in table 'Himall_OrderComments'
ALTER TABLE [dbo].[Himall_OrderComments]
ADD CONSTRAINT [FK_Order_OrderComment]
    FOREIGN KEY ([OrderId])
    REFERENCES [dbo].[Himall_Orders]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Order_OrderComment'
CREATE INDEX [IX_FK_Order_OrderComment]
ON [dbo].[Himall_OrderComments]
    ([OrderId]);
GO

-- Creating foreign key on [CategoryId] in table 'Himall_BusinessCategories'
ALTER TABLE [dbo].[Himall_BusinessCategories]
ADD CONSTRAINT [FK_Category_BusinessCategory]
    FOREIGN KEY ([CategoryId])
    REFERENCES [dbo].[Himall_Categories]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Category_BusinessCategory'
CREATE INDEX [IX_FK_Category_BusinessCategory]
ON [dbo].[Himall_BusinessCategories]
    ([CategoryId]);
GO

-- Creating foreign key on [ProductId] in table 'Himall_ShopHomeModuleProducts'
ALTER TABLE [dbo].[Himall_ShopHomeModuleProducts]
ADD CONSTRAINT [FK_Product_ShopHomeModuleProduct]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Himall_Products]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_ShopHomeModuleProduct'
CREATE INDEX [IX_FK_Product_ShopHomeModuleProduct]
ON [dbo].[Himall_ShopHomeModuleProducts]
    ([ProductId]);
GO

-- Creating foreign key on [HomeModuleId] in table 'Himall_ShopHomeModuleProducts'
ALTER TABLE [dbo].[Himall_ShopHomeModuleProducts]
ADD CONSTRAINT [FK_ShopHomeModule_ShopHomeModuleProduct]
    FOREIGN KEY ([HomeModuleId])
    REFERENCES [dbo].[Himall_ShopHomeModules]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ShopHomeModule_ShopHomeModuleProduct'
CREATE INDEX [IX_FK_ShopHomeModule_ShopHomeModuleProduct]
ON [dbo].[Himall_ShopHomeModuleProducts]
    ([HomeModuleId]);
GO

-- Creating foreign key on [ProductId] in table 'Himall_ProductVistis'
ALTER TABLE [dbo].[Himall_ProductVistis]
ADD CONSTRAINT [FK_Product_ProductVisti]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Himall_Products]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_ProductVisti'
CREATE INDEX [IX_FK_Product_ProductVisti]
ON [dbo].[Himall_ProductVistis]
    ([ProductId]);
GO

-- Creating foreign key on [UserId] in table 'Himall_FavoriteShops'
ALTER TABLE [dbo].[Himall_FavoriteShops]
ADD CONSTRAINT [FK_Member_FavoriteShop]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Himall_Members]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Member_FavoriteShop'
CREATE INDEX [IX_FK_Member_FavoriteShop]
ON [dbo].[Himall_FavoriteShops]
    ([UserId]);
GO

-- Creating foreign key on [ShopId] in table 'Himall_FavoriteShops'
ALTER TABLE [dbo].[Himall_FavoriteShops]
ADD CONSTRAINT [FK_Himall_FavoriteShops_Himall_Shops]
    FOREIGN KEY ([ShopId])
    REFERENCES [dbo].[Himall_Shops]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Himall_FavoriteShops_Himall_Shops'
CREATE INDEX [IX_FK_Himall_FavoriteShops_Himall_Shops]
ON [dbo].[Himall_FavoriteShops]
    ([ShopId]);
GO

-- Creating foreign key on [MemberId] in table 'Himall_BrowsingHistory'
ALTER TABLE [dbo].[Himall_BrowsingHistory]
ADD CONSTRAINT [FK_Himall_BrowsingHistory_Himall_BrowsingHistory]
    FOREIGN KEY ([MemberId])
    REFERENCES [dbo].[Himall_Members]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Himall_BrowsingHistory_Himall_BrowsingHistory'
CREATE INDEX [IX_FK_Himall_BrowsingHistory_Himall_BrowsingHistory]
ON [dbo].[Himall_BrowsingHistory]
    ([MemberId]);
GO

-- Creating foreign key on [ProductId] in table 'Himall_BrowsingHistory'
ALTER TABLE [dbo].[Himall_BrowsingHistory]
ADD CONSTRAINT [FK_Himall_BrowsingHistory_Himall_Products]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Himall_Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Himall_BrowsingHistory_Himall_Products'
CREATE INDEX [IX_FK_Himall_BrowsingHistory_Himall_Products]
ON [dbo].[Himall_BrowsingHistory]
    ([ProductId]);
GO

-- Creating foreign key on [ShopId] in table 'Himall_Menus'
ALTER TABLE [dbo].[Himall_Menus]
ADD CONSTRAINT [FK__Himall_Me__ShopI__489AC854]
    FOREIGN KEY ([ShopId])
    REFERENCES [dbo].[Himall_Shops]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__Himall_Me__ShopI__489AC854'
CREATE INDEX [IX_FK__Himall_Me__ShopI__489AC854]
ON [dbo].[Himall_Menus]
    ([ShopId]);
GO

-- Creating foreign key on [ShopId] in table 'Himall_MessageLog'
ALTER TABLE [dbo].[Himall_MessageLog]
ADD CONSTRAINT [FK__Himall_Me__ShopI__4D5F7D71]
    FOREIGN KEY ([ShopId])
    REFERENCES [dbo].[Himall_Shops]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__Himall_Me__ShopI__4D5F7D71'
CREATE INDEX [IX_FK__Himall_Me__ShopI__4D5F7D71]
ON [dbo].[Himall_MessageLog]
    ([ShopId]);
GO

-- Creating foreign key on [FreightTemplateId] in table 'Himall_FreightAreaContent'
ALTER TABLE [dbo].[Himall_FreightAreaContent]
ADD CONSTRAINT [FK_freighttemplate_freightareacontent]
    FOREIGN KEY ([FreightTemplateId])
    REFERENCES [dbo].[Himall_FreightTemplate]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_freighttemplate_freightareacontent'
CREATE INDEX [IX_FK_freighttemplate_freightareacontent]
ON [dbo].[Himall_FreightAreaContent]
    ([FreightTemplateId]);
GO

-- Creating foreign key on [FreightTemplateId] in table 'Himall_Products'
ALTER TABLE [dbo].[Himall_Products]
ADD CONSTRAINT [fk_products_freighttemplate]
    FOREIGN KEY ([FreightTemplateId])
    REFERENCES [dbo].[Himall_FreightTemplate]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_products_freighttemplate'
CREATE INDEX [IX_fk_products_freighttemplate]
ON [dbo].[Himall_Products]
    ([FreightTemplateId]);
GO

-- Creating foreign key on [ShopId] in table 'Himall_CashDeposit'
ALTER TABLE [dbo].[Himall_CashDeposit]
ADD CONSTRAINT [FK_Himall_CashDeposit_Himall_Shops]
    FOREIGN KEY ([ShopId])
    REFERENCES [dbo].[Himall_Shops]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Himall_CashDeposit_Himall_Shops'
CREATE INDEX [IX_FK_Himall_CashDeposit_Himall_Shops]
ON [dbo].[Himall_CashDeposit]
    ([ShopId]);
GO

-- Creating foreign key on [CashDepositId] in table 'Himall_CashDepositDetail'
ALTER TABLE [dbo].[Himall_CashDepositDetail]
ADD CONSTRAINT [FK_KF_Himall_CashDeposit_Himall_CashDepositDetail]
    FOREIGN KEY ([CashDepositId])
    REFERENCES [dbo].[Himall_CashDeposit]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_KF_Himall_CashDeposit_Himall_CashDepositDetail'
CREATE INDEX [IX_FK_KF_Himall_CashDeposit_Himall_CashDepositDetail]
ON [dbo].[Himall_CashDepositDetail]
    ([CashDepositId]);
GO

-- Creating foreign key on [BrandId] in table 'Himall_ShopBrands'
ALTER TABLE [dbo].[Himall_ShopBrands]
ADD CONSTRAINT [FK_ShopBrandId]
    FOREIGN KEY ([BrandId])
    REFERENCES [dbo].[Himall_Brands]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ShopBrandId'
CREATE INDEX [IX_FK_ShopBrandId]
ON [dbo].[Himall_ShopBrands]
    ([BrandId]);
GO

-- Creating foreign key on [BrandId] in table 'Himall_ShopBrandApplys'
ALTER TABLE [dbo].[Himall_ShopBrandApplys]
ADD CONSTRAINT [FK_BrandId]
    FOREIGN KEY ([BrandId])
    REFERENCES [dbo].[Himall_Brands]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_BrandId'
CREATE INDEX [IX_FK_BrandId]
ON [dbo].[Himall_ShopBrandApplys]
    ([BrandId]);
GO

-- Creating foreign key on [ShopId] in table 'Himall_ShopBrandApplys'
ALTER TABLE [dbo].[Himall_ShopBrandApplys]
ADD CONSTRAINT [FK_ShopApplysId]
    FOREIGN KEY ([ShopId])
    REFERENCES [dbo].[Himall_Shops]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ShopApplysId'
CREATE INDEX [IX_FK_ShopApplysId]
ON [dbo].[Himall_ShopBrandApplys]
    ([ShopId]);
GO

-- Creating foreign key on [ShopId] in table 'Himall_ShopBrands'
ALTER TABLE [dbo].[Himall_ShopBrands]
ADD CONSTRAINT [FK_ShopId]
    FOREIGN KEY ([ShopId])
    REFERENCES [dbo].[Himall_Shops]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ShopId'
CREATE INDEX [IX_FK_ShopId]
ON [dbo].[Himall_ShopBrands]
    ([ShopId]);
GO

-- Creating foreign key on [ShopId] in table 'Himall_StatisticOrderComments'
ALTER TABLE [dbo].[Himall_StatisticOrderComments]
ADD CONSTRAINT [FK_himall_statisticordercomments_ibfk_1]
    FOREIGN KEY ([ShopId])
    REFERENCES [dbo].[Himall_Shops]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_himall_statisticordercomments_ibfk_1'
CREATE INDEX [IX_FK_himall_statisticordercomments_ibfk_1]
ON [dbo].[Himall_StatisticOrderComments]
    ([ShopId]);
GO

-- Creating foreign key on [AccountId] in table 'Himall_AccountPurchaseAgreement'
ALTER TABLE [dbo].[Himall_AccountPurchaseAgreement]
ADD CONSTRAINT [FK_himall_accountpurchaseagreement_ibfk_1]
    FOREIGN KEY ([AccountId])
    REFERENCES [dbo].[Himall_Accounts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_himall_accountpurchaseagreement_ibfk_1'
CREATE INDEX [IX_FK_himall_accountpurchaseagreement_ibfk_1]
ON [dbo].[Himall_AccountPurchaseAgreement]
    ([AccountId]);
GO

-- Creating foreign key on [AccountId] in table 'Himall_AccountDetails'
ALTER TABLE [dbo].[Himall_AccountDetails]
ADD CONSTRAINT [FK_himall_accountdetails_ibfk_1]
    FOREIGN KEY ([AccountId])
    REFERENCES [dbo].[Himall_Accounts]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_himall_accountdetails_ibfk_1'
CREATE INDEX [IX_FK_himall_accountdetails_ibfk_1]
ON [dbo].[Himall_AccountDetails]
    ([AccountId]);
GO

-- Creating foreign key on [UserId] in table 'Himall_ProductComments'
ALTER TABLE [dbo].[Himall_ProductComments]
ADD CONSTRAINT [FK_himall_productcomments_ibfk_4]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Himall_Members]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_himall_productcomments_ibfk_4'
CREATE INDEX [IX_FK_himall_productcomments_ibfk_4]
ON [dbo].[Himall_ProductComments]
    ([UserId]);
GO

-- Creating foreign key on [SubOrderId] in table 'Himall_ProductComments'
ALTER TABLE [dbo].[Himall_ProductComments]
ADD CONSTRAINT [FK_himall_productcomments_ibfk_1]
    FOREIGN KEY ([SubOrderId])
    REFERENCES [dbo].[Himall_OrderItems]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_himall_productcomments_ibfk_1'
CREATE INDEX [IX_FK_himall_productcomments_ibfk_1]
ON [dbo].[Himall_ProductComments]
    ([SubOrderId]);
GO

-- Creating foreign key on [ShopId] in table 'Himall_ProductComments'
ALTER TABLE [dbo].[Himall_ProductComments]
ADD CONSTRAINT [FK_himall_productcomments_ibfk_3]
    FOREIGN KEY ([ShopId])
    REFERENCES [dbo].[Himall_Shops]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_himall_productcomments_ibfk_3'
CREATE INDEX [IX_FK_himall_productcomments_ibfk_3]
ON [dbo].[Himall_ProductComments]
    ([ShopId]);
GO

-- Creating foreign key on [ShopId] in table 'Himall_Coupon'
ALTER TABLE [dbo].[Himall_Coupon]
ADD CONSTRAINT [FK_himall_coupon_ibfk_1]
    FOREIGN KEY ([ShopId])
    REFERENCES [dbo].[Himall_Shops]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_himall_coupon_ibfk_1'
CREATE INDEX [IX_FK_himall_coupon_ibfk_1]
ON [dbo].[Himall_Coupon]
    ([ShopId]);
GO

-- Creating foreign key on [CouponId] in table 'Himall_CouponRecord'
ALTER TABLE [dbo].[Himall_CouponRecord]
ADD CONSTRAINT [FK_himall_couponrecord_ibfk_2]
    FOREIGN KEY ([CouponId])
    REFERENCES [dbo].[Himall_Coupon]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_himall_couponrecord_ibfk_2'
CREATE INDEX [IX_FK_himall_couponrecord_ibfk_2]
ON [dbo].[Himall_CouponRecord]
    ([CouponId]);
GO

-- Creating foreign key on [ShopId] in table 'Himall_CouponRecord'
ALTER TABLE [dbo].[Himall_CouponRecord]
ADD CONSTRAINT [FK_himall_couponrecord_ibfk_1]
    FOREIGN KEY ([ShopId])
    REFERENCES [dbo].[Himall_Shops]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_himall_couponrecord_ibfk_1'
CREATE INDEX [IX_FK_himall_couponrecord_ibfk_1]
ON [dbo].[Himall_CouponRecord]
    ([ShopId]);
GO

-- Creating foreign key on [MemberId] in table 'Himall_MemberIntegralRecord'
ALTER TABLE [dbo].[Himall_MemberIntegralRecord]
ADD CONSTRAINT [FK_himall_memberintegralrecord_ibfk_1]
    FOREIGN KEY ([MemberId])
    REFERENCES [dbo].[Himall_Members]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_himall_memberintegralrecord_ibfk_1'
CREATE INDEX [IX_FK_himall_memberintegralrecord_ibfk_1]
ON [dbo].[Himall_MemberIntegralRecord]
    ([MemberId]);
GO

-- Creating foreign key on [IntegralRecordId] in table 'Himall_MemberIntegralRecordAction'
ALTER TABLE [dbo].[Himall_MemberIntegralRecordAction]
ADD CONSTRAINT [FK_himall_memberintegralrecordaction_ibfk_1]
    FOREIGN KEY ([IntegralRecordId])
    REFERENCES [dbo].[Himall_MemberIntegralRecord]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_himall_memberintegralrecordaction_ibfk_1'
CREATE INDEX [IX_FK_himall_memberintegralrecordaction_ibfk_1]
ON [dbo].[Himall_MemberIntegralRecordAction]
    ([IntegralRecordId]);
GO

-- Creating foreign key on [ShopId] in table 'Himall_VShop'
ALTER TABLE [dbo].[Himall_VShop]
ADD CONSTRAINT [FK_himall_vshop_ibfk_1]
    FOREIGN KEY ([ShopId])
    REFERENCES [dbo].[Himall_Shops]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_himall_vshop_ibfk_1'
CREATE INDEX [IX_FK_himall_vshop_ibfk_1]
ON [dbo].[Himall_VShop]
    ([ShopId]);
GO

-- Creating foreign key on [VShopId] in table 'Himall_VShopExtend'
ALTER TABLE [dbo].[Himall_VShopExtend]
ADD CONSTRAINT [FK_himall_vshopextend_ibfk_1]
    FOREIGN KEY ([VShopId])
    REFERENCES [dbo].[Himall_VShop]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_himall_vshopextend_ibfk_1'
CREATE INDEX [IX_FK_himall_vshopextend_ibfk_1]
ON [dbo].[Himall_VShopExtend]
    ([VShopId]);
GO

-- Creating foreign key on [MarketServiceId] in table 'Himall_MarketServiceRecord'
ALTER TABLE [dbo].[Himall_MarketServiceRecord]
ADD CONSTRAINT [FK_Himall_MarketServiceRecord_Himall_ActiveMarketService]
    FOREIGN KEY ([MarketServiceId])
    REFERENCES [dbo].[Himall_ActiveMarketService]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Himall_MarketServiceRecord_Himall_ActiveMarketService'
CREATE INDEX [IX_FK_Himall_MarketServiceRecord_Himall_ActiveMarketService]
ON [dbo].[Himall_MarketServiceRecord]
    ([MarketServiceId]);
GO

-- Creating foreign key on [MarketId] in table 'Himall_MarketSettingMeta'
ALTER TABLE [dbo].[Himall_MarketSettingMeta]
ADD CONSTRAINT [FK_Hiamll_MarketSettingMeta_ToSetting]
    FOREIGN KEY ([MarketId])
    REFERENCES [dbo].[Himall_MarketSetting]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Hiamll_MarketSettingMeta_ToSetting'
CREATE INDEX [IX_FK_Hiamll_MarketSettingMeta_ToSetting]
ON [dbo].[Himall_MarketSettingMeta]
    ([MarketId]);
GO

-- Creating foreign key on [ProductId] in table 'Himall_MobileHomeProducts'
ALTER TABLE [dbo].[Himall_MobileHomeProducts]
ADD CONSTRAINT [FK_Himall_MobileHomeProducts_Himall_Products]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Himall_Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Himall_MobileHomeProducts_Himall_Products'
CREATE INDEX [IX_FK_Himall_MobileHomeProducts_Himall_Products]
ON [dbo].[Himall_MobileHomeProducts]
    ([ProductId]);
GO

-- Creating foreign key on [TopicId] in table 'Himall_MobileHomeTopics'
ALTER TABLE [dbo].[Himall_MobileHomeTopics]
ADD CONSTRAINT [FK__Himall_Mo__Topic__02C769E9]
    FOREIGN KEY ([TopicId])
    REFERENCES [dbo].[Himall_Topics]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK__Himall_Mo__Topic__02C769E9'
CREATE INDEX [IX_FK__Himall_Mo__Topic__02C769E9]
ON [dbo].[Himall_MobileHomeTopics]
    ([TopicId]);
GO

-- Creating foreign key on [MemberId] in table 'Himall_MemberIntegral'
ALTER TABLE [dbo].[Himall_MemberIntegral]
ADD CONSTRAINT [FK_Member_MemberIntegral]
    FOREIGN KEY ([MemberId])
    REFERENCES [dbo].[Himall_Members]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Member_MemberIntegral'
CREATE INDEX [IX_FK_Member_MemberIntegral]
ON [dbo].[Himall_MemberIntegral]
    ([MemberId]);
GO

-- Creating foreign key on [ProductId] in table 'Himall_FloorTablDetails'
ALTER TABLE [dbo].[Himall_FloorTablDetails]
ADD CONSTRAINT [FK_ProductIdFK]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Himall_Products]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ProductIdFK'
CREATE INDEX [IX_FK_ProductIdFK]
ON [dbo].[Himall_FloorTablDetails]
    ([ProductId]);
GO

-- Creating foreign key on [TabId] in table 'Himall_FloorTablDetails'
ALTER TABLE [dbo].[Himall_FloorTablDetails]
ADD CONSTRAINT [FK_TabIdFK]
    FOREIGN KEY ([TabId])
    REFERENCES [dbo].[Himall_FloorTabls]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TabIdFK'
CREATE INDEX [IX_FK_TabIdFK]
ON [dbo].[Himall_FloorTablDetails]
    ([TabId]);
GO

-- Creating foreign key on [FloorId] in table 'Himall_FloorTabls'
ALTER TABLE [dbo].[Himall_FloorTabls]
ADD CONSTRAINT [FK_FloorIdFK]
    FOREIGN KEY ([FloorId])
    REFERENCES [dbo].[Himall_HomeFloors]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_FloorIdFK'
CREATE INDEX [IX_FK_FloorIdFK]
ON [dbo].[Himall_FloorTabls]
    ([FloorId]);
GO

-- Creating foreign key on [CouponID] in table 'Himall_CouponSetting'
ALTER TABLE [dbo].[Himall_CouponSetting]
ADD CONSTRAINT [fk_Himall_CouponSetting]
    FOREIGN KEY ([CouponID])
    REFERENCES [dbo].[Himall_Coupon]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'fk_Himall_CouponSetting'
CREATE INDEX [IX_fk_Himall_CouponSetting]
ON [dbo].[Himall_CouponSetting]
    ([CouponID]);
GO

-- Creating foreign key on [ShopId] in table 'Himall_Products'
ALTER TABLE [dbo].[Himall_Products]
ADD CONSTRAINT [FK_SHOPID1]
    FOREIGN KEY ([ShopId])
    REFERENCES [dbo].[Himall_Shops]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_SHOPID1'
CREATE INDEX [IX_FK_SHOPID1]
ON [dbo].[Himall_Products]
    ([ShopId]);
GO

-- Creating foreign key on [CategoryId] in table 'Himall_Products'
ALTER TABLE [dbo].[Himall_Products]
ADD CONSTRAINT [FK_CategoryId]
    FOREIGN KEY ([CategoryId])
    REFERENCES [dbo].[Himall_Categories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CategoryId'
CREATE INDEX [IX_FK_CategoryId]
ON [dbo].[Himall_Products]
    ([CategoryId]);
GO

-- Creating foreign key on [OrderId] in table 'Himall_GiftOrderItem'
ALTER TABLE [dbo].[Himall_GiftOrderItem]
ADD CONSTRAINT [FK_Himall_Gitem_OrderId]
    FOREIGN KEY ([OrderId])
    REFERENCES [dbo].[Himall_GiftsOrder]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Himall_Gitem_OrderId'
CREATE INDEX [IX_FK_Himall_Gitem_OrderId]
ON [dbo].[Himall_GiftOrderItem]
    ([OrderId]);
GO

-- Creating foreign key on [BonusId] in table 'Himall_BonusReceive'
ALTER TABLE [dbo].[Himall_BonusReceive]
ADD CONSTRAINT [FK_Reference_1]
    FOREIGN KEY ([BonusId])
    REFERENCES [dbo].[Himall_Bonus]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Reference_1'
CREATE INDEX [IX_FK_Reference_1]
ON [dbo].[Himall_BonusReceive]
    ([BonusId]);
GO

-- Creating foreign key on [CapitalID] in table 'Himall_CapitalDetail'
ALTER TABLE [dbo].[Himall_CapitalDetail]
ADD CONSTRAINT [FK_Reference_Himall_CapitalDetail]
    FOREIGN KEY ([CapitalID])
    REFERENCES [dbo].[Himall_Capital]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Reference_Himall_CapitalDetail'
CREATE INDEX [IX_FK_Reference_Himall_CapitalDetail]
ON [dbo].[Himall_CapitalDetail]
    ([CapitalID]);
GO

-- Creating foreign key on [CategoryId] in table 'Himall_CategoryCashDeposit'
ALTER TABLE [dbo].[Himall_CategoryCashDeposit]
ADD CONSTRAINT [FK_Himall_CategoriesObligation_Categories]
    FOREIGN KEY ([CategoryId])
    REFERENCES [dbo].[Himall_Categories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [UserId] in table 'Himall_InviteRecord'
ALTER TABLE [dbo].[Himall_InviteRecord]
ADD CONSTRAINT [FK_InviteMember]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Himall_Members]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_InviteMember'
CREATE INDEX [IX_FK_InviteMember]
ON [dbo].[Himall_InviteRecord]
    ([UserId]);
GO

-- Creating foreign key on [RegUserId] in table 'Himall_InviteRecord'
--ALTER TABLE [dbo].[Himall_InviteRecord]
--ADD CONSTRAINT [FK_RegMember]
--    FOREIGN KEY ([RegUserId])
--    REFERENCES [dbo].[Himall_Members]
--        ([Id])
--    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RegMember'
CREATE INDEX [IX_FK_RegMember]
ON [dbo].[Himall_InviteRecord]
    ([RegUserId]);
GO

-- Creating foreign key on [UserId] in table 'Himall_BonusReceive'
ALTER TABLE [dbo].[Himall_BonusReceive]
ADD CONSTRAINT [FK_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Himall_Members]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UserId'
CREATE INDEX [IX_FK_UserId]
ON [dbo].[Himall_BonusReceive]
    ([UserId]);
GO

-- Creating foreign key on [CardLogId] in table 'Himall_WXCardCodeLog'
ALTER TABLE [dbo].[Himall_WXCardCodeLog]
ADD CONSTRAINT [FK_Himall_WXLog_CardLogId]
    FOREIGN KEY ([CardLogId])
    REFERENCES [dbo].[Himall_WXCardLog]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Himall_WXLog_CardLogId'
CREATE INDEX [IX_FK_Himall_WXLog_CardLogId]
ON [dbo].[Himall_WXCardCodeLog]
    ([CardLogId]);
GO

-- Creating foreign key on [ColloId] in table 'Himall_CollocationPoruducts'
ALTER TABLE [dbo].[Himall_CollocationPoruducts]
ADD CONSTRAINT [FK_Collocation_CollPoruducts]
    FOREIGN KEY ([ColloId])
    REFERENCES [dbo].[Himall_Collocation]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Collocation_CollPoruducts'
CREATE INDEX [IX_FK_Collocation_CollPoruducts]
ON [dbo].[Himall_CollocationPoruducts]
    ([ColloId]);
GO

-- Creating foreign key on [ColloProductId] in table 'Himall_CollocationSkus'
ALTER TABLE [dbo].[Himall_CollocationSkus]
ADD CONSTRAINT [FK_ColloProuducts_Skus]
    FOREIGN KEY ([ColloProductId])
    REFERENCES [dbo].[Himall_CollocationPoruducts]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ColloProuducts_Skus'
CREATE INDEX [IX_FK_ColloProuducts_Skus]
ON [dbo].[Himall_CollocationSkus]
    ([ColloProductId]);
GO

-- Creating foreign key on [ProductId] in table 'Himall_CollocationPoruducts'
ALTER TABLE [dbo].[Himall_CollocationPoruducts]
ADD CONSTRAINT [FK_Product_CollPoruducts]
    FOREIGN KEY ([ProductId])
    REFERENCES [dbo].[Himall_Products]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_CollPoruducts'
CREATE INDEX [IX_FK_Product_CollPoruducts]
ON [dbo].[Himall_CollocationPoruducts]
    ([ProductId]);
GO

-- Creating foreign key on [ProductId] in table 'Himall_CollocationSkus'
--ALTER TABLE [dbo].[Himall_CollocationSkus]
--ADD CONSTRAINT [FK_Product_ColloSkus]
--    FOREIGN KEY ([ProductId])
--    REFERENCES [dbo].[Himall_Products]
--        ([Id])
--    ON DELETE CASCADE ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_Product_ColloSkus'
CREATE INDEX [IX_FK_Product_ColloSkus]
ON [dbo].[Himall_CollocationSkus]
    ([ProductId]);
GO

-- Creating foreign key on [UserId] in table 'Himall_ShopBonusReceive'
ALTER TABLE [dbo].[Himall_ShopBonusReceive]
ADD CONSTRAINT [FK_useUserID]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Himall_Members]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_useUserID'
CREATE INDEX [IX_FK_useUserID]
ON [dbo].[Himall_ShopBonusReceive]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'Himall_ShopBonusGrant'
ALTER TABLE [dbo].[Himall_ShopBonusGrant]
ADD CONSTRAINT [FK_zzzUserID]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[Himall_Members]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_zzzUserID'
CREATE INDEX [IX_FK_zzzUserID]
ON [dbo].[Himall_ShopBonusGrant]
    ([UserId]);
GO

-- Creating foreign key on [ShopBonusId] in table 'Himall_ShopBonusGrant'
ALTER TABLE [dbo].[Himall_ShopBonusGrant]
ADD CONSTRAINT [FK_ShopBonusId]
    FOREIGN KEY ([ShopBonusId])
    REFERENCES [dbo].[Himall_ShopBonus]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_ShopBonusId'
CREATE INDEX [IX_FK_ShopBonusId]
ON [dbo].[Himall_ShopBonusGrant]
    ([ShopBonusId]);
GO

-- Creating foreign key on [ShopId] in table 'Himall_ShopBonus'
ALTER TABLE [dbo].[Himall_ShopBonus]
ADD CONSTRAINT [FK_zzzShopId]
    FOREIGN KEY ([ShopId])
    REFERENCES [dbo].[Himall_Shops]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_zzzShopId'
CREATE INDEX [IX_FK_zzzShopId]
ON [dbo].[Himall_ShopBonus]
    ([ShopId]);
GO

-- Creating foreign key on [BonusGrantId] in table 'Himall_ShopBonusReceive'
ALTER TABLE [dbo].[Himall_ShopBonusReceive]
ADD CONSTRAINT [FK_BonusGrantId]
    FOREIGN KEY ([BonusGrantId])
    REFERENCES [dbo].[Himall_ShopBonusGrant]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_BonusGrantId'
CREATE INDEX [IX_FK_BonusGrantId]
ON [dbo].[Himall_ShopBonusReceive]
    ([BonusGrantId]);
GO
