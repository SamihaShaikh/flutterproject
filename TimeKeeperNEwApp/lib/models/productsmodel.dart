// To parse this JSON data, do
//
//     final productsmodel = productsmodelFromJson(jsonString);

import 'dart:convert';

Productsmodel productsmodelFromJson(String str) => Productsmodel.fromJson(json.decode(str));

String productsmodelToJson(Productsmodel data) => json.encode(data.toJson());

class Productsmodel {
    Productsmodel({
        required this.products,
    });

    List<Product> products;

    factory Productsmodel.fromJson(Map<String, dynamic> json) => Productsmodel(
        products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
    };
}

class Product {
    Product({
        required this.id,
        required this.title,
        required this.bodyHtml,
        required this.vendor,
        required this.productType,
        required this.createdAt,
        required this.handle,
        required this.updatedAt,
        required this.publishedAt,
        required this.templateSuffix,
        required this.status,
        required this.publishedScope,
        required this.tags,
        required this.adminGraphqlApiId,
        required this.variants,
        required this.options,
        required this.images,
        required this.image,
    });

    int id;
    String title;
    String bodyHtml;
    Vendor? vendor;
    String productType;
    DateTime createdAt;
    String handle;
    DateTime updatedAt;
    DateTime publishedAt;
    String templateSuffix;
    Status? status;
    PublishedScope? publishedScope;
    String tags;
    String adminGraphqlApiId;
    List<Variant> variants;
    List<Option> options;
    List<Image> images;
    Image image;

    factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: json["title"],
        bodyHtml: json["body_html"],
        vendor: vendorValues.map[json["vendor"]],
        productType: json["product_type"],
        createdAt: DateTime.parse(json["created_at"]),
        handle: json["handle"],
        updatedAt: DateTime.parse(json["updated_at"]),
        publishedAt: DateTime.parse(json["published_at"]),
        templateSuffix: json["template_suffix"],
        status: statusValues.map[json["status"]],
        publishedScope: publishedScopeValues.map[json["published_scope"]],
        tags: json["tags"],
        adminGraphqlApiId: json["admin_graphql_api_id"],
        variants: List<Variant>.from(json["variants"].map((x) => Variant.fromJson(x))),
        options: List<Option>.from(json["options"].map((x) => Option.fromJson(x))),
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        image: Image.fromJson(json["image"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "body_html": bodyHtml,
        "vendor": vendorValues.reverse[vendor],
        "product_type": productType,
        "created_at": createdAt.toIso8601String(),
        "handle": handle,
        "updated_at": updatedAt.toIso8601String(),
        "published_at": publishedAt.toIso8601String(),
        "template_suffix": templateSuffix,
        "status": statusValues.reverse[status],
        "published_scope": publishedScopeValues.reverse[publishedScope],
        "tags": tags,
        "admin_graphql_api_id": adminGraphqlApiId,
        "variants": List<dynamic>.from(variants.map((x) => x.toJson())),
        "options": List<dynamic>.from(options.map((x) => x.toJson())),
        "images": List<dynamic>.from(images.map((x) => x.toJson())),
        "image": image.toJson(),
    };
}

class Image {
    Image({
       required this.id,
        required this.productId,
        required this.position,
        required this.createdAt,
        required this.updatedAt,
        required this.alt,
        required this.width,
        required this.height,
        required this.src,
        required this.variantIds,
        required this.adminGraphqlApiId,
    });

    int id;
    int productId;
    int position;
    DateTime createdAt;
    DateTime updatedAt;
    dynamic alt;
    int width;
    int height;
    String src;
    List<dynamic> variantIds;
    String adminGraphqlApiId;

