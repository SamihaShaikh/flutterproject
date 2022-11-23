// To parse this JSON data, do
//
//     final ordersmodel = ordersmodelFromJson(jsonString);

import 'dart:convert';

Ordersmodel ordersmodelFromJson(String str) => Ordersmodel.fromJson(json.decode(str));

String ordersmodelToJson(Ordersmodel data) => json.encode(data.toJson());

class Ordersmodel {
    Ordersmodel({
        required this.orders,
    });

    List<Order> orders;

    factory Ordersmodel.fromJson(Map<String, dynamic> json) => Ordersmodel(
        orders: List<Order>.from(json["orders"].map((x) => Order.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "orders": List<dynamic>.from(orders.map((x) => x.toJson())),
    };
}

class Order {
    Order({
        required this.id,
        required this.adminGraphqlApiId,
        required this.appId,
        required this.browserIp,
        required this.buyerAcceptsMarketing,
        required this.cancelReason,
        required this.cancelledAt,
        required this.cartToken,
        required this.checkoutId,
        required this.checkoutToken,
        required this.clientDetails,
        required this.closedAt,
        required this.confirmed,
        required this.contactEmail,
        required this.createdAt,
        required this.currency,
        required this.currentSubtotalPrice,
        required this.currentSubtotalPriceSet,
        required this.currentTotalDiscounts,
        required this.currentTotalDiscountsSet,
        required this.currentTotalDutiesSet,
        required this.currentTotalPrice,
        required this.currentTotalPriceSet,
        required this.currentTotalTax,
        required this.currentTotalTaxSet,
        required this.customerLocale,
        this.deviceId,
        required this.discountCodes,
        required this.email,
        required this.estimatedTaxes,
        required this.financialStatus,
        this.fulfillmentStatus,
        required this.gateway,
        this.landingSite,
        this.landingSiteRef,
        required this.locationId,
        this.merchantOfRecordAppId,
        required this.name,
        this.note,
        required this.noteAttributes,
        required this.number,
        required this.orderNumber,
        required this.orderStatusUrl,
        this.originalTotalDutiesSet,
        required this.paymentGatewayNames,
        required this.phone,
        required this.presentmentCurrency,
        required this.processedAt,
        required this.processingMethod,
        this.reference,
        this.referringSite,
        this.sourceIdentifier,
        required this.sourceName,
        this.sourceUrl,
        required this.subtotalPrice,
        required this.subtotalPriceSet,
        required this.tags,
        required this.taxLines,
        required this.taxesIncluded,
        required this.test,
        required this.token,
        required this.totalDiscounts,
        required this.totalDiscountsSet,
        required this.totalLineItemsPrice,
        required this.totalLineItemsPriceSet,
        required this.totalOutstanding,
        required this.totalPrice,
        required this.totalPriceSet,
        required this.totalShippingPriceSet,
        required this.totalTax,
        required this.totalTaxSet,
        required this.totalTipReceived,
        required this.totalWeight,
        required this.updatedAt,
        required this.userId,
        required this.billingAddress,
        required this.customer,
        required this.discountApplications,
        required this.fulfillments,
        required this.lineItems,
        this.paymentTerms,
        required this.refunds,
        required this.shippingAddress,
        required this.shippingLines,
    });

    int id;
    String adminGraphqlApiId;
    int appId;
    dynamic browserIp;
    bool buyerAcceptsMarketing;
    dynamic cancelReason;
    dynamic cancelledAt;
    dynamic cartToken;
    int checkoutId;
    String checkoutToken;
    ClientDetails clientDetails;
    dynamic closedAt;
    bool confirmed;
    String contactEmail;
    DateTime createdAt;
    Currency? currency;
    String currentSubtotalPrice;
    Set currentSubtotalPriceSet;
    String currentTotalDiscounts;
    Set currentTotalDiscountsSet;
    dynamic currentTotalDutiesSet;
    String currentTotalPrice;
    Set currentTotalPriceSet;
    String currentTotalTax;
    Set currentTotalTaxSet;
    String customerLocale;
    dynamic deviceId;
    List<dynamic> discountCodes;
    String email;
    bool estimatedTaxes;
    String financialStatus;
    dynamic fulfillmentStatus;
    String gateway;
    dynamic landingSite;
    dynamic landingSiteRef;
    int locationId;
    dynamic merchantOfRecordAppId;
    String name;
    dynamic note;
    List<dynamic> noteAttributes;
    int number;
    int orderNumber;
    String orderStatusUrl;
    dynamic originalTotalDutiesSet;
    List<String> paymentGatewayNames;
    String phone;
    Currency? presentmentCurrency;
    DateTime processedAt;
    String processingMethod;
    dynamic reference;
    dynamic referringSite;
    dynamic sourceIdentifier;
    String sourceName;
    dynamic sourceUrl;
    String subtotalPrice;
    Set subtotalPriceSet;
    String tags;
    List<TaxLine> taxLines;
    bool taxesIncluded;
    bool test;
    String token;
    String totalDiscounts;
    Set totalDiscountsSet;
    String totalLineItemsPrice;
    Set totalLineItemsPriceSet;
    String totalOutstanding;
    String totalPrice;
    Set totalPriceSet;
    Set totalShippingPriceSet;
    String totalTax;
    Set totalTaxSet;
    String totalTipReceived;
    int totalWeight;
    DateTime updatedAt;
    int userId;
    Address? billingAddress;
    Customer? customer;
    List<dynamic> discountApplications;
    List<dynamic> fulfillments;
    List<LineItem> lineItems;
    dynamic paymentTerms;
    List<dynamic> refunds;
    Address? shippingAddress;
    List<dynamic> shippingLines;

    factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"],
        adminGraphqlApiId: json["admin_graphql_api_id"],
        appId: json["app_id"],
        browserIp: json["browser_ip"],
        buyerAcceptsMarketing: json["buyer_accepts_marketing"],
        cancelReason: json["cancel_reason"],
        cancelledAt: json["cancelled_at"],
        cartToken: json["cart_token"],
        checkoutId: json["checkout_id"],
        checkoutToken: json["checkout_token"],
        clientDetails: ClientDetails.fromJson(json["client_details"]),
        closedAt: json["closed_at"],
        confirmed: json["confirmed"],
        contactEmail: json["contact_email"] == null ? null : json["contact_email"],
        createdAt: DateTime.parse(json["created_at"]),
        currency: currencyValues.map[json["currency"]],
        currentSubtotalPrice: json["current_subtotal_price"],
        currentSubtotalPriceSet: Set.fromJson(json["current_subtotal_price_set"]),
        currentTotalDiscounts: json["current_total_discounts"],
        currentTotalDiscountsSet: Set.fromJson(json["current_total_discounts_set"]),
        currentTotalDutiesSet: json["current_total_duties_set"],
        currentTotalPrice: json["current_total_price"],
        currentTotalPriceSet: Set.fromJson(json["current_total_price_set"]),
        currentTotalTax: json["current_total_tax"],
        currentTotalTaxSet: Set.fromJson(json["current_total_tax_set"]),
        customerLocale: json["customer_locale"] == null ? null : json["customer_locale"],
        deviceId: json["device_id"],
        discountCodes: List<dynamic>.from(json["discount_codes"].map((x) => x)),
        email: json["email"],
        estimatedTaxes: json["estimated_taxes"],
        financialStatus: json["financial_status"],
        fulfillmentStatus: json["fulfillment_status"],
        gateway: json["gateway"],
        landingSite: json["landing_site"],
        landingSiteRef: json["landing_site_ref"],
        locationId: json["location_id"] == null ? null : json["location_id"],
        merchantOfRecordAppId: json["merchant_of_record_app_id"],
        name: json["name"],
        note: json["note"],
        noteAttributes: List<dynamic>.from(json["note_attributes"].map((x) => x)),
        number: json["number"],
        orderNumber: json["order_number"],
        orderStatusUrl: json["order_status_url"],
        originalTotalDutiesSet: json["original_total_duties_set"],
        paymentGatewayNames: List<String>.from(json["payment_gateway_names"].map((x) => x)),
        phone: json["phone"] == null ? null : json["phone"],
        presentmentCurrency: currencyValues.map[json["presentment_currency"]],
        processedAt: DateTime.parse(json["processed_at"]),
        processingMethod: json["processing_method"],
        reference: json["reference"],
        referringSite: json["referring_site"],
        sourceIdentifier: json["source_identifier"],
        sourceName: json["source_name"],
        sourceUrl: json["source_url"],
        subtotalPrice: json["subtotal_price"],
        subtotalPriceSet: Set.fromJson(json["subtotal_price_set"]),
        tags: json["tags"],
        taxLines: List<TaxLine>.from(json["tax_lines"].map((x) => TaxLine.fromJson(x))),
        taxesIncluded: json["taxes_included"],
        test: json["test"],
        token: json["token"],
        totalDiscounts: json["total_discounts"],
        totalDiscountsSet: Set.fromJson(json["total_discounts_set"]),
        totalLineItemsPrice: json["total_line_items_price"],
        totalLineItemsPriceSet: Set.fromJson(json["total_line_items_price_set"]),
        totalOutstanding: json["total_outstanding"],
        totalPrice: json["total_price"],
        totalPriceSet: Set.fromJson(json["total_price_set"]),
        totalShippingPriceSet: Set.fromJson(json["total_shipping_price_set"]),
        totalTax: json["total_tax"],
        totalTaxSet: Set.fromJson(json["total_tax_set"]),
        totalTipReceived: json["total_tip_received"],
        totalWeight: json["total_weight"],
        updatedAt: DateTime.parse(json["updated_at"]),
        userId: json["user_id"],
        billingAddress: json["billing_address"] == null ? null : Address.fromJson(json["billing_address"]),
        customer: json["customer"] == null ? null : Customer.fromJson(json["customer"]),
        discountApplications: List<dynamic>.from(json["discount_applications"].map((x) => x)),
        fulfillments: List<dynamic>.from(json["fulfillments"].map((x) => x)),
        lineItems: List<LineItem>.from(json["line_items"].map((x) => LineItem.fromJson(x))),
        paymentTerms: json["payment_terms"],
        refunds: List<dynamic>.from(json["refunds"].map((x) => x)),
        shippingAddress: json["shipping_address"] == null ? null : Address.fromJson(json["shipping_address"]),
        shippingLines: List<dynamic>.from(json["shipping_lines"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "admin_graphql_api_id": adminGraphqlApiId,
        "app_id": appId,
        "browser_ip": browserIp,
        "buyer_accepts_marketing": buyerAcceptsMarketing,
        "cancel_reason": cancelReason,
        "cancelled_at": cancelledAt,
        "cart_token": cartToken,
        "checkout_id": checkoutId,
        "checkout_token": checkoutToken,
        "client_details": clientDetails.toJson(),
        "closed_at": closedAt,
        "confirmed": confirmed,
        "contact_email": contactEmail == null ? null : contactEmail,
        "created_at": createdAt.toIso8601String(),
        "currency": currencyValues.reverse[currency],
        "current_subtotal_price": currentSubtotalPrice,
        "current_subtotal_price_set": currentSubtotalPriceSet.toJson(),
        "current_total_discounts": currentTotalDiscounts,
        "current_total_discounts_set": currentTotalDiscountsSet.toJson(),
        "current_total_duties_set": currentTotalDutiesSet,
        "current_total_price": currentTotalPrice,
        "current_total_price_set": currentTotalPriceSet.toJson(),
        "current_total_tax": currentTotalTax,
        "current_total_tax_set": currentTotalTaxSet.toJson(),
        "customer_locale": customerLocale == null ? null : customerLocale,
        "device_id": deviceId,
        "discount_codes": List<dynamic>.from(discountCodes.map((x) => x)),
        "email": email,
        "estimated_taxes": estimatedTaxes,
        "financial_status": financialStatus,
        "fulfillment_status": fulfillmentStatus,
        "gateway": gateway,
        "landing_site": landingSite,
        "landing_site_ref": landingSiteRef,
        "location_id": locationId == null ? null : locationId,
        "merchant_of_record_app_id": merchantOfRecordAppId,
        "name": name,
        "note": note,
        "note_attributes": List<dynamic>.from(noteAttributes.map((x) => x)),
        "number": number,
        "order_number": orderNumber,
        "order_status_url": orderStatusUrl,
        "original_total_duties_set": originalTotalDutiesSet,
        "payment_gateway_names": List<dynamic>.from(paymentGatewayNames.map((x) => x)),
        "phone": phone == null ? null : phone,
        "presentment_currency": currencyValues.reverse[presentmentCurrency],
        "processed_at": processedAt.toIso8601String(),
        "processing_method": processingMethod,
        "reference": reference,
        "referring_site": referringSite,
        "source_identifier": sourceIdentifier,
        "source_name": sourceName,
        "source_url": sourceUrl,
        "subtotal_price": subtotalPrice,
        "subtotal_price_set": subtotalPriceSet.toJson(),
        "tags": tags,
        "tax_lines": List<dynamic>.from(taxLines.map((x) => x.toJson())),
        "taxes_included": taxesIncluded,
        "test": test,
        "token": token,
        "total_discounts": totalDiscounts,
        "total_discounts_set": totalDiscountsSet.toJson(),
        "total_line_items_price": totalLineItemsPrice,
        "total_line_items_price_set": totalLineItemsPriceSet.toJson(),
        "total_outstanding": totalOutstanding,
        "total_price": totalPrice,
        "total_price_set": totalPriceSet.toJson(),
        "total_shipping_price_set": totalShippingPriceSet.toJson(),
        "total_tax": totalTax,
        "total_tax_set": totalTaxSet.toJson(),
        "total_tip_received": totalTipReceived,
        "total_weight": totalWeight,
        "updated_at": updatedAt.toIso8601String(),
        "user_id": userId,
        "billing_address": billingAddress == null ? null : billingAddress!.toJson(),
        "customer": customer == null ? null : customer!.toJson(),
        "discount_applications": List<dynamic>.from(discountApplications.map((x) => x)),
        "fulfillments": List<dynamic>.from(fulfillments.map((x) => x)),
        "line_items": List<dynamic>.from(lineItems.map((x) => x.toJson())),
        "payment_terms": paymentTerms,
        "refunds": List<dynamic>.from(refunds.map((x) => x)),
        "shipping_address": shippingAddress == null ? null : shippingAddress!.toJson(),
        "shipping_lines": List<dynamic>.from(shippingLines.map((x) => x)),
    };
}

class Address {
    Address({
        required this.firstName,
        required this.address1,
        required this.phone,
        required this.city,
        required this.zip,
        required this.province,
        required this.country,
        required this.lastName,
        required this.address2,
        required this.company,
        required this.latitude,
        required this.longitude,
        required this.name,
        required this.countryCode,
        required this.provinceCode,
        required this.id,
        required this.customerId,
        required this.countryName,
        required this.addressDefault,
    });

    String firstName;
    String address1;
    String phone;
    String city;
    String zip;
    String province;
    String country;
    String lastName;
    String address2;
    String company;
    double latitude;
    double longitude;
    String name;
    String countryCode;
    String provinceCode;
    int id;
    int customerId;
    String countryName;
    bool addressDefault;

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        firstName: json["first_name"],
        address1: json["address1"],
        phone: json["phone"],
        city: json["city"],
        zip: json["zip"],
        province: json["province"],
        country: json["country"],
        lastName: json["last_name"],
        address2: json["address2"],
        company: json["company"],
        latitude: json["latitude"] == null ? null : json["latitude"].toDouble(),
        longitude: json["longitude"] == null ? null : json["longitude"].toDouble(),
        name: json["name"],
        countryCode: json["country_code"],
        provinceCode: json["province_code"],
        id: json["id"] == null ? null : json["id"],
        customerId: json["customer_id"] == null ? null : json["customer_id"],
        countryName: json["country_name"] == null ? null : json["country_name"],
        addressDefault: json["default"] == null ? null : json["default"],
    );

    Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "address1": address1,
        "phone": phone,
        "city": city,
        "zip": zip,
        "province": province,
        "country": country,
        "last_name": lastName,
        "address2": address2,
        "company": company,
        "latitude": latitude == null ? null : latitude,
        "longitude": longitude == null ? null : longitude,
        "name": name,
        "country_code": countryCode,
        "province_code": provinceCode,
        "id": id == null ? null : id,
        "customer_id": customerId == null ? null : customerId,
        "country_name": countryName == null ? null : countryName,
        "default": addressDefault == null ? null : addressDefault,
    };
}

class ClientDetails {
    ClientDetails({
        this.acceptLanguage,
        this.browserHeight,
        this.browserIp,
        this.browserWidth,
        this.sessionHash,
        this.userAgent,
    });

