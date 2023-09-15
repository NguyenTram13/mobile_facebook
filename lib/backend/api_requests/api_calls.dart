import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start FLuxmintDev Group Code

class FLuxmintDevGroup {
  static String baseUrl = 'https://fluxmint-gw.dev-tn.com';
  static Map<String, String> headers = {};
  static GetInventoryCall getInventoryCall = GetInventoryCall();
  static GetPackageInvestmentCall getPackageInvestmentCall =
      GetPackageInvestmentCall();
  static WithdraWalletInternalCall withdraWalletInternalCall =
      WithdraWalletInternalCall();
  static AddBalanceWalletCall addBalanceWalletCall = AddBalanceWalletCall();
  static GetActivitiesCall getActivitiesCall = GetActivitiesCall();
  static APIBuyInvestCall aPIBuyInvestCall = APIBuyInvestCall();
  static StatisticCall statisticCall = StatisticCall();
  static APIGetWalletCall aPIGetWalletCall = APIGetWalletCall();
  static APIProfileCall aPIProfileCall = APIProfileCall();
  static APINotificationCall aPINotificationCall = APINotificationCall();
  static APIUpdateProfileCall aPIUpdateProfileCall = APIUpdateProfileCall();
  static APIUpdateProfileKYCCall aPIUpdateProfileKYCCall =
      APIUpdateProfileKYCCall();
  static SendParentAffiliateIdCall sendParentAffiliateIdCall =
      SendParentAffiliateIdCall();
  static APIUpdateProfileAvatarCall aPIUpdateProfileAvatarCall =
      APIUpdateProfileAvatarCall();
  static WithdrawCashOriginCall withdrawCashOriginCall =
      WithdrawCashOriginCall();
  static CheckKYCCall checkKYCCall = CheckKYCCall();
  static GetCountryCall getCountryCall = GetCountryCall();
  static RequestWithdrawCall requestWithdrawCall = RequestWithdrawCall();
  static PostNotiCall postNotiCall = PostNotiCall();
  static WithdrawFastTwoPayCall withdrawFastTwoPayCall =
      WithdrawFastTwoPayCall();
  static LoginCall loginCall = LoginCall();
  static VerifyOTPCall verifyOTPCall = VerifyOTPCall();
  static InvestmentPackageCall investmentPackageCall = InvestmentPackageCall();
  static GetSubAffCall getSubAffCall = GetSubAffCall();
  static GetSaleMemberCall getSaleMemberCall = GetSaleMemberCall();
  static GetStatisticCall getStatisticCall = GetStatisticCall();
  static FaqCall faqCall = FaqCall();
  static TestgetStaticCall testgetStaticCall = TestgetStaticCall();
  static AffiliateApiCall affiliateApiCall = AffiliateApiCall();
  static CreateCampaignCall createCampaignCall = CreateCampaignCall();
  static CreateAffCall createAffCall = CreateAffCall();
  static UpdateCampaignCall updateCampaignCall = UpdateCampaignCall();
  static GetRewardCall getRewardCall = GetRewardCall();
  static CollectRewardCall collectRewardCall = CollectRewardCall();
  static StaticRewardCall staticRewardCall = StaticRewardCall();
  static ProfitsahringCall profitsahringCall = ProfitsahringCall();
  static SalebonusCall salebonusCall = SalebonusCall();
  static LeaderCall leaderCall = LeaderCall();
  static RankProfitCall rankProfitCall = RankProfitCall();
  static NewCheckKYCCall newCheckKYCCall = NewCheckKYCCall();
  static GetRelativeCurrencyCall getRelativeCurrencyCall =
      GetRelativeCurrencyCall();
  static GetOptionWithdrawCall getOptionWithdrawCall = GetOptionWithdrawCall();
  static GetAmountCall getAmountCall = GetAmountCall();
  static APILoginCall aPILoginCall = APILoginCall();
  static GetVersionLanguageCall getVersionLanguageCall =
      GetVersionLanguageCall();
  static GetIdentifyTypeCall getIdentifyTypeCall = GetIdentifyTypeCall();
  static UpdateUserPreferenceCall updateUserPreferenceCall =
      UpdateUserPreferenceCall();
  static GetSettingUserPreferentCall getSettingUserPreferentCall =
      GetSettingUserPreferentCall();
  static UpdateAvatarCall updateAvatarCall = UpdateAvatarCall();
  static TopupFastTwoPayCall topupFastTwoPayCall = TopupFastTwoPayCall();
  static GetBankCall getBankCall = GetBankCall();
  static GetSettingGlobalCall getSettingGlobalCall = GetSettingGlobalCall();
  static GetFeeWithdrawFastTwoPayCall getFeeWithdrawFastTwoPayCall =
      GetFeeWithdrawFastTwoPayCall();
  static GetLocalesCall getLocalesCall = GetLocalesCall();
  static CheckTransactionHashCall checkTransactionHashCall =
      CheckTransactionHashCall();
  static CreateOtpWithdrawCryptoCall createOtpWithdrawCryptoCall =
      CreateOtpWithdrawCryptoCall();
  static GetLanguageDataCall getLanguageDataCall = GetLanguageDataCall();
  static GetAllAvailableLocalesCall getAllAvailableLocalesCall =
      GetAllAvailableLocalesCall();
  static GetSettingPageFeCall getSettingPageFeCall = GetSettingPageFeCall();
  static GetFeeCashOriginCall getFeeCashOriginCall = GetFeeCashOriginCall();
  static GetFeeCashInvestCall getFeeCashInvestCall = GetFeeCashInvestCall();
  static GetFeeWithdrawCryptoCall getFeeWithdrawCryptoCall =
      GetFeeWithdrawCryptoCall();
  static GetConfigurationsOfComponentsCall getConfigurationsOfComponentsCall =
      GetConfigurationsOfComponentsCall();
  static APIBuyInvestNewCall aPIBuyInvestNewCall = APIBuyInvestNewCall();
  static GetListOfMembersAffCall getListOfMembersAffCall =
      GetListOfMembersAffCall();
  static GetSettingFormatterCall getSettingFormatterCall =
      GetSettingFormatterCall();
  static UpdateSettingFormatterCall updateSettingFormatterCall =
      UpdateSettingFormatterCall();
  static TopupFPQRCall topupFPQRCall = TopupFPQRCall();
  static GetCurrenciesCall getCurrenciesCall = GetCurrenciesCall();
  static GetFormatStylesCall getFormatStylesCall = GetFormatStylesCall();
  static WithdrawCryptoCall withdrawCryptoCall = WithdrawCryptoCall();
  static GetCLBCampaignsCall getCLBCampaignsCall = GetCLBCampaignsCall();
  static GetCLBMonthlyLogsCall getCLBMonthlyLogsCall = GetCLBMonthlyLogsCall();
  static GetCLBImmotalWinningsCall getCLBImmotalWinningsCall =
      GetCLBImmotalWinningsCall();
  static GetCLBImmotalWinningsLogsCall getCLBImmotalWinningsLogsCall =
      GetCLBImmotalWinningsLogsCall();
  static ReadCLBImmotalWinningsLogsCall readCLBImmotalWinningsLogsCall =
      ReadCLBImmotalWinningsLogsCall();
  static GetDailyInterestCall getDailyInterestCall = GetDailyInterestCall();
  static ReceiveRewardCall receiveRewardCall = ReceiveRewardCall();
  static GetSettingStyleCall getSettingStyleCall = GetSettingStyleCall();
}

class GetInventoryCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetInventory',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/v1/inventory',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetPackageInvestmentCall {
  Future<ApiCallResponse> call({
    String? userId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getPackageInvestment',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/v1/product',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {
        'user': userId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class WithdraWalletInternalCall {
  Future<ApiCallResponse> call({
    int? id,
    double? amount,
    String? ref = '',
    String? accessToken = '',
    String? description = '',
  }) {
    final ffApiRequestBody = '''
{
  "amount": "${amount}",
  "ref": "${ref}",
  "description": "${description}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'withdraWalletInternal',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/investment/api/v1/withdraw-investment/${id}',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AddBalanceWalletCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? type = '',
    int? amount,
    String? currency = '',
    String? transactionKey = '',
  }) {
    final ffApiRequestBody = '''
{
  "type": "${type}",
  "amount": "${amount}",
  "currency": "${currency}",
"transaction_key": "${transactionKey}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addBalanceWallet',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/v1/wallet',
      callType: ApiCallType.PUT,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetActivitiesCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? limit = '10',
    String? fromDate = '',
    String? toDate = '',
    String? status = '',
    String? type = '',
    String? page = '1',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getActivities',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/investment/api/v1/activity?from_date=${fromDate}&to_date=${toDate}&status=${status}&type=${type}&page=${page}&limit=${limit}',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class APIBuyInvestCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    int? idPackage,
    String? name = '',
    String? currency1 = '',
    String? currency2 = '',
    int? campaign,
  }) {
    final ffApiRequestBody = '''
{
  "currency_1": "${currency1}",
  "currency_2": "${currency2}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'API Buy Invest',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/investment/api/v1/order/${idPackage}?campaignId=${campaign}',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class StatisticCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? time = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Statistic',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/v1/statistic',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'time': time,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class APIGetWalletCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'API Get Wallet',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/v1/wallet',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class APIProfileCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'API Profile',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/v1/profile',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class APINotificationCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'API Notification',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/v1/notification',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class APIUpdateProfileCall {
  Future<ApiCallResponse> call({
    String? fullname = '',
    String? phoneNumber = '',
    String? identifier = '',
    String? accessToken = '',
    String? affId = '',
    String? country = '',
    String? identifyType = '',
    String? gender = '',
    String? firstName = '',
    String? lastName = '',
    String? nickName = '',
    String? birthDate = '',
  }) {
    final ffApiRequestBody = '''
{
  "phone_number": "${phoneNumber}",
  "nick_name": "${nickName}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'API Update Profile',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/v1/profile',
      callType: ApiCallType.PUT,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class APIUpdateProfileKYCCall {
  Future<ApiCallResponse> call({
    String? fullname = '',
    String? identifier = '',
    String? accessToken = '',
    String? country = '',
    String? identifyType = '',
    String? affId = '',
  }) {
    final ffApiRequestBody = '''
{
  "fullname": "${fullname}",
  "identify_number": "${identifier}",
  "country": "${country}",
  "identify_type": "${identifyType}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'API Update Profile KYC',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/v1/profile',
      callType: ApiCallType.PUT,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SendParentAffiliateIdCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? affId = '',
  }) {
    final ffApiRequestBody = '''
{
  "aff_id": "${affId}",
  "campaign_id": "null"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Send Parent Affiliate Id',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/aff-extended/api/sub-affiliate',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class APIUpdateProfileAvatarCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? imageBase64 = '',
  }) {
    final ffApiRequestBody = '''
{
  "image_base64": "${imageBase64}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'API Update Profile Avatar',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/v1/profile-avatar',
      callType: ApiCallType.PUT,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class WithdrawCashOriginCall {
  Future<ApiCallResponse> call({
    int? id,
    String? accessToken = '',
    double? amount,
  }) {
    final ffApiRequestBody = '''
{
  "amount": ${amount}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Withdraw cash origin',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/investment/api/v1/withdraw-cash-origin/${id}',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CheckKYCCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'checkKYC',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/v1/check-kyc',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetCountryCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getCountry',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/v1/country',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RequestWithdrawCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'requestWithdraw',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/investment/api/v1/request-withdraw-cash-origin/${id}',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PostNotiCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? id = '',
    String? email = '',
  }) {
    final ffApiRequestBody = '''
{
  "user": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'postNoti',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/investment/api/v1/notification/${id}',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class WithdrawFastTwoPayCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? currency = '',
    double? amount,
    String? bankName = '',
    String? accountNumber = '',
    String? fullname = '',
  }) {
    final ffApiRequestBody = '''
{
  "currency": "${currency}",
  "amount": ${amount},
  "bank_name": "${bankName}",
  "account_number": "${accountNumber}",
  "full_name": "${fullname}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'withdrawFastTwoPay',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/v1/withdraw-f2p',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? referral = '',
  }) {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "referral_id": "${referral}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login ',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/auth/login',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class VerifyOTPCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? token = '',
  }) {
    final ffApiRequestBody = '''
{
  "email": "${email}",
  "token": "${token}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Verify OTP',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/auth/verify-otp',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class InvestmentPackageCall {
  Future<ApiCallResponse> call({
    String? recommend = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Investment Package',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {
        'recommend': recommend,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetSubAffCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? searchTerm = '',
    String? screen = '',
    String? level = '',
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get SubAff',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/aff-extended/api/sub-affiliate?deep=-1&screen=${screen}&search=${searchTerm}&level=${level}&id=${id}',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetSaleMemberCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Sale Member',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/aff-extended/api/history/sales',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetStatisticCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? today = 'today',
    String? id = '',
    String? time = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Statistic',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/aff-extended/api/statistic?time=${time}&id=${id}',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class FaqCall {
  Future<ApiCallResponse> call({
    int? page,
    int? limit,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'FAQ',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/aff-extended/api/question?page=${page}&limit=${limit}',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TestgetStaticCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'testgetStatic',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/aff-extended/api/statistic',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class AffiliateApiCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'affiliateApi',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/aff-extended/api/campaign',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateCampaignCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? title = '',
    String? description = '',
    String? banner = '',
  }) {
    final ffApiRequestBody = '''
{
  "title": "${title}",
  "description": "${description}",
  "banner": "${banner}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createCampaign',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/aff-extended/api/campaign',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateAffCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? campaignid = '',
    String? affId = '',
  }) {
    final ffApiRequestBody = '''
{
  "campaign_id": "${campaignid}",
  "aff_id": "${affId}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createAff',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/aff-extended/api/sub-affiliate',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateCampaignCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? title = '',
    String? description = '',
    String? banner = '',
    String? accessToken = '',
    bool? isActive,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'updateCampaign',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/aff-extended/api/campaign?id=${id}',
      callType: ApiCallType.PUT,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'title': title,
        'description': description,
        'status': isActive,
        'banner': banner,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetRewardCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getReward',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/aff-extended/api/reward/check-rank?id=${id}',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CollectRewardCall {
  Future<ApiCallResponse> call({
    String? id = '',
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'collectReward',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/aff-extended/api/reward?id=${id}',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class StaticRewardCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'staticReward',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/aff-extended/api/reward/overview',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ProfitsahringCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'profitsahring',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/aff-extended/api/reward/profit-sharing',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class SalebonusCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'salebonus',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/aff-extended/api/reward/sale',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LeaderCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'leader',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/aff-extended/api/reward/leader',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class RankProfitCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'rankProfit',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/aff-extended/api/reward/profit-sharing/detail?id=${id}&year=2023',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class NewCheckKYCCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'NewCheckKYC',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/v1/check-kyc',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetRelativeCurrencyCall {
  Future<ApiCallResponse> call({
    String? amount = '',
    String? currencyWithdraw = '',
    String? accessToken = '',
    String? paymentMethod = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getRelativeCurrency',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/payment/api/f2p/withdraw/amount?amount=${amount}&currency_withdraw=${currencyWithdraw}&payment_method=${paymentMethod}',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetOptionWithdrawCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getOptionWithdraw',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/payment/api/check-payment',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetAmountCall {
  Future<ApiCallResponse> call({
    String? amount = '',
    String? currency = '',
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getAmount',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/payment/api/f2p/topup/amount?amount=${amount}&currency=${currency}',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class APILoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? update = '',
  }) {
    final ffApiRequestBody = '''
{
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'API Login',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/investment/api/auth/login?update=${update}',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetVersionLanguageCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getVersionLanguage',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/localization/api/v1/version-localization',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetIdentifyTypeCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getIdentifyType',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/user/api/v1/user-identify',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateUserPreferenceCall {
  Future<ApiCallResponse> call({
    bool? statusNoti = true,
    String? langauge = 'en',
    String? accessToken = '',
    double? fontSize,
  }) {
    final ffApiRequestBody = '''
{
  "theme": "dark",
  "language": "${langauge}",
  "notification": ${statusNoti},
  "fontSize": ${fontSize}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'updateUserPreference',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/user/api/v1/user-preference',
      callType: ApiCallType.PUT,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetSettingUserPreferentCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getSettingUserPreferent',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/user/api/v1/user-preference',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateAvatarCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    FFUploadedFile? file,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'updateAvatar',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/v1/profile-avatar',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {
        'file': file,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TopupFastTwoPayCall {
  Future<ApiCallResponse> call({
    int? user,
    String? currency = '',
    String? amount = '',
    String? currencyAmount = '',
    String? callbackUri = '',
    String? payType = '',
  }) {
    final ffApiRequestBody = '''
{
  "payment_method": "f2p",
  "callback_uri": "${callbackUri}",
  "user_id": "test",
  "currency_text": "USD",
  "currency_amount": ${currencyAmount},
  "user": ${user},
  "currency": "${currency}",
  "price": ${amount},
  "pay_type": "${payType}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'TopupFastTwoPay',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/payment/api/pay',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetBankCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getBank',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/payment/api/banks',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetSettingGlobalCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getSettingGlobal',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/user/api/v1/setting-global',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetFeeWithdrawFastTwoPayCall {
  Future<ApiCallResponse> call({
    double? amount,
    String? currency = '',
    String? type = '',
    int? paygateId,
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getFeeWithdrawFastTwoPay',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/payment/api/fee?amount=${amount}&currency=${currency}&type=${type}&paygate_id=${paygateId}',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetLocalesCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getLocales',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/localization/api/v1/locales',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CheckTransactionHashCall {
  Future<ApiCallResponse> call({
    String? uid = '',
    String? transactionHash = '',
    String? network = '',
    String? currency = '',
    String? accessToken = '',
  }) {
    final ffApiRequestBody = '''
{
  "uid": "${uid}",
  "transactionHash": "${transactionHash}",
  "network": "${network}",
  "currency": "${currency}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Check Transaction Hash',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/investment/api/v1/check-transaction-hash',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CreateOtpWithdrawCryptoCall {
  Future<ApiCallResponse> call({
    String? email = '',
  }) {
    final ffApiRequestBody = '''
{
  "email": "${email}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Create Otp Withdraw Crypto',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/investment/api/auth/create-otp/totp-verify',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetLanguageDataCall {
  Future<ApiCallResponse> call({
    String? locale = 'en',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getLanguageData',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/localization/api/v1/multi-language/${locale}',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetAllAvailableLocalesCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getAllAvailableLocales',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/localization/api/v1/locales',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetSettingPageFeCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getSettingPageFe',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/user/api/v1/setting-page-fe',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetFeeCashOriginCall {
  Future<ApiCallResponse> call({
    int? amount,
    int? id,
  }) {
    final ffApiRequestBody = '''
{
  "amount": ${amount}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getFeeCashOrigin',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/investment/api/v1/fee-cash-origin/${id}',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetFeeCashInvestCall {
  Future<ApiCallResponse> call({
    int? amount,
    int? id,
  }) {
    final ffApiRequestBody = '''
{
  "amount": ${amount}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getFeeCashInvest',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/investment/api/v1/fee-interest/${id}',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetFeeWithdrawCryptoCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
    String? amount = '',
    String? currency = '',
  }) {
    final ffApiRequestBody = '''
{
  "amount": ${amount},
  "currency": "${currency}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getFeeWithdrawCrypto',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/investment/api/v1/fee-withdraw-crypto',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetConfigurationsOfComponentsCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getConfigurationsOfComponents',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/user/api/v1/setting-style-component',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class APIBuyInvestNewCall {
  Future<ApiCallResponse> call({
    int? idPackage,
    int? campaign,
    String? accessToken = '',
    int? quantity = 1,
    dynamic? currencyJson,
    String? timeRange = '',
    String? currencyInterest = '',
    String? typeCurrency = '',
  }) {
    final currency = _serializeJson(currencyJson);
    final ffApiRequestBody = '''
{
  "currency": ${currency},
  "quantity": ${quantity},
  "type_currency": "${typeCurrency}",
  "time_range": "${timeRange}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'API Buy Invest New',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/investment/api/v1/order/${idPackage}?campaignId=${campaign}',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetListOfMembersAffCall {
  Future<ApiCallResponse> call({
    String? searchValue = '',
    int? page = 1,
    int? size = 10,
    int? deep = -1,
    String? screen = 'overview',
    int? level,
    String? token = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getListOfMembersAff',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/aff-extended/api/sub-affiliate?page=${page}&size=${size}&deep=${deep}&screen=${screen}&level=${level}&search=${searchValue}',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetSettingFormatterCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Setting Formatter',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/user/api/v1/setting-formatter',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateSettingFormatterCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? optionId,
  }) {
    final ffApiRequestBody = '''
{
  "option_id": ${optionId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Update Setting Formatter',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/user/api/v1/setting-formatter',
      callType: ApiCallType.PATCH,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TopupFPQRCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Topup FP QR',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/a',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetCurrenciesCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'getCurrencies',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/localization/api/v1/world-currency',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetFormatStylesCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'getFormatStyles',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/user/api/v1/setting-formatter',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class WithdrawCryptoCall {
  Future<ApiCallResponse> call({
    String? address = '',
    double? amount,
    String? currency = '',
    String? feeMode = '',
    String? accessToken = '',
  }) {
    final ffApiRequestBody = '''
{
  "address": "${address}",
  "amount": ${amount},
  "currency": "${currency}",
  "fee_mode": "${feeMode}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Withdraw Crypto',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/investment/api/v1/withdraw-crypto',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetCLBCampaignsCall {
  Future<ApiCallResponse> call({
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get CLB Campaigns',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/aff-extended/api/reward/clb',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetCLBMonthlyLogsCall {
  Future<ApiCallResponse> call({
    int? campaignId,
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get CLB Monthly Logs',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/aff-extended/api/reward/clb/monthly-logs?campaignId=${campaignId}',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetCLBImmotalWinningsCall {
  Future<ApiCallResponse> call({
    int? campaignId,
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get CLB Immotal Winnings',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/aff-extended/api/reward/clb/immortal-winnings?campaignId=${campaignId}',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetCLBImmotalWinningsLogsCall {
  Future<ApiCallResponse> call({
    int? campaignId,
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Get CLB Immotal Winnings Logs',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/aff-extended/api/reward/clb/immortal-winnings/history?campaignId=${campaignId}',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ReadCLBImmotalWinningsLogsCall {
  Future<ApiCallResponse> call({
    int? id,
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Read CLB Immotal Winnings Logs',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/aff-extended/api/reward/clb/immortal-winnings/history/read?id=${id}',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetDailyInterestCall {
  Future<ApiCallResponse> call({
    String? dailyInterestRate = '',
    String? amount = '',
    String? currency = '',
    String? timeRange = '',
  }) {
    final ffApiRequestBody = '''
{
  "daily_interest_rate": "${dailyInterestRate}",
  "amount": "${amount}",
  "currency": "${currency}",
  "time_range": "${timeRange}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get Daily Interest',
      apiUrl:
          '${FLuxmintDevGroup.baseUrl}/investment/api/v1/product/calculate-interest',
      callType: ApiCallType.POST,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ReceiveRewardCall {
  Future<ApiCallResponse> call({
    int? id,
    String? accessToken = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Receive Reward',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/aff-extended/api/reward?id=${id}',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
        'Authorization': 'Bearer ${accessToken}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetSettingStyleCall {
  Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Setting Style',
      apiUrl: '${FLuxmintDevGroup.baseUrl}/user/api/v1/setting-style-component',
      callType: ApiCallType.GET,
      headers: {
        ...FLuxmintDevGroup.headers,
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End FLuxmintDev Group Code

class SettingFlutterflowCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'settingFlutterflow',
      apiUrl:
          'https://setting-ff.dev-tn.com/setting-ff/api/v1/setting-flutterflow',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
