import '../../Utiles/important_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GetProductsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getProducts',
      apiUrl: 'https://dummyjson.com/products#',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? products(dynamic response) => getJsonField(
        response,
        r'''$.products''',
        true,
      ) as List?;
  static List<int>? productsId(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? productsTitle(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? productsDescription(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? productsCategory(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].category''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? productsPrice(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].price''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? productsDiscountPercentage(dynamic response) =>
      (getJsonField(
        response,
        r'''$.products[:].discountPercentage''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? productsRating(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].rating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<int>? stock(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].stock''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? tags(dynamic response) => getJsonField(
        response,
        r'''$.products[:].tags''',
        true,
      ) as List?;
  static List<String>? brandName(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].brand''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? sku(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].sku''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? weight(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].weight''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? dimensions(dynamic response) => getJsonField(
        response,
        r'''$.products[:].dimensions''',
        true,
      ) as List?;
  static List<double>? dimensionsWidth(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].dimensions.width''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? dimensionsHeight(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].dimensions.height''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<double>? dimensionsDepth(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].dimensions.depth''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? warrantyInformation(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].warrantyInformation''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? shippingInformation(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].shippingInformation''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? availabilityStatus(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].availabilityStatus''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? reviews(dynamic response) => getJsonField(
        response,
        r'''$.products[:].reviews''',
        true,
      ) as List?;
  static List<int>? reviewsRating(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].reviews[:].rating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? reviewsComment(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].reviews[:].comment''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? reviewsDate(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].reviews[:].date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? reviewsReviewerName(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].reviews[:].reviewerName''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? reviewsReviewerEmail(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].reviews[:].reviewerEmail''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? returnPolicy(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].returnPolicy''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? minimumOrderQuantity(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].minimumOrderQuantity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List? meta(dynamic response) => getJsonField(
        response,
        r'''$.products[:].meta''',
        true,
      ) as List?;
  static List<String>? metaCreatedAt(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].meta.createdAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? metaUpdatedAt(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].meta.updatedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? metaBarcode(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].meta.barcode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? metaQRCode(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].meta.qrCode''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? images(dynamic response) => getJsonField(
        response,
        r'''$.products[:].images''',
        true,
      ) as List?;
  static List<String>? thumbnail(dynamic response) => (getJsonField(
        response,
        r'''$.products[:].thumbnail''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static int? total(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.total''',
      ));
  static int? skip(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.skip''',
      ));
  static int? limit(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.limit''',
      ));
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

class RemoteDataSource {
  Future<ApiCallResponse> fetchProducts() {
    return GetProductsCall.call();
  }
}