    dynamic acceptLanguage;
    dynamic browserHeight;
    dynamic browserIp;
    dynamic browserWidth;
    dynamic sessionHash;
    dynamic userAgent;

    factory ClientDetails.fromJson(Map<String, dynamic> json) => ClientDetails(
        acceptLanguage: json["accept_language"],
        browserHeight: json["browser_height"],
        browserIp: json["browser_ip"],
        browserWidth: json["browser_width"],
        sessionHash: json["session_hash"],
        userAgent: json["user_agent"],
    );

    Map<String, dynamic> toJson() => {
        "accept_language": acceptLanguage,
        "browser_height": browserHeight,
        "browser_ip": browserIp,
        "browser_width": browserWidth,
        "session_hash": sessionHash,
        "user_agent": userAgent,
    };
}

enum Currency { INR }

final currencyValues = EnumValues({
    "INR": Currency.INR
});

class Set {
    Set({
        required this.shopMoney,
        required this.presentmentMoney,
    });

    Money shopMoney;
    Money presentmentMoney;

    factory Set.fromJson(Map<String, dynamic> json) => Set(
        shopMoney: Money.fromJson(json["shop_money"]),
        presentmentMoney: Money.fromJson(json["presentment_money"]),
    );

    Map<String, dynamic> toJson() => {
        "shop_money": shopMoney.toJson(),
        "presentment_money": presentmentMoney.toJson(),
    };
}

class Money {
    Money({
        required this.amount,
        required this.currencyCode,
    });