    factory Image.fromJson(Map<String, dynamic> json) => Image(
        id: json["id"],
        productId: json["product_id"],
        position: json["position"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        alt: json["alt"],
        width: json["width"],
        height: json["height"],
        src: json["src"],
        variantIds: List<dynamic>.from(json["variant_ids"].map((x) => x)),
        adminGraphqlApiId: json["admin_graphql_api_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "product_id": productId,
        "position": position,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "alt": alt,
        "width": width,
        "height": height,
        "src": src,
        "variant_ids": List<dynamic>.from(variantIds.map((x) => x)),
        "admin_graphql_api_id": adminGraphqlApiId,
    };
}

class Option {
    Option({
        required this.id,
        required this.productId,
        required this.name,
        required this.position,
        required this.values,
    });

    int id;
    int productId;
    Name? name;
    int position;
    List<Option1> values;

    factory Option.fromJson(Map<String, dynamic> json) => Option(
        id: json["id"],
        productId: json["product_id"],
        name: nameValues.map[json["name"]],
        position: json["position"],
        values: List<Option1>.from(json["values"].map((x) => option1Values.map[x])),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "product_id": productId,
        "name": nameValues.reverse[name],
        "position": position,
        "values": List<dynamic>.from(values.map((x) => option1Values.reverse[x])),
    };
}

enum Name { TITLE }

final nameValues = EnumValues({
    "Title": Name.TITLE
});

enum Option1 { DEFAULT_TITLE }

final option1Values = EnumValues({
    "Default Title": Option1.DEFAULT_TITLE
});

enum PublishedScope { WEB }

final publishedScopeValues = EnumValues({
    "web": PublishedScope.WEB
});

enum Status { ACTIVE }

final statusValues = EnumValues({
    "active": Status.ACTIVE
});

class Variant {
    Variant({
        required this.id,
        required this.productId,
        required this.title,
        required this.price,
        required this.sku,
        required this.position,
        required this.inventoryPolicy,
        required this.compareAtPrice,
        required this.fulfillmentService,
        required this.inventoryManagement,
        required this.option1,
        this.option2,
        this.option3,
        required this.createdAt,
        required this.updatedAt,
        required this.taxable,
        required this.barcode,
        required this.grams,
        required this.imageId,
        required this.weight,
        required this.weightUnit,
        required this.inventoryItemId,
        required this.inventoryQuantity,
        required this.oldInventoryQuantity,
        required this.requiresShipping,
        required this.adminGraphqlApiId,
    });

    int id;
    int productId;
    Option1? title;
    String price;
    String sku;
    int position;
    InventoryPolicy? inventoryPolicy;
    String compareAtPrice;
    FulfillmentService? fulfillmentService;
    InventoryManagement? inventoryManagement;
    Option1? option1;
    dynamic option2;
    dynamic option3;
    DateTime createdAt;
    DateTime updatedAt;
    bool taxable;
    String barcode;
    int grams;
    dynamic imageId;
    int weight;
    WeightUnit? weightUnit;
    int inventoryItemId;
    int inventoryQuantity;
    int oldInventoryQuantity;
    bool requiresShipping;
    String adminGraphqlApiId;

    factory Variant.fromJson(Map<String, dynamic> json) => Variant(
        id: json["id"],
        productId: json["product_id"],
        title: option1Values.map[json["title"]],
        price: json["price"],
        sku: json["sku"],
        position: json["position"],
        inventoryPolicy: inventoryPolicyValues.map[json["inventory_policy"]],
        compareAtPrice: json["compare_at_price"] == null ? null : json["compare_at_price"],
        fulfillmentService: fulfillmentServiceValues.map[json["fulfillment_service"]],
        inventoryManagement: inventoryManagementValues.map[json["inventory_management"]],
        option1: option1Values.map[json["option1"]],
        option2: json["option2"],
        option3: json["option3"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        taxable: json["taxable"],
        barcode: json["barcode"],
        grams: json["grams"],
        imageId: json["image_id"],
        weight: json["weight"],
        weightUnit: weightUnitValues.map[json["weight_unit"]],
        inventoryItemId: json["inventory_item_id"],
        inventoryQuantity: json["inventory_quantity"],
        oldInventoryQuantity: json["old_inventory_quantity"],
        requiresShipping: json["requires_shipping"],
        adminGraphqlApiId: json["admin_graphql_api_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "product_id": productId,
        "title": option1Values.reverse[title],
        "price": price,
        "sku": sku,
        "position": position,
        "inventory_policy": inventoryPolicyValues.reverse[inventoryPolicy],
        "compare_at_price": compareAtPrice == null ? null : compareAtPrice,
        "fulfillment_service": fulfillmentServiceValues.reverse[fulfillmentService],
        "inventory_management": inventoryManagementValues.reverse[inventoryManagement],
        "option1": option1Values.reverse[option1],
        "option2": option2,
        "option3": option3,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "taxable": taxable,
        "barcode": barcode,
        "grams": grams,
        "image_id": imageId,
        "weight": weight,
        "weight_unit": weightUnitValues.reverse[weightUnit],
        "inventory_item_id": inventoryItemId,
        "inventory_quantity": inventoryQuantity,
        "old_inventory_quantity": oldInventoryQuantity,
        "requires_shipping": requiresShipping,
        "admin_graphql_api_id": adminGraphqlApiId,
    };
}

enum FulfillmentService { MANUAL }

final fulfillmentServiceValues = EnumValues({
    "manual": FulfillmentService.MANUAL
});

enum InventoryManagement { SHOPIFY }

final inventoryManagementValues = EnumValues({
    "shopify": InventoryManagement.SHOPIFY
});

enum InventoryPolicy { DENY, CONTINUE }

final inventoryPolicyValues = EnumValues({
    "continue": InventoryPolicy.CONTINUE,
    "deny": InventoryPolicy.DENY
});

enum WeightUnit { KG, G }

final weightUnitValues = EnumValues({
    "g": WeightUnit.G,
    "kg": WeightUnit.KG
});

enum Vendor { TIMEKEEPERSS }

final vendorValues = EnumValues({
    "timekeeperss": Vendor.TIMEKEEPERSS
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}
