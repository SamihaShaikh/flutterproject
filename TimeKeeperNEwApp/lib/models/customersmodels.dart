// To parse this JSON data, do
//
//     final customersmodel = customersmodelFromJson(jsonString);

import 'dart:convert';

Customersmodel customersmodelFromJson(String str) => Customersmodel.fromJson(json.decode(str));

String customersmodelToJson(Customersmodel data) => json.encode(data.toJson());

class Customersmodel {
    Customersmodel({
        required this.customers,
    });

    List<Customer> customers;

    factory Customersmodel.fromJson(Map<String, dynamic> json) => Customersmodel(
        customers: List<Customer>.from(json["customers"].map((x) => Customer.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "customers": List<dynamic>.from(customers.map((x) => x.toJson())),
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
        required this.ordersCount,
        required this.state,
        required this.totalSpent,
        required this.lastOrderId,
        required this.note,
        required this.verifiedEmail,
        required this.multipassIdentifier,
        required this.taxExempt,
        required this.tags,
        required this.lastOrderName,
        required this.currency,
        required this.phone,
        required this.addresses,
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
    int ordersCount;
    String state;
    String totalSpent;
    int lastOrderId;
    String note;
    bool verifiedEmail;
    dynamic multipassIdentifier;
    bool taxExempt;
    String tags;
    String lastOrderName;
    String currency;
    String phone;
    List<Address> addresses;
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
        ordersCount: json["orders_count"],
        state: json["state"],
        totalSpent: json["total_spent"],
        lastOrderId: json["last_order_id"],
        note: json["note"],
        verifiedEmail: json["verified_email"],
        multipassIdentifier: json["multipass_identifier"],
        taxExempt: json["tax_exempt"],
        tags: json["tags"],
        lastOrderName: json["last_order_name"],
        currency: json["currency"],
        phone: json["phone"],
        addresses: List<Address>.from(json["addresses"].map((x) => Address.fromJson(x))),
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
        "orders_count": ordersCount,
        "state": state,
        "total_spent": totalSpent,
        "last_order_id": lastOrderId,
        "note": note,
        "verified_email": verifiedEmail,
        "multipass_identifier": multipassIdentifier,
        "tax_exempt": taxExempt,
        "tags": tags,
        "last_order_name": lastOrderName,
        "currency": currency,
        "phone": phone,
        "addresses": List<dynamic>.from(addresses.map((x) => x.toJson())),
        "accepts_marketing_updated_at": acceptsMarketingUpdatedAt.toIso8601String(),
        "marketing_opt_in_level": marketingOptInLevel == null ? null : marketingOptInLevel,
        "tax_exemptions": List<dynamic>.from(taxExemptions.map((x) => x)),
        "email_marketing_consent": emailMarketingConsent.toJson(),
        "sms_marketing_consent": smsMarketingConsent.toJson(),
        "admin_graphql_api_id": adminGraphqlApiId,
        "default_address": defaultAddress.toJson(),
    };
}

class Address {
    Address({
        required this.id,
        required this.customerId,
        required this.firstName,
        required this.lastName,
        required this.company,
        required this.address1,
        required this.address2,
        required this.city,
        required this.province,
        required this.country,
        required this.zip,
        required this.phone,
        required this.name,
        required this.provinceCode,
        required this.countryCode,
        required this.countryName,
        required this.addressDefault,
    });

    int id;
    int customerId;
    String firstName;
    String lastName;
    String company;
    String address1;
    String address2;
    String city;
    String province;
    String country;
    String zip;
    String phone;
    String name;
    String provinceCode;
    String countryCode;
    String countryName;
    bool addressDefault;

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        id: json["id"],
        customerId: json["customer_id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        company: json["company"],
        address1: json["address1"],
        address2: json["address2"],
        city: json["city"],
        province: json["province"],
        country: json["country"],
        zip: json["zip"],
        phone: json["phone"],
        name: json["name"],
        provinceCode: json["province_code"],
        countryCode: json["country_code"],
        countryName: json["country_name"],
        addressDefault: json["default"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "customer_id": customerId,
        "first_name": firstName,
        "last_name": lastName,
        "company": company,
        "address1": address1,
        "address2": address2,
        "city": city,
        "province": province,
        "country": country,
        "zip": zip,
        "phone": phone,
        "name": name,
        "province_code": provinceCode,
        "country_code": countryCode,
        "country_name": countryName,
        "default": addressDefault,
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