    String amount;
    Currency? currencyCode;

    factory Money.fromJson(Map<String, dynamic> json) => Money(
        amount: json["amount"],
        currencyCode: currencyValues.map[json["currency_code"]],
    );

    Map<String, dynamic> toJson() => {
        "amount": amount,
        "currency_code": currencyValues.reverse[currencyCode],
    };
}

class Customer {
    Customer({
        required this.id,
        required this.email,
        required this.acceptsMarketing,
        required this.createdAt,
        required this.updatedAt,
        required this.firstName,
        required this.lastName,
        required this.state,
        required this.note,
        required this.verifiedEmail,
        required this.multipassIdentifier,
        required this.taxExempt,
        required this.tags,
        required this.currency,
        required this.phone,
        required this.acceptsMarketingUpdatedAt,
        required this.marketingOptInLevel,
        required this.taxExemptions,
        required this.emailMarketingConsent,
        required this.smsMarketingConsent,
        required this.adminGraphqlApiId,
        required this.defaultAddress,
    });

    int id;
    String email;
    bool acceptsMarketing;
    DateTime createdAt;
    DateTime updatedAt;
    String firstName;
    String lastName;
    String state;
    String note;
    bool verifiedEmail;
    dynamic multipassIdentifier;
    bool taxExempt;
    String tags;
    Currency? currency;
    String phone;
    DateTime acceptsMarketingUpdatedAt;
    String marketingOptInLevel;
    List<dynamic> taxExemptions;
    MarketingConsent emailMarketingConsent;
    MarketingConsent smsMarketingConsent;
    String adminGraphqlApiId;
    Address defaultAddress;

    factory Customer.fromJson(Map<String, dynamic> json) => Customer(
        id: json["id"],
        email: json["email"],
        acceptsMarketing: json["accepts_marketing"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        firstName: json["first_name"],
        lastName: json["last_name"],
        state: json["state"],
        note: json["note"],
        verifiedEmail: json["verified_email"],
        multipassIdentifier: json["multipass_identifier"],
        taxExempt: json["tax_exempt"],
        tags: json["tags"],
        currency: currencyValues.map[json["currency"]],
        phone: json["phone"],
        acceptsMarketingUpdatedAt: DateTime.parse(json["accepts_marketing_updated_at"]),
        marketingOptInLevel: json["marketing_opt_in_level"] == null ? null : json["marketing_opt_in_level"],
        taxExemptions: List<dynamic>.from(json["tax_exemptions"].map((x) => x)),
        emailMarketingConsent: MarketingConsent.fromJson(json["email_marketing_consent"]),
        smsMarketingConsent: MarketingConsent.fromJson(json["sms_marketing_consent"]),
        adminGraphqlApiId: json["admin_graphql_api_id"],
        defaultAddress: Address.fromJson(json["default_address"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "email": email,
        "accepts_marketing": acceptsMarketing,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "first_name": firstName,
        "last_name": lastName,
        "state": state,
        "note": note,
        "verified_email": verifiedEmail,
        "multipass_identifier": multipassIdentifier,
        "tax_exempt": taxExempt,
        "tags": tags,
        "currency": currencyValues.reverse[currency],
        "phone": phone,
        "accepts_marketing_updated_at": acceptsMarketingUpdatedAt.toIso8601String(),
        "marketing_opt_in_level": marketingOptInLevel == null ? null : marketingOptInLevel,
        "tax_exemptions": List<dynamic>.from(taxExemptions.map((x) => x)),
        "email_marketing_consent": emailMarketingConsent.toJson(),
        "sms_marketing_consent": smsMarketingConsent.toJson(),
        "admin_graphql_api_id": adminGraphqlApiId,
        "default_address": defaultAddress.toJson(),
    };
}

class MarketingConsent {
    MarketingConsent({
        required this.state,
        required this.optInLevel,
        required this.consentUpdatedAt,
        required this.consentCollectedFrom,
    });

    String state;
    String optInLevel;
    DateTime? consentUpdatedAt;
    String consentCollectedFrom;

    factory MarketingConsent.fromJson(Map<String, dynamic> json) => MarketingConsent(
        state: json["state"],
        optInLevel: json["opt_in_level"],
        consentUpdatedAt: json["consent_updated_at"] == null ? null : DateTime.parse(json["consent_updated_at"]),
        consentCollectedFrom: json["consent_collected_from"] == null ? null : json["consent_collected_from"],
    );

    Map<String, dynamic> toJson() => {
        "state": state,
        "opt_in_level": optInLevel,
        "consent_updated_at": consentUpdatedAt == null ? null : consentUpdatedAt!.toIso8601String(),
        "consent_collected_from": consentCollectedFrom == null ? null : consentCollectedFrom,
    };
}

class LineItem {
    LineItem({
        required this.id,
        required this.adminGraphqlApiId,
        required this.fulfillableQuantity,
        required this.fulfillmentService,
        required this.fulfillmentStatus,
        required this.giftCard,
        required this.grams,
        required this.name,
        required this.price,
        required this.priceSet,
        required this.productExists,
        required this.productId,
        required this.properties,
        required this.quantity,
        required this.requiresShipping,
        required this.sku,
        required this.taxable,
        required this.title,
        required this.totalDiscount,
        required this.totalDiscountSet,
        required this.variantId,
        required this.variantInventoryManagement,
        required this.variantTitle,
        required this.vendor,
        required this.taxLines,
        required this.duties,
        required this.discountAllocations,
    });

    int id;
    String adminGraphqlApiId;
    int fulfillableQuantity;
    String fulfillmentService;
    dynamic fulfillmentStatus;
    bool giftCard;
    int grams;
    String name;
    String price;
    Set priceSet;
    bool productExists;
    int productId;
    List<dynamic> properties;
    int quantity;
    bool requiresShipping;
    String sku;
    bool taxable;
    String title;
    String totalDiscount;
    Set totalDiscountSet;
    int variantId;
    String variantInventoryManagement;
    String variantTitle;
    String vendor;
    List<TaxLine> taxLines;
    List<dynamic> duties;
    List<dynamic> discountAllocations;

    factory LineItem.fromJson(Map<String, dynamic> json) => LineItem(
        id: json["id"],
        adminGraphqlApiId: json["admin_graphql_api_id"],
        fulfillableQuantity: json["fulfillable_quantity"],
        fulfillmentService: json["fulfillment_service"],
        fulfillmentStatus: json["fulfillment_status"],
        giftCard: json["gift_card"],
        grams: json["grams"],
        name: json["name"],
        price: json["price"],
        priceSet: Set.fromJson(json["price_set"]),
        productExists: json["product_exists"],
        productId: json["product_id"],
        properties: List<dynamic>.from(json["properties"].map((x) => x)),
        quantity: json["quantity"],
        requiresShipping: json["requires_shipping"],
        sku: json["sku"],
        taxable: json["taxable"],
        title: json["title"],
        totalDiscount: json["total_discount"],
        totalDiscountSet: Set.fromJson(json["total_discount_set"]),
        variantId: json["variant_id"],
        variantInventoryManagement: json["variant_inventory_management"],
        variantTitle: json["variant_title"],
        vendor: json["vendor"],
        taxLines: List<TaxLine>.from(json["tax_lines"].map((x) => TaxLine.fromJson(x))),
        duties: List<dynamic>.from(json["duties"].map((x) => x)),
        discountAllocations: List<dynamic>.from(json["discount_allocations"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "admin_graphql_api_id": adminGraphqlApiId,
        "fulfillable_quantity": fulfillableQuantity,
        "fulfillment_service": fulfillmentService,
        "fulfillment_status": fulfillmentStatus,
        "gift_card": giftCard,
        "grams": grams,
        "name": name,
        "price": price,
        "price_set": priceSet.toJson(),
        "product_exists": productExists,
        "product_id": productId,
        "properties": List<dynamic>.from(properties.map((x) => x)),
        "quantity": quantity,
        "requires_shipping": requiresShipping,
        "sku": sku,
        "taxable": taxable,
        "title": title,
        "total_discount": totalDiscount,
        "total_discount_set": totalDiscountSet.toJson(),
        "variant_id": variantId,
        "variant_inventory_management": variantInventoryManagement,
        "variant_title": variantTitle,
        "vendor": vendor,
        "tax_lines": List<dynamic>.from(taxLines.map((x) => x.toJson())),
        "duties": List<dynamic>.from(duties.map((x) => x)),
        "discount_allocations": List<dynamic>.from(discountAllocations.map((x) => x)),
    };
}

class TaxLine {
    TaxLine({
        required this.channelLiable,
        required this.price,
        required this.priceSet,
        required this.rate,
        required this.title,
    });

    bool channelLiable;
    String price;
    Set priceSet;
    double rate;
    Title? title;

    factory TaxLine.fromJson(Map<String, dynamic> json) => TaxLine(
        channelLiable: json["channel_liable"],
        price: json["price"],
        priceSet: Set.fromJson(json["price_set"]),
        rate: json["rate"].toDouble(),
        title: titleValues.map[json["title"]],
    );

    Map<String, dynamic> toJson() => {
        "channel_liable": channelLiable,
        "price": price,
        "price_set": priceSet.toJson(),
        "rate": rate,
        "title": titleValues.reverse[title],
    };
}

enum Title { IGST }

 final titleValues = EnumValues({
    "IGST": Title.IGST
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

      EnumValues( this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
