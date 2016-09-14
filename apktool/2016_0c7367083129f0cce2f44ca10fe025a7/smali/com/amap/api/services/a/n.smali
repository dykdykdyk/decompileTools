.class public Lcom/amap/api/services/a/n;
.super Ljava/lang/Object;
.source "JSONHelper.java"


# direct methods
.method private static A(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/Railway;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1143
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1160
    :goto_0
    return-object v0

    .line 1146
    :cond_0
    const-string v0, "alters"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1147
    if-nez v2, :cond_1

    move-object v0, v1

    .line 1148
    goto :goto_0

    .line 1150
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1151
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1152
    if-eqz v3, :cond_2

    .line 1155
    new-instance v4, Lcom/amap/api/services/route/Railway;

    invoke-direct {v4}, Lcom/amap/api/services/route/Railway;-><init>()V

    .line 1156
    const-string v5, "id"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/route/Railway;->setID(Ljava/lang/String;)V

    .line 1157
    const-string v5, "name"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amap/api/services/route/Railway;->setName(Ljava/lang/String;)V

    .line 1158
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1160
    goto :goto_0
.end method

.method private static B(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RailwaySpace;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1186
    :goto_0
    return-object v0

    .line 1174
    :cond_0
    const-string v0, "spaces"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1175
    if-nez v2, :cond_1

    move-object v0, v1

    .line 1176
    goto :goto_0

    .line 1178
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1179
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1180
    if-eqz v3, :cond_2

    .line 1183
    invoke-static {v3}, Lcom/amap/api/services/a/n;->C(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RailwaySpace;

    move-result-object v3

    .line 1184
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1178
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1186
    goto :goto_0
.end method

.method private static C(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RailwaySpace;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1196
    const-string v0, "code"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1197
    const-string v1, "cost"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    .line 1198
    new-instance v2, Lcom/amap/api/services/route/RailwaySpace;

    invoke-direct {v2, v0, v1}, Lcom/amap/api/services/route/RailwaySpace;-><init>(Ljava/lang/String;F)V

    .line 1199
    return-object v2
.end method

.method private static D(Lorg/json/JSONObject;)Lcom/amap/api/services/route/TaxiItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1207
    if-nez p0, :cond_0

    .line 1208
    const/4 v0, 0x0

    .line 1217
    :goto_0
    return-object v0

    .line 1210
    :cond_0
    new-instance v0, Lcom/amap/api/services/route/TaxiItem;

    invoke-direct {v0}, Lcom/amap/api/services/route/TaxiItem;-><init>()V

    .line 1211
    const-string v1, "origin"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/TaxiItem;->setOrigin(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1212
    const-string v1, "destination"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/TaxiItem;->setDestination(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1213
    const-string v1, "distance"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/TaxiItem;->setDistance(F)V

    .line 1214
    const-string v1, "duration"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/TaxiItem;->setDuration(F)V

    .line 1215
    const-string v1, "sname"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/TaxiItem;->setSname(Ljava/lang/String;)V

    .line 1216
    const-string v1, "tname"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/TaxiItem;->setTname(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lcom/amap/api/services/route/BusRouteResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 783
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 784
    const-string v0, "route"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 785
    const/4 v0, 0x0

    .line 808
    :cond_0
    :goto_0
    return-object v0

    .line 787
    :cond_1
    new-instance v0, Lcom/amap/api/services/route/BusRouteResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/BusRouteResult;-><init>()V

    .line 788
    const-string v2, "route"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 789
    if-eqz v1, :cond_0

    .line 792
    const-string v2, "origin"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/BusRouteResult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 793
    const-string v2, "destination"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/BusRouteResult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 795
    const-string v2, "taxi_cost"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/route/BusRouteResult;->setTaxiCost(F)V

    .line 796
    const-string v2, "transits"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 799
    const-string v2, "transits"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 800
    if-eqz v1, :cond_0

    .line 803
    invoke-static {v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    .line 804
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/BusRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 806
    :catch_0
    move-exception v0

    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1588
    if-nez p0, :cond_1

    .line 1589
    const-string v0, ""

    .line 1595
    :cond_0
    :goto_0
    return-object v0

    .line 1591
    :cond_1
    const-string v0, ""

    .line 1592
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1593
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/SuggestionCity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    const-string v0, "cities"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    .line 137
    :goto_0
    return-object v0

    .line 120
    :cond_0
    const-string v0, "cities"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 121
    if-nez v2, :cond_1

    move-object v0, v1

    .line 122
    goto :goto_0

    .line 124
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 125
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 126
    if-eqz v3, :cond_2

    .line 129
    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 130
    const-string v5, "citycode"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 131
    const-string v6, "adcode"

    invoke-static {v3, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 132
    const-string v7, "num"

    invoke-static {v3, v7}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->j(Ljava/lang/String;)I

    move-result v3

    .line 133
    new-instance v7, Lcom/amap/api/services/core/SuggestionCity;

    invoke-direct {v7, v4, v5, v6, v3}, Lcom/amap/api/services/core/SuggestionCity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 137
    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Z)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/nearby/NearbyInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 65
    const-string v0, "datas"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 66
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 67
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 102
    :goto_0
    return-object v0

    .line 69
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    .line 71
    const/4 v0, 0x0

    move v5, v0

    :goto_1
    if-ge v5, v7, :cond_4

    .line 72
    invoke-virtual {v6, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 73
    const-string v0, "userid"

    invoke-static {v8, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 74
    const-string v0, "location"

    invoke-static {v8, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 75
    const-wide/16 v2, 0x0

    .line 76
    const-wide/16 v0, 0x0

    .line 77
    if-eqz v10, :cond_2

    .line 78
    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 79
    array-length v11, v10

    const/4 v12, 0x2

    if-ne v11, v12, :cond_2

    .line 80
    const/4 v0, 0x0

    aget-object v0, v10, v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->l(Ljava/lang/String;)D

    move-result-wide v2

    .line 81
    const/4 v0, 0x1

    aget-object v0, v10, v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->l(Ljava/lang/String;)D

    move-result-wide v0

    .line 85
    :cond_2
    const-string v10, "distance"

    invoke-static {v8, v10}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 86
    const-string v11, "updatetime"

    invoke-static {v8, v11}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 87
    invoke-static {v8}, Lcom/amap/api/services/a/n;->m(Ljava/lang/String;)J

    move-result-wide v12

    .line 88
    invoke-static {v10}, Lcom/amap/api/services/a/n;->j(Ljava/lang/String;)I

    move-result v8

    .line 89
    new-instance v10, Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    .line 90
    new-instance v0, Lcom/amap/api/services/nearby/NearbyInfo;

    invoke-direct {v0}, Lcom/amap/api/services/nearby/NearbyInfo;-><init>()V

    .line 91
    invoke-virtual {v0, v9}, Lcom/amap/api/services/nearby/NearbyInfo;->setUserID(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, v12, v13}, Lcom/amap/api/services/nearby/NearbyInfo;->setTimeStamp(J)V

    .line 93
    invoke-virtual {v0, v10}, Lcom/amap/api/services/nearby/NearbyInfo;->setPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 94
    if-eqz p1, :cond_3

    .line 95
    invoke-virtual {v0, v8}, Lcom/amap/api/services/nearby/NearbyInfo;->setDrivingDistance(I)V

    .line 99
    :goto_2
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {v0, v8}, Lcom/amap/api/services/nearby/NearbyInfo;->setDistance(I)V

    goto :goto_2

    :cond_4
    move-object v0, v4

    .line 102
    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/BusPath;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 819
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 820
    if-nez p0, :cond_0

    move-object v0, v7

    .line 863
    :goto_0
    return-object v0

    :cond_0
    move v1, v2

    .line 823
    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 826
    new-instance v8, Lcom/amap/api/services/route/BusPath;

    invoke-direct {v8}, Lcom/amap/api/services/route/BusPath;-><init>()V

    .line 827
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 828
    if-eqz v0, :cond_2

    .line 831
    const-string v3, "cost"

    invoke-static {v0, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v8, v3}, Lcom/amap/api/services/route/BusPath;->setCost(F)V

    .line 832
    const-string v3, "duration"

    invoke-static {v0, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->m(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/amap/api/services/route/BusPath;->setDuration(J)V

    .line 833
    const-string v3, "nightflag"

    invoke-static {v0, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->n(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v8, v3}, Lcom/amap/api/services/route/BusPath;->setNightBus(Z)V

    .line 834
    const-string v3, "walking_distance"

    invoke-static {v0, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v8, v3}, Lcom/amap/api/services/route/BusPath;->setWalkDistance(F)V

    .line 836
    const-string v3, "distance"

    invoke-static {v0, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v8, v3}, Lcom/amap/api/services/route/BusPath;->setDistance(F)V

    .line 837
    const-string v3, "segments"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 838
    if-eqz v9, :cond_2

    .line 841
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    move v0, v4

    move v5, v4

    .line 842
    :goto_2
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_1

    .line 843
    invoke-virtual {v9, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 844
    if-eqz v6, :cond_6

    .line 847
    invoke-static {v6}, Lcom/amap/api/services/a/n;->o(Lorg/json/JSONObject;)Lcom/amap/api/services/route/BusStep;

    move-result-object v11

    .line 848
    if-eqz v11, :cond_6

    .line 851
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 852
    invoke-virtual {v11}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 853
    invoke-virtual {v11}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amap/api/services/route/RouteBusWalkItem;->getDistance()F

    move-result v6

    add-float/2addr v0, v6

    move v6, v0

    .line 854
    :goto_3
    invoke-virtual {v11}, Lcom/amap/api/services/route/BusStep;->getBusLines()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v11}, Lcom/amap/api/services/route/BusStep;->getBusLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 855
    invoke-virtual {v11}, Lcom/amap/api/services/route/BusStep;->getBusLines()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/RouteBusLineItem;

    invoke-virtual {v0}, Lcom/amap/api/services/route/RouteBusLineItem;->getDistance()F

    move-result v0

    add-float/2addr v5, v0

    move v12, v6

    move v6, v5

    move v5, v12

    .line 842
    :goto_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v5

    move v5, v6

    goto :goto_2

    .line 857
    :cond_1
    invoke-virtual {v8, v10}, Lcom/amap/api/services/route/BusPath;->setSteps(Ljava/util/List;)V

    .line 858
    invoke-virtual {v8, v5}, Lcom/amap/api/services/route/BusPath;->setBusDistance(F)V

    .line 859
    invoke-virtual {v8, v0}, Lcom/amap/api/services/route/BusPath;->setWalkDistance(F)V

    .line 861
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 823
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_3
    move-object v0, v7

    .line 863
    goto/16 :goto_0

    :cond_4
    move v12, v6

    move v6, v5

    move v5, v12

    goto :goto_4

    :cond_5
    move v6, v0

    goto :goto_3

    :cond_6
    move v6, v5

    move v5, v0

    goto :goto_4
.end method

.method public static a(Lcom/amap/api/services/route/DriveStep;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 1347
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1348
    const-string v0, "cities"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1349
    if-nez v2, :cond_0

    .line 1370
    :goto_0
    return-void

    .line 1352
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1353
    new-instance v3, Lcom/amap/api/services/route/RouteSearchCity;

    invoke-direct {v3}, Lcom/amap/api/services/route/RouteSearchCity;-><init>()V

    .line 1354
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1355
    if-eqz v4, :cond_1

    .line 1358
    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCityName(Ljava/lang/String;)V

    .line 1359
    const-string v5, "citycode"

    .line 1360
    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCitycode(Ljava/lang/String;)V

    .line 1361
    const-string v5, "adcode"

    .line 1362
    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/RouteSearchCity;->setSearchCityhAdCode(Ljava/lang/String;)V

    .line 1363
    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lcom/amap/api/services/route/RouteSearchCity;Lorg/json/JSONObject;)V

    .line 1364
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1352
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1366
    :cond_2
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/DriveStep;->setRouteSearchCityList(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1368
    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseCrossCity"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lcom/amap/api/services/route/RouteSearchCity;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 1375
    const-string v0, "districts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1399
    :goto_0
    return-void

    .line 1379
    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1380
    const-string v0, "districts"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1381
    if-nez v2, :cond_1

    .line 1382
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/RouteSearchCity;->setDistricts(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1397
    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseCrossDistricts"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1385
    :cond_1
    const/4 v0, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1386
    new-instance v3, Lcom/amap/api/services/route/District;

    invoke-direct {v3}, Lcom/amap/api/services/route/District;-><init>()V

    .line 1387
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1388
    if-eqz v4, :cond_2

    .line 1391
    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/District;->setDistrictName(Ljava/lang/String;)V

    .line 1392
    const-string v5, "adcode"

    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/route/District;->setDistrictAdcode(Ljava/lang/String;)V

    .line 1393
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1385
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1395
    :cond_3
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/RouteSearchCity;->setDistricts(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 649
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 650
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 651
    new-instance v2, Lcom/amap/api/services/road/Crossroad;

    invoke-direct {v2}, Lcom/amap/api/services/road/Crossroad;-><init>()V

    .line 652
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 653
    if-eqz v3, :cond_0

    .line 656
    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setId(Ljava/lang/String;)V

    .line 657
    const-string v4, "direction"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setDirection(Ljava/lang/String;)V

    .line 658
    const-string v4, "distance"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setDistance(F)V

    .line 660
    const-string v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setCenterPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 661
    const-string v4, "first_id"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setFirstRoadId(Ljava/lang/String;)V

    .line 662
    const-string v4, "first_name"

    .line 663
    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setFirstRoadName(Ljava/lang/String;)V

    .line 664
    const-string v4, "second_id"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/road/Crossroad;->setSecondRoadId(Ljava/lang/String;)V

    .line 665
    const-string v4, "second_name"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/road/Crossroad;->setSecondRoadName(Ljava/lang/String;)V

    .line 667
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 669
    :cond_1
    invoke-virtual {p1, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setCrossroads(Ljava/util/List;)V

    .line 670
    return-void
.end method

.method public static a(Lorg/json/JSONArray;Ljava/util/ArrayList;Lcom/amap/api/services/district/DistrictItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/district/DistrictItem;",
            ">;",
            "Lcom/amap/api/services/district/DistrictItem;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 548
    if-nez p0, :cond_1

    .line 562
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 552
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 553
    if-eqz v1, :cond_2

    .line 556
    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Lorg/json/JSONObject;)Lcom/amap/api/services/district/DistrictItem;

    move-result-object v1

    .line 557
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 559
    :cond_3
    if-eqz p2, :cond_0

    .line 560
    invoke-virtual {p2, p1}, Lcom/amap/api/services/district/DistrictItem;->setSubDistrict(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public static a(Lorg/json/JSONObject;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 696
    const-string v0, "province"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setProvince(Ljava/lang/String;)V

    .line 697
    const-string v0, "city"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setCity(Ljava/lang/String;)V

    .line 698
    const-string v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setCityCode(Ljava/lang/String;)V

    .line 699
    const-string v0, "adcode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setAdCode(Ljava/lang/String;)V

    .line 700
    const-string v0, "district"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setDistrict(Ljava/lang/String;)V

    .line 701
    const-string v0, "township"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setTownship(Ljava/lang/String;)V

    .line 703
    const-string v0, "neighborhood"

    .line 704
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 705
    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setNeighborhood(Ljava/lang/String;)V

    .line 707
    const-string v0, "building"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 708
    const-string v1, "name"

    invoke-static {v0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setBuilding(Ljava/lang/String;)V

    .line 710
    new-instance v0, Lcom/amap/api/services/geocoder/StreetNumber;

    invoke-direct {v0}, Lcom/amap/api/services/geocoder/StreetNumber;-><init>()V

    .line 711
    const-string v1, "streetNumber"

    .line 712
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 713
    const-string v2, "street"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setStreet(Ljava/lang/String;)V

    .line 714
    const-string v2, "number"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setNumber(Ljava/lang/String;)V

    .line 715
    const-string v2, "location"

    .line 716
    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 717
    const-string v2, "direction"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/StreetNumber;->setDirection(Ljava/lang/String;)V

    .line 718
    const-string v2, "distance"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/geocoder/StreetNumber;->setDistance(F)V

    .line 720
    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setStreetNumber(Lcom/amap/api/services/geocoder/StreetNumber;)V

    .line 721
    invoke-static {p0}, Lcom/amap/api/services/a/n;->n(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setBusinessAreas(Ljava/util/List;)V

    .line 722
    const-string v0, "towncode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setTowncode(Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method public static b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1600
    if-nez p0, :cond_1

    .line 1607
    :cond_0
    :goto_0
    return-object v0

    .line 1603
    :cond_1
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1604
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1605
    invoke-static {v0}, Lcom/amap/api/services/a/n;->g(Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Lcom/amap/api/services/route/DriveRouteResult;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1232
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1233
    const-string v0, "route"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1234
    const/4 v0, 0x0

    .line 1318
    :cond_0
    :goto_0
    return-object v0

    .line 1236
    :cond_1
    new-instance v0, Lcom/amap/api/services/route/DriveRouteResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/DriveRouteResult;-><init>()V

    .line 1237
    const-string v3, "route"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1238
    if-eqz v1, :cond_0

    .line 1241
    const-string v3, "origin"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/DriveRouteResult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1242
    const-string v3, "destination"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/DriveRouteResult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1243
    const-string v3, "taxi_cost"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/DriveRouteResult;->setTaxiCost(F)V

    .line 1244
    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1247
    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1248
    if-eqz v5, :cond_0

    .line 1251
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v4, v2

    .line 1252
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v4, v1, :cond_6

    .line 1253
    new-instance v7, Lcom/amap/api/services/route/DrivePath;

    invoke-direct {v7}, Lcom/amap/api/services/route/DrivePath;-><init>()V

    .line 1254
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1255
    if-eqz v1, :cond_5

    .line 1258
    const-string v3, "distance"

    .line 1259
    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/DrivePath;->setDistance(F)V

    .line 1260
    const-string v3, "duration"

    .line 1261
    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->m(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/amap/api/services/route/DrivePath;->setDuration(J)V

    .line 1262
    const-string v3, "strategy"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/DrivePath;->setStrategy(Ljava/lang/String;)V

    .line 1263
    const-string v3, "tolls"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/DrivePath;->setTolls(F)V

    .line 1264
    const-string v3, "toll_distance"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/DrivePath;->setTollDistance(F)V

    .line 1266
    const-string v3, "traffic_lights"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->j(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/amap/api/services/route/DrivePath;->setTotalTrafficlights(I)V

    .line 1267
    const-string v3, "roads"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 1268
    if-eqz v8, :cond_5

    .line 1271
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 1272
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_4

    .line 1273
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1274
    const-string v10, "steps"

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 1275
    if-eqz v10, :cond_3

    move v1, v2

    .line 1278
    :goto_3
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v1, v11, :cond_3

    .line 1279
    new-instance v11, Lcom/amap/api/services/route/DriveStep;

    invoke-direct {v11}, Lcom/amap/api/services/route/DriveStep;-><init>()V

    .line 1280
    invoke-virtual {v10, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v12

    .line 1281
    if-eqz v12, :cond_2

    .line 1284
    const-string v13, "instruction"

    .line 1285
    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setInstruction(Ljava/lang/String;)V

    .line 1286
    const-string v13, "orientation"

    .line 1287
    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setOrientation(Ljava/lang/String;)V

    .line 1288
    const-string v13, "road"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setRoad(Ljava/lang/String;)V

    .line 1289
    const-string v13, "distance"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setDistance(F)V

    .line 1291
    const-string v13, "tolls"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setTolls(F)V

    .line 1292
    const-string v13, "toll_distance"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setTollDistance(F)V

    .line 1294
    const-string v13, "toll_road"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setTollRoad(Ljava/lang/String;)V

    .line 1295
    const-string v13, "duration"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setDuration(F)V

    .line 1298
    const-string v13, "polyline"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setPolyline(Ljava/util/List;)V

    .line 1299
    const-string v13, "action"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setAction(Ljava/lang/String;)V

    .line 1300
    const-string v13, "assistant_action"

    invoke-static {v12, v13}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Lcom/amap/api/services/route/DriveStep;->setAssistantAction(Ljava/lang/String;)V

    .line 1302
    invoke-static {v11, v12}, Lcom/amap/api/services/a/n;->a(Lcom/amap/api/services/route/DriveStep;Lorg/json/JSONObject;)V

    .line 1303
    invoke-static {v11, v12}, Lcom/amap/api/services/a/n;->b(Lcom/amap/api/services/route/DriveStep;Lorg/json/JSONObject;)V

    .line 1304
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1278
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    .line 1272
    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_2

    .line 1307
    :cond_4
    invoke-virtual {v7, v9}, Lcom/amap/api/services/route/DrivePath;->setSteps(Ljava/util/List;)V

    .line 1308
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1252
    :cond_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_1

    .line 1310
    :cond_6
    invoke-virtual {v0, v6}, Lcom/amap/api/services/route/DriveRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 1312
    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseDriveRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1313
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1315
    :catch_1
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseDriveRouteThrowable"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 149
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 150
    const-string v0, "keywords"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 151
    if-nez v2, :cond_0

    move-object v0, v1

    .line 157
    :goto_0
    return-object v0

    .line 154
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 155
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    .line 157
    goto :goto_0
.end method

.method private static b(Lcom/amap/api/services/route/DriveStep;Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 1323
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1324
    const-string v0, "tmcs"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1325
    if-nez v2, :cond_0

    .line 1342
    :goto_0
    return-void

    .line 1328
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1329
    new-instance v3, Lcom/amap/api/services/route/TMC;

    invoke-direct {v3}, Lcom/amap/api/services/route/TMC;-><init>()V

    .line 1330
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1331
    if-eqz v4, :cond_1

    .line 1334
    const-string v5, "distance"

    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amap/api/services/a/n;->j(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/route/TMC;->setDistance(I)V

    .line 1335
    const-string v5, "status"

    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/route/TMC;->setStatus(Ljava/lang/String;)V

    .line 1336
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1328
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1338
    :cond_2
    invoke-virtual {p0, v1}, Lcom/amap/api/services/route/DriveStep;->setTMCs(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1340
    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseTMCs"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 674
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 675
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 676
    new-instance v2, Lcom/amap/api/services/geocoder/RegeocodeRoad;

    invoke-direct {v2}, Lcom/amap/api/services/geocoder/RegeocodeRoad;-><init>()V

    .line 677
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 678
    if-eqz v3, :cond_0

    .line 681
    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setId(Ljava/lang/String;)V

    .line 682
    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setName(Ljava/lang/String;)V

    .line 683
    const-string v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setLatLngPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 685
    const-string v4, "direction"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setDirection(Ljava/lang/String;)V

    .line 687
    const-string v4, "distance"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/geocoder/RegeocodeRoad;->setDistance(F)V

    .line 689
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 691
    :cond_1
    invoke-virtual {p1, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setRoads(Ljava/util/List;)V

    .line 692
    return-void
.end method

.method public static c(Ljava/lang/String;)Lcom/amap/api/services/route/WalkRouteResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1405
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1406
    const-string v0, "route"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1407
    const/4 v0, 0x0

    .line 1468
    :cond_0
    :goto_0
    return-object v0

    .line 1409
    :cond_1
    new-instance v0, Lcom/amap/api/services/route/WalkRouteResult;

    invoke-direct {v0}, Lcom/amap/api/services/route/WalkRouteResult;-><init>()V

    .line 1410
    const-string v3, "route"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1411
    const-string v3, "origin"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/WalkRouteResult;->setStartPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1412
    const-string v3, "destination"

    invoke-static {v1, v3}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/route/WalkRouteResult;->setTargetPos(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1413
    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1416
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1417
    const-string v3, "paths"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1418
    if-nez v5, :cond_2

    .line 1419
    invoke-virtual {v0, v4}, Lcom/amap/api/services/route/WalkRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1465
    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseWalkRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v3, v2

    .line 1422
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_7

    .line 1423
    new-instance v6, Lcom/amap/api/services/route/WalkPath;

    invoke-direct {v6}, Lcom/amap/api/services/route/WalkPath;-><init>()V

    .line 1424
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1425
    if-eqz v1, :cond_6

    .line 1428
    const-string v7, "distance"

    invoke-static {v1, v7}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/amap/api/services/route/WalkPath;->setDistance(F)V

    .line 1429
    const-string v7, "duration"

    invoke-static {v1, v7}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/amap/api/services/a/n;->m(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Lcom/amap/api/services/route/WalkPath;->setDuration(J)V

    .line 1430
    const-string v7, "steps"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1431
    const-string v7, "steps"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 1432
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1433
    if-eqz v7, :cond_6

    move v1, v2

    .line 1437
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 1438
    new-instance v9, Lcom/amap/api/services/route/WalkStep;

    invoke-direct {v9}, Lcom/amap/api/services/route/WalkStep;-><init>()V

    .line 1439
    invoke-virtual {v7, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1440
    if-eqz v10, :cond_3

    .line 1443
    const-string v11, "instruction"

    invoke-static {v10, v11}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setInstruction(Ljava/lang/String;)V

    .line 1445
    const-string v11, "orientation"

    invoke-static {v10, v11}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setOrientation(Ljava/lang/String;)V

    .line 1447
    const-string v11, "road"

    invoke-static {v10, v11}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setRoad(Ljava/lang/String;)V

    .line 1448
    const-string v11, "distance"

    invoke-static {v10, v11}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setDistance(F)V

    .line 1450
    const-string v11, "duration"

    invoke-static {v10, v11}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setDuration(F)V

    .line 1452
    const-string v11, "polyline"

    invoke-static {v10, v11}, Lcom/amap/api/services/a/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setPolyline(Ljava/util/List;)V

    .line 1453
    const-string v11, "action"

    invoke-static {v10, v11}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/amap/api/services/route/WalkStep;->setAction(Ljava/lang/String;)V

    .line 1454
    const-string v11, "assistant_action"

    invoke-static {v10, v11}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/amap/api/services/route/WalkStep;->setAssistantAction(Ljava/lang/String;)V

    .line 1456
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1437
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1458
    :cond_4
    invoke-virtual {v6, v8}, Lcom/amap/api/services/route/WalkPath;->setSteps(Ljava/util/List;)V

    .line 1460
    :cond_5
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1422
    :cond_6
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_1

    .line 1462
    :cond_7
    invoke-virtual {v0, v4}, Lcom/amap/api/services/route/WalkRouteResult;->setPaths(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static c(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/PoiItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 170
    if-nez p0, :cond_0

    move-object v0, v1

    .line 185
    :goto_0
    return-object v0

    .line 173
    :cond_0
    const-string v0, "pois"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 174
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 175
    goto :goto_0

    .line 177
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 178
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 179
    if-eqz v3, :cond_3

    .line 182
    invoke-static {v3}, Lcom/amap/api/services/a/n;->d(Lorg/json/JSONObject;)Lcom/amap/api/services/core/PoiItem;

    move-result-object v3

    .line 183
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 185
    goto :goto_0
.end method

.method public static c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1612
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1613
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->f(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1615
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Lorg/json/JSONArray;Lcom/amap/api/services/geocoder/RegeocodeAddress;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1738
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1739
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1740
    new-instance v2, Lcom/amap/api/services/geocoder/AoiItem;

    invoke-direct {v2}, Lcom/amap/api/services/geocoder/AoiItem;-><init>()V

    .line 1741
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1742
    if-eqz v3, :cond_0

    .line 1745
    const-string v4, "id"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/AoiItem;->setId(Ljava/lang/String;)V

    .line 1746
    const-string v4, "name"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/AoiItem;->setName(Ljava/lang/String;)V

    .line 1747
    const-string v4, "adcode"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/AoiItem;->setAdcode(Ljava/lang/String;)V

    .line 1748
    const-string v4, "location"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amap/api/services/geocoder/AoiItem;->setLocation(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1749
    const-string v4, "area"

    invoke-static {v3, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/services/geocoder/AoiItem;->setArea(Ljava/lang/Float;)V

    .line 1750
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1739
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1752
    :cond_1
    invoke-virtual {p1, v1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->setAois(Ljava/util/List;)V

    .line 1753
    return-void
.end method

.method public static d(Lorg/json/JSONObject;)Lcom/amap/api/services/core/PoiItem;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 196
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    const-string v2, "location"

    invoke-static {p0, v2}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    .line 198
    const-string v3, "name"

    invoke-static {p0, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 199
    const-string v4, "address"

    invoke-static {p0, v4}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 200
    new-instance v5, Lcom/amap/api/services/core/PoiItem;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/amap/api/services/core/PoiItem;-><init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const-string v1, "adcode"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setAdCode(Ljava/lang/String;)V

    .line 202
    const-string v1, "pname"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setProvinceName(Ljava/lang/String;)V

    .line 203
    const-string v1, "cityname"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setCityName(Ljava/lang/String;)V

    .line 204
    const-string v1, "adname"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setAdName(Ljava/lang/String;)V

    .line 205
    const-string v1, "citycode"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setCityCode(Ljava/lang/String;)V

    .line 206
    const-string v1, "pcode"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setProvinceCode(Ljava/lang/String;)V

    .line 207
    const-string v1, "direction"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setDirection(Ljava/lang/String;)V

    .line 208
    const-string v1, "distance"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const-string v1, "distance"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-static {v1}, Lcom/amap/api/services/a/n;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 212
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setDistance(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    :cond_0
    :goto_0
    const-string v1, "tel"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setTel(Ljava/lang/String;)V

    .line 221
    const-string v1, "type"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setTypeDes(Ljava/lang/String;)V

    .line 222
    const-string v1, "entr_location"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setEnter(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 223
    const-string v1, "exit_location"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setExit(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 224
    const-string v1, "website"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setWebsite(Ljava/lang/String;)V

    .line 225
    const-string v1, "postcode"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setPostcode(Ljava/lang/String;)V

    .line 226
    const-string v1, "business_area"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setBusinessArea(Ljava/lang/String;)V

    .line 227
    const-string v1, "email"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setEmail(Ljava/lang/String;)V

    .line 228
    const-string v1, "indoor_map"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v1}, Lcom/amap/api/services/a/n;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    invoke-virtual {v5, v0}, Lcom/amap/api/services/core/PoiItem;->setIndoorMap(Z)V

    .line 234
    :goto_1
    const-string v1, "parking_type"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setParkingType(Ljava/lang/String;)V

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 236
    const-string v2, "children"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 237
    const-string v2, "children"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 238
    if-eqz v2, :cond_3

    .line 241
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 242
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 243
    if-eqz v3, :cond_1

    .line 246
    invoke-static {v3}, Lcom/amap/api/services/a/n;->w(Lorg/json/JSONObject;)Lcom/amap/api/services/poisearch/SubPoiItem;

    move-result-object v3

    .line 247
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 214
    :catch_0
    move-exception v1

    const-string v2, "JSONHelper"

    const-string v3, "parseBasePoi"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :catch_1
    move-exception v1

    const-string v2, "JSONHelper"

    const-string v3, "parseBasePoi"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 232
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setIndoorMap(Z)V

    goto :goto_1

    .line 249
    :cond_3
    invoke-virtual {v5, v1}, Lcom/amap/api/services/core/PoiItem;->setSubPois(Ljava/util/List;)V

    .line 252
    :cond_4
    const-string v0, "indoor_data"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->d(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/poisearch/IndoorData;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amap/api/services/core/PoiItem;->setIndoorDate(Lcom/amap/api/services/poisearch/IndoorData;)V

    .line 253
    return-object v5
.end method

.method private static d(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/poisearch/IndoorData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1722
    const-string v2, ""

    .line 1723
    const/4 v1, 0x0

    .line 1724
    const-string v0, ""

    .line 1725
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1726
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1727
    if-eqz v3, :cond_0

    const-string v4, "cpid"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "floor"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1728
    const-string v0, "cpid"

    invoke-static {v3, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1729
    const-string v0, "floor"

    invoke-static {v3, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->j(Ljava/lang/String;)I

    move-result v1

    .line 1730
    const-string v0, "truefloor"

    invoke-static {v3, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1733
    :cond_0
    new-instance v3, Lcom/amap/api/services/poisearch/IndoorData;

    invoke-direct {v3, v2, v1, v0}, Lcom/amap/api/services/poisearch/IndoorData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v3
.end method

.method public static d(Ljava/lang/String;)Lcom/amap/api/services/weather/LocalWeatherLive;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 1475
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1476
    const-string v0, "lives"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1477
    const/4 v0, 0x0

    .line 1512
    :cond_0
    :goto_0
    return-object v0

    .line 1479
    :cond_1
    new-instance v0, Lcom/amap/api/services/weather/LocalWeatherLive;

    invoke-direct {v0}, Lcom/amap/api/services/weather/LocalWeatherLive;-><init>()V

    .line 1480
    const-string v2, "lives"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1481
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1484
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1485
    if-eqz v1, :cond_0

    .line 1489
    const-string v2, "adcode"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setAdCode(Ljava/lang/String;)V

    .line 1491
    const-string v2, "province"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setProvince(Ljava/lang/String;)V

    .line 1493
    const-string v2, "city"

    .line 1494
    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1493
    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setCity(Ljava/lang/String;)V

    .line 1495
    const-string v2, "weather"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setWeather(Ljava/lang/String;)V

    .line 1497
    const-string v2, "temperature"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setTemperature(Ljava/lang/String;)V

    .line 1499
    const-string v2, "winddirection"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setWindDirection(Ljava/lang/String;)V

    .line 1501
    const-string v2, "windpower"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setWindPower(Ljava/lang/String;)V

    .line 1503
    const-string v2, "humidity"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/weather/LocalWeatherLive;->setHumidity(Ljava/lang/String;)V

    .line 1505
    const-string v2, "reporttime"

    invoke-static {v1, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/weather/LocalWeatherLive;->setReportTime(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1509
    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "WeatherForecastResult"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e(Ljava/lang/String;)Lcom/amap/api/services/weather/LocalWeatherForecast;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1520
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1521
    const-string v0, "forecasts"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1522
    const/4 v0, 0x0

    .line 1583
    :cond_0
    :goto_0
    return-object v0

    .line 1524
    :cond_1
    new-instance v0, Lcom/amap/api/services/weather/LocalWeatherForecast;

    invoke-direct {v0}, Lcom/amap/api/services/weather/LocalWeatherForecast;-><init>()V

    .line 1525
    const-string v3, "forecasts"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1526
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1529
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1530
    if-eqz v2, :cond_0

    .line 1533
    const-string v3, "city"

    invoke-static {v2, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setCity(Ljava/lang/String;)V

    .line 1535
    const-string v3, "adcode"

    invoke-static {v2, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setAdCode(Ljava/lang/String;)V

    .line 1537
    const-string v3, "province"

    invoke-static {v2, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setProvince(Ljava/lang/String;)V

    .line 1539
    const-string v3, "reporttime"

    invoke-static {v2, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setReportTime(Ljava/lang/String;)V

    .line 1541
    const-string v3, "casts"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1544
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1545
    const-string v4, "casts"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1546
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_3

    .line 1547
    :cond_2
    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setWeatherForecast(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1580
    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "WeatherForecastResult"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u534f\u8bae\u89e3\u6790\u9519\u8bef - ProtocolException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1550
    :cond_3
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 1551
    new-instance v4, Lcom/amap/api/services/weather/LocalDayWeatherForecast;

    invoke-direct {v4}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;-><init>()V

    .line 1552
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 1553
    if-eqz v5, :cond_4

    .line 1556
    const-string v6, "date"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setDate(Ljava/lang/String;)V

    .line 1558
    const-string v6, "week"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setWeek(Ljava/lang/String;)V

    .line 1560
    const-string v6, "dayweather"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setDayWeather(Ljava/lang/String;)V

    .line 1562
    const-string v6, "nightweather"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setNightWeather(Ljava/lang/String;)V

    .line 1564
    const-string v6, "daytemp"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setDayTemp(Ljava/lang/String;)V

    .line 1566
    const-string v6, "nighttemp"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setNightTemp(Ljava/lang/String;)V

    .line 1568
    const-string v6, "daywind"

    .line 1569
    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1568
    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setDayWindDirection(Ljava/lang/String;)V

    .line 1570
    const-string v6, "nightwind"

    .line 1571
    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1570
    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setNightWindDirection(Ljava/lang/String;)V

    .line 1572
    const-string v6, "daypower"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setDayWindPower(Ljava/lang/String;)V

    .line 1574
    const-string v6, "nightpower"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/weather/LocalDayWeatherForecast;->setNightWindPower(Ljava/lang/String;)V

    .line 1576
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1550
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1578
    :cond_5
    invoke-virtual {v0, v3}, Lcom/amap/api/services/weather/LocalWeatherForecast;->setWeatherForecast(Ljava/util/List;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static e(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 289
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    if-nez p0, :cond_0

    move-object v0, v1

    .line 304
    :goto_0
    return-object v0

    .line 293
    :cond_0
    const-string v0, "busstops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 294
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 295
    goto :goto_0

    .line 297
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 298
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 299
    if-eqz v3, :cond_3

    .line 302
    invoke-static {v3}, Lcom/amap/api/services/a/n;->f(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 304
    goto :goto_0
.end method

.method public static f(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-static {p0}, Lcom/amap/api/services/a/n;->g(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    .line 317
    if-nez v1, :cond_0

    move-object v0, v1

    .line 337
    :goto_0
    return-object v0

    .line 320
    :cond_0
    const-string v0, "adcode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusStationItem;->setAdCode(Ljava/lang/String;)V

    .line 321
    const-string v0, "citycode"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusStationItem;->setCityCode(Ljava/lang/String;)V

    .line 322
    const-string v0, "buslines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 323
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 324
    if-nez v2, :cond_1

    .line 325
    invoke-virtual {v1, v3}, Lcom/amap/api/services/busline/BusStationItem;->setBusLineItems(Ljava/util/List;)V

    move-object v0, v1

    .line 326
    goto :goto_0

    .line 328
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 329
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 330
    if-eqz v4, :cond_2

    .line 333
    invoke-static {v4}, Lcom/amap/api/services/a/n;->h(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;

    move-result-object v4

    .line 334
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 336
    :cond_3
    invoke-virtual {v1, v3}, Lcom/amap/api/services/busline/BusStationItem;->setBusLineItems(Ljava/util/List;)V

    move-object v0, v1

    .line 337
    goto :goto_0
.end method

.method public static f(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/core/LatLonPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1619
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1620
    const-string v0, ";"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1621
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1622
    aget-object v3, v2, v0

    invoke-static {v3}, Lcom/amap/api/services/a/n;->g(Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1621
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1624
    :cond_0
    return-object v1
.end method

.method public static g(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 349
    new-instance v0, Lcom/amap/api/services/busline/BusStationItem;

    invoke-direct {v0}, Lcom/amap/api/services/busline/BusStationItem;-><init>()V

    .line 350
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationId(Ljava/lang/String;)V

    .line 351
    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 352
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationName(Ljava/lang/String;)V

    .line 353
    return-object v0
.end method

.method public static g(Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1628
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1639
    :cond_0
    :goto_0
    return-object v0

    .line 1633
    :cond_1
    const-string v1, ",| "

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1634
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1637
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 1638
    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 1639
    new-instance v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {v0, v4, v5, v2, v3}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    goto :goto_0
.end method

.method public static h(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 365
    new-instance v0, Lcom/amap/api/services/busline/BusLineItem;

    invoke-direct {v0}, Lcom/amap/api/services/busline/BusLineItem;-><init>()V

    .line 366
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setBusLineId(Ljava/lang/String;)V

    .line 367
    const-string v1, "type"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setBusLineType(Ljava/lang/String;)V

    .line 368
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setBusLineName(Ljava/lang/String;)V

    .line 369
    const-string v1, "polyline"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setDirectionsCoordinates(Ljava/util/List;)V

    .line 370
    const-string v1, "citycode"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setCityCode(Ljava/lang/String;)V

    .line 371
    const-string v1, "start_stop"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setOriginatingStation(Ljava/lang/String;)V

    .line 372
    const-string v1, "end_stop"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusLineItem;->setTerminalStation(Ljava/lang/String;)V

    .line 373
    return-object v0
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1643
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1644
    :cond_0
    const/4 v0, 0x1

    .line 1646
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/busline/BusLineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 385
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 386
    const-string v0, "buslines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 387
    if-nez v2, :cond_0

    move-object v0, v1

    .line 401
    :goto_0
    return-object v0

    .line 390
    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 391
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 392
    if-eqz v3, :cond_1

    .line 399
    invoke-static {v3}, Lcom/amap/api/services/a/n;->j(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 401
    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1650
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1651
    :cond_0
    const/4 v0, 0x1

    .line 1653
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1658
    .line 1659
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1667
    :cond_0
    :goto_0
    return v0

    .line 1663
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1665
    :catch_0
    move-exception v1

    const-string v2, "JSONHelper"

    const-string v3, "str2int"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static j(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 413
    invoke-static {p0}, Lcom/amap/api/services/a/n;->h(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusLineItem;

    move-result-object v1

    .line 414
    if-nez v1, :cond_0

    move-object v0, v1

    .line 441
    :goto_0
    return-object v0

    .line 417
    :cond_0
    const-string v0, "start_time"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/i;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setFirstBusTime(Ljava/util/Date;)V

    .line 419
    const-string v0, "end_time"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/i;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setLastBusTime(Ljava/util/Date;)V

    .line 421
    const-string v0, "company"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setBusCompany(Ljava/lang/String;)V

    .line 422
    const-string v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setDistance(F)V

    .line 423
    const-string v0, "basic_price"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setBasicPrice(F)V

    .line 424
    const-string v0, "total_price"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setTotalPrice(F)V

    .line 425
    const-string v0, "bounds"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/busline/BusLineItem;->setBounds(Ljava/util/List;)V

    .line 426
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 427
    const-string v0, "busstops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 428
    if-nez v3, :cond_1

    .line 429
    invoke-virtual {v1, v2}, Lcom/amap/api/services/busline/BusLineItem;->setBusStations(Ljava/util/List;)V

    move-object v0, v1

    .line 430
    goto :goto_0

    .line 432
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 433
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 434
    if-eqz v4, :cond_2

    .line 437
    invoke-static {v4}, Lcom/amap/api/services/a/n;->g(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v4

    .line 438
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 440
    :cond_3
    invoke-virtual {v1, v2}, Lcom/amap/api/services/busline/BusLineItem;->setBusStations(Ljava/util/List;)V

    move-object v0, v1

    .line 441
    goto/16 :goto_0
.end method

.method public static k(Ljava/lang/String;)F
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1671
    .line 1672
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1680
    :cond_0
    :goto_0
    return v0

    .line 1676
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1678
    :catch_0
    move-exception v1

    const-string v2, "JSONHelper"

    const-string v3, "str2float"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static k(Lorg/json/JSONObject;)Lcom/amap/api/services/district/DistrictItem;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 514
    new-instance v0, Lcom/amap/api/services/district/DistrictItem;

    invoke-direct {v0}, Lcom/amap/api/services/district/DistrictItem;-><init>()V

    .line 515
    const-string v1, "citycode"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setCitycode(Ljava/lang/String;)V

    .line 516
    const-string v1, "adcode"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setAdcode(Ljava/lang/String;)V

    .line 517
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setName(Ljava/lang/String;)V

    .line 518
    const-string v1, "level"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setLevel(Ljava/lang/String;)V

    .line 519
    const-string v1, "center"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setCenter(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 521
    const-string v1, "polyline"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 522
    const-string v1, "polyline"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 524
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 525
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-virtual {v0, v1}, Lcom/amap/api/services/district/DistrictItem;->setDistrictBoundary([Ljava/lang/String;)V

    .line 530
    :cond_0
    const-string v1, "districts"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 532
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 533
    invoke-static {v1, v2, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONArray;Ljava/util/ArrayList;Lcom/amap/api/services/district/DistrictItem;)V

    .line 534
    return-object v0
.end method

.method public static l(Ljava/lang/String;)D
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 1684
    .line 1685
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1693
    :cond_0
    :goto_0
    return-wide v0

    .line 1689
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 1691
    :catch_0
    move-exception v2

    const-string v3, "JSONHelper"

    const-string v4, "str2float"

    invoke-static {v2, v3, v4}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static l(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/geocoder/GeocodeAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 573
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 574
    if-nez p0, :cond_0

    move-object v0, v1

    .line 603
    :goto_0
    return-object v0

    .line 577
    :cond_0
    const-string v0, "geocodes"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 578
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 579
    goto :goto_0

    .line 581
    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 582
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 583
    if-eqz v3, :cond_3

    .line 586
    new-instance v4, Lcom/amap/api/services/geocoder/GeocodeAddress;

    invoke-direct {v4}, Lcom/amap/api/services/geocoder/GeocodeAddress;-><init>()V

    .line 587
    const-string v5, "formatted_address"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setFormatAddress(Ljava/lang/String;)V

    .line 588
    const-string v5, "province"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setProvince(Ljava/lang/String;)V

    .line 589
    const-string v5, "city"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setCity(Ljava/lang/String;)V

    .line 590
    const-string v5, "district"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setDistrict(Ljava/lang/String;)V

    .line 591
    const-string v5, "township"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setTownship(Ljava/lang/String;)V

    .line 593
    const-string v5, "neighborhood"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 594
    const-string v6, "name"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setNeighborhood(Ljava/lang/String;)V

    .line 595
    const-string v5, "building"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 596
    const-string v6, "name"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setBuilding(Ljava/lang/String;)V

    .line 598
    const-string v5, "adcode"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setAdcode(Ljava/lang/String;)V

    .line 599
    const-string v5, "location"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 600
    const-string v5, "level"

    invoke-static {v3, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/amap/api/services/geocoder/GeocodeAddress;->setLevel(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 603
    goto/16 :goto_0
.end method

.method public static m(Ljava/lang/String;)J
    .locals 5

    .prologue
    const-wide/16 v0, 0x0

    .line 1697
    .line 1698
    if-eqz p0, :cond_0

    const-string v2, ""

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "[]"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1706
    :cond_0
    :goto_0
    return-wide v0

    .line 1702
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 1704
    :catch_0
    move-exception v2

    const-string v3, "JSONHelper"

    const-string v4, "str2long"

    invoke-static {v2, v3, v4}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static m(Lorg/json/JSONObject;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/services/help/Tip;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 615
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 616
    const-string v0, "tips"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 617
    if-nez v3, :cond_0

    move-object v0, v2

    .line 644
    :goto_0
    return-object v0

    :cond_0
    move v0, v1

    .line 620
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 621
    new-instance v4, Lcom/amap/api/services/help/Tip;

    invoke-direct {v4}, Lcom/amap/api/services/help/Tip;-><init>()V

    .line 622
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 623
    if-eqz v5, :cond_2

    .line 626
    const-string v6, "name"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setName(Ljava/lang/String;)V

    .line 627
    const-string v6, "district"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setDistrict(Ljava/lang/String;)V

    .line 628
    const-string v6, "adcode"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setAdcode(Ljava/lang/String;)V

    .line 629
    const-string v6, "id"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setID(Ljava/lang/String;)V

    .line 630
    const-string v6, "address"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setAddress(Ljava/lang/String;)V

    .line 631
    const-string v6, "location"

    invoke-static {v5, v6}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 632
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 633
    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 634
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 635
    new-instance v6, Lcom/amap/api/services/core/LatLonPoint;

    const/4 v7, 0x1

    aget-object v7, v5, v7

    .line 636
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    aget-object v5, v5, v1

    .line 637
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    invoke-direct {v6, v8, v9, v10, v11}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    .line 638
    invoke-virtual {v4, v6}, Lcom/amap/api/services/help/Tip;->setPostion(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 642
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 620
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 644
    goto :goto_0
.end method

.method public static n(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/BusinessArea;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 727
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 728
    const-string v0, "businessAreas"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 729
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 742
    :goto_0
    return-object v0

    .line 732
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 733
    new-instance v3, Lcom/amap/api/services/geocoder/BusinessArea;

    invoke-direct {v3}, Lcom/amap/api/services/geocoder/BusinessArea;-><init>()V

    .line 734
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 735
    if-eqz v4, :cond_2

    .line 738
    const-string v5, "location"

    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amap/api/services/geocoder/BusinessArea;->setCenterPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 739
    const-string v5, "name"

    invoke-static {v4, v5}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amap/api/services/geocoder/BusinessArea;->setName(Ljava/lang/String;)V

    .line 740
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 742
    goto :goto_0
.end method

.method public static n(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1710
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "[]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    .line 1711
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1717
    :cond_0
    :goto_0
    return v0

    .line 1714
    :cond_1
    const-string v1, "1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1715
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static o(Lorg/json/JSONObject;)Lcom/amap/api/services/route/BusStep;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 867
    if-nez p0, :cond_1

    .line 903
    :cond_0
    :goto_0
    return-object v0

    .line 870
    :cond_1
    new-instance v1, Lcom/amap/api/services/route/BusStep;

    invoke-direct {v1}, Lcom/amap/api/services/route/BusStep;-><init>()V

    .line 871
    const-string v2, "walking"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 872
    if-eqz v2, :cond_2

    .line 873
    invoke-static {v2}, Lcom/amap/api/services/a/n;->p(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/services/route/BusStep;->setWalk(Lcom/amap/api/services/route/RouteBusWalkItem;)V

    .line 875
    :cond_2
    const-string v2, "bus"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 876
    if-eqz v2, :cond_3

    .line 877
    invoke-static {v2}, Lcom/amap/api/services/a/n;->q(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/services/route/BusStep;->setBusLines(Ljava/util/List;)V

    .line 879
    :cond_3
    const-string v2, "entrance"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 880
    if-eqz v2, :cond_4

    .line 881
    invoke-static {v2}, Lcom/amap/api/services/a/n;->r(Lorg/json/JSONObject;)Lcom/amap/api/services/route/Doorway;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/services/route/BusStep;->setEntrance(Lcom/amap/api/services/route/Doorway;)V

    .line 883
    :cond_4
    const-string v2, "exit"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 884
    if-eqz v2, :cond_5

    .line 885
    invoke-static {v2}, Lcom/amap/api/services/a/n;->r(Lorg/json/JSONObject;)Lcom/amap/api/services/route/Doorway;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/services/route/BusStep;->setExit(Lcom/amap/api/services/route/Doorway;)V

    .line 887
    :cond_5
    const-string v2, "railway"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 888
    if-eqz v2, :cond_6

    .line 889
    invoke-static {v2}, Lcom/amap/api/services/a/n;->x(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteRailwayItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/services/route/BusStep;->setRailway(Lcom/amap/api/services/route/RouteRailwayItem;)V

    .line 891
    :cond_6
    const-string v2, "taxi"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 892
    if-eqz v2, :cond_7

    .line 893
    invoke-static {v2}, Lcom/amap/api/services/a/n;->D(Lorg/json/JSONObject;)Lcom/amap/api/services/route/TaxiItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/services/route/BusStep;->setTaxi(Lcom/amap/api/services/route/TaxiItem;)V

    .line 896
    :cond_7
    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getWalk()Lcom/amap/api/services/route/RouteBusWalkItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/services/route/RouteBusWalkItem;->getSteps()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 897
    :cond_8
    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getBusLines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_9

    .line 898
    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getRailway()Lcom/amap/api/services/route/RouteRailwayItem;

    move-result-object v2

    if-nez v2, :cond_9

    .line 899
    invoke-virtual {v1}, Lcom/amap/api/services/route/BusStep;->getTaxi()Lcom/amap/api/services/route/TaxiItem;

    move-result-object v2

    if-eqz v2, :cond_0

    :cond_9
    move-object v0, v1

    .line 903
    goto/16 :goto_0
.end method

.method public static p(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusWalkItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 910
    if-nez p0, :cond_0

    .line 911
    const/4 v0, 0x0

    .line 935
    :goto_0
    return-object v0

    .line 913
    :cond_0
    new-instance v1, Lcom/amap/api/services/route/RouteBusWalkItem;

    invoke-direct {v1}, Lcom/amap/api/services/route/RouteBusWalkItem;-><init>()V

    .line 914
    const-string v0, "origin"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->setOrigin(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 915
    const-string v0, "destination"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->setDestination(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 916
    const-string v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/route/RouteBusWalkItem;->setDistance(F)V

    .line 917
    const-string v0, "duration"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/n;->m(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/amap/api/services/route/RouteBusWalkItem;->setDuration(J)V

    .line 918
    const-string v0, "steps"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 919
    goto :goto_0

    .line 921
    :cond_1
    const-string v0, "steps"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 922
    if-nez v2, :cond_2

    move-object v0, v1

    .line 923
    goto :goto_0

    .line 925
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 926
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    .line 927
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 928
    if-eqz v4, :cond_3

    .line 931
    invoke-static {v4}, Lcom/amap/api/services/a/n;->s(Lorg/json/JSONObject;)Lcom/amap/api/services/route/WalkStep;

    move-result-object v4

    .line 932
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 934
    :cond_4
    invoke-virtual {v1, v3}, Lcom/amap/api/services/route/RouteBusWalkItem;->setSteps(Ljava/util/List;)V

    move-object v0, v1

    .line 935
    goto :goto_0
.end method

.method public static q(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RouteBusLineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 940
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 941
    if-nez p0, :cond_0

    move-object v0, v1

    .line 956
    :goto_0
    return-object v0

    .line 944
    :cond_0
    const-string v0, "buslines"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 945
    if-nez v2, :cond_1

    move-object v0, v1

    .line 946
    goto :goto_0

    .line 948
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 949
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 950
    if-eqz v3, :cond_2

    .line 953
    invoke-static {v3}, Lcom/amap/api/services/a/n;->t(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusLineItem;

    move-result-object v3

    .line 954
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 956
    goto :goto_0
.end method

.method public static r(Lorg/json/JSONObject;)Lcom/amap/api/services/route/Doorway;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 960
    new-instance v0, Lcom/amap/api/services/route/Doorway;

    invoke-direct {v0}, Lcom/amap/api/services/route/Doorway;-><init>()V

    .line 961
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/Doorway;->setName(Ljava/lang/String;)V

    .line 962
    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/Doorway;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 963
    return-object v0
.end method

.method public static s(Lorg/json/JSONObject;)Lcom/amap/api/services/route/WalkStep;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 967
    new-instance v0, Lcom/amap/api/services/route/WalkStep;

    invoke-direct {v0}, Lcom/amap/api/services/route/WalkStep;-><init>()V

    .line 968
    const-string v1, "instruction"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setInstruction(Ljava/lang/String;)V

    .line 969
    const-string v1, "orientation"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setOrientation(Ljava/lang/String;)V

    .line 970
    const-string v1, "road"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setRoad(Ljava/lang/String;)V

    .line 971
    const-string v1, "distance"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setDistance(F)V

    .line 972
    const-string v1, "duration"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setDuration(F)V

    .line 973
    const-string v1, "polyline"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setPolyline(Ljava/util/List;)V

    .line 974
    const-string v1, "action"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setAction(Ljava/lang/String;)V

    .line 975
    const-string v1, "assistant_action"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkStep;->setAssistantAction(Ljava/lang/String;)V

    .line 976
    return-object v0
.end method

.method public static t(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteBusLineItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 981
    if-nez p0, :cond_0

    .line 982
    const/4 v0, 0x0

    .line 1015
    :goto_0
    return-object v0

    .line 984
    :cond_0
    new-instance v0, Lcom/amap/api/services/route/RouteBusLineItem;

    invoke-direct {v0}, Lcom/amap/api/services/route/RouteBusLineItem;-><init>()V

    .line 985
    const-string v1, "departure_stop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 986
    invoke-static {v1}, Lcom/amap/api/services/a/n;->v(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    .line 987
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setDepartureBusStation(Lcom/amap/api/services/busline/BusStationItem;)V

    .line 989
    const-string v1, "arrival_stop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 990
    invoke-static {v1}, Lcom/amap/api/services/a/n;->v(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v1

    .line 991
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setArrivalBusStation(Lcom/amap/api/services/busline/BusStationItem;)V

    .line 993
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setBusLineName(Ljava/lang/String;)V

    .line 994
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setBusLineId(Ljava/lang/String;)V

    .line 995
    const-string v1, "type"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setBusLineType(Ljava/lang/String;)V

    .line 997
    const-string v1, "distance"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 998
    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    .line 999
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setDistance(F)V

    .line 1001
    const-string v1, "duration"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1002
    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    .line 1003
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setDuration(F)V

    .line 1005
    const-string v1, "polyline"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setPolyline(Ljava/util/List;)V

    .line 1006
    const-string v1, "start_time"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setFirstBusTime(Ljava/util/Date;)V

    .line 1008
    const-string v1, "end_time"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/i;->c(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setLastBusTime(Ljava/util/Date;)V

    .line 1010
    const-string v1, "via_num"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1011
    invoke-static {v1}, Lcom/amap/api/services/a/n;->j(Ljava/lang/String;)I

    move-result v1

    .line 1012
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setPassStationNum(I)V

    .line 1013
    invoke-static {p0}, Lcom/amap/api/services/a/n;->u(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 1014
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteBusLineItem;->setPassStations(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method public static u(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/busline/BusStationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1020
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1036
    :goto_0
    return-object v0

    .line 1024
    :cond_0
    const-string v0, "via_stops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1025
    if-nez v2, :cond_1

    move-object v0, v1

    .line 1026
    goto :goto_0

    .line 1028
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1029
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1030
    if-eqz v3, :cond_2

    .line 1033
    invoke-static {v3}, Lcom/amap/api/services/a/n;->v(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;

    move-result-object v3

    .line 1034
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1028
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1036
    goto :goto_0
.end method

.method public static v(Lorg/json/JSONObject;)Lcom/amap/api/services/busline/BusStationItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1041
    new-instance v0, Lcom/amap/api/services/busline/BusStationItem;

    invoke-direct {v0}, Lcom/amap/api/services/busline/BusStationItem;-><init>()V

    .line 1042
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationName(Ljava/lang/String;)V

    .line 1043
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setBusStationId(Ljava/lang/String;)V

    .line 1044
    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/busline/BusStationItem;->setLatLonPoint(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1045
    return-object v0
.end method

.method private static w(Lorg/json/JSONObject;)Lcom/amap/api/services/poisearch/SubPoiItem;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 258
    const-string v0, "id"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 259
    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    .line 260
    const-string v2, "name"

    invoke-static {p0, v2}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 261
    const-string v3, "address"

    invoke-static {p0, v3}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    new-instance v4, Lcom/amap/api/services/poisearch/SubPoiItem;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/amap/api/services/poisearch/SubPoiItem;-><init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v0, "sname"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/SubPoiItem;->setSubName(Ljava/lang/String;)V

    .line 264
    const-string v0, "subtype"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/SubPoiItem;->setSubTypeDes(Ljava/lang/String;)V

    .line 265
    const-string v0, "distance"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const-string v0, "distance"

    invoke-static {p0, v0}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v0}, Lcom/amap/api/services/a/n;->i(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 269
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {v4, v0}, Lcom/amap/api/services/poisearch/SubPoiItem;->setDistance(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 277
    :cond_0
    :goto_0
    return-object v4

    .line 271
    :catch_0
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseSubPoiItem"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :catch_1
    move-exception v0

    const-string v1, "JSONHelper"

    const-string v2, "parseSubPoiItem"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static x(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RouteRailwayItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1057
    if-nez p0, :cond_1

    .line 1086
    :cond_0
    :goto_0
    return-object v0

    .line 1060
    :cond_1
    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1063
    new-instance v0, Lcom/amap/api/services/route/RouteRailwayItem;

    invoke-direct {v0}, Lcom/amap/api/services/route/RouteRailwayItem;-><init>()V

    .line 1064
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setID(Ljava/lang/String;)V

    .line 1065
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setName(Ljava/lang/String;)V

    .line 1066
    const-string v1, "time"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setTime(Ljava/lang/String;)V

    .line 1067
    const-string v1, "trip"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setTrip(Ljava/lang/String;)V

    .line 1068
    const-string v1, "distance"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setDistance(F)V

    .line 1069
    const-string v1, "type"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setType(Ljava/lang/String;)V

    .line 1070
    const-string v1, "departure_stop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1071
    invoke-static {v1}, Lcom/amap/api/services/a/n;->y(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RailwayStationItem;

    move-result-object v1

    .line 1072
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setDeparturestop(Lcom/amap/api/services/route/RailwayStationItem;)V

    .line 1073
    const-string v1, "arrival_stop"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1074
    invoke-static {v1}, Lcom/amap/api/services/a/n;->y(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RailwayStationItem;

    move-result-object v1

    .line 1075
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setArrivalstop(Lcom/amap/api/services/route/RailwayStationItem;)V

    .line 1077
    invoke-static {p0}, Lcom/amap/api/services/a/n;->z(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 1078
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setViastops(Ljava/util/List;)V

    .line 1080
    invoke-static {p0}, Lcom/amap/api/services/a/n;->A(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 1081
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setAlters(Ljava/util/List;)V

    .line 1083
    invoke-static {p0}, Lcom/amap/api/services/a/n;->B(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    .line 1084
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteRailwayItem;->setSpaces(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static y(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RailwayStationItem;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1096
    new-instance v0, Lcom/amap/api/services/route/RailwayStationItem;

    invoke-direct {v0}, Lcom/amap/api/services/route/RailwayStationItem;-><init>()V

    .line 1097
    const-string v1, "id"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setID(Ljava/lang/String;)V

    .line 1098
    const-string v1, "name"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setName(Ljava/lang/String;)V

    .line 1099
    const-string v1, "location"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setLocation(Lcom/amap/api/services/core/LatLonPoint;)V

    .line 1100
    const-string v1, "adcode"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setAdcode(Ljava/lang/String;)V

    .line 1101
    const-string v1, "time"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setTime(Ljava/lang/String;)V

    .line 1102
    const-string v1, "start"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->n(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setisStart(Z)V

    .line 1103
    const-string v1, "end"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->n(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setisEnd(Z)V

    .line 1104
    const-string v1, "wait"

    invoke-static {p0, v1}, Lcom/amap/api/services/a/n;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/a/n;->k(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RailwayStationItem;->setWait(F)V

    .line 1105
    return-object v0
.end method

.method private static z(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/route/RailwayStationItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1117
    if-nez p0, :cond_0

    move-object v0, v1

    .line 1132
    :goto_0
    return-object v0

    .line 1120
    :cond_0
    const-string v0, "via_stops"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1121
    if-nez v2, :cond_1

    move-object v0, v1

    .line 1122
    goto :goto_0

    .line 1124
    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1125
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1126
    if-eqz v3, :cond_2

    .line 1129
    invoke-static {v3}, Lcom/amap/api/services/a/n;->y(Lorg/json/JSONObject;)Lcom/amap/api/services/route/RailwayStationItem;

    move-result-object v3

    .line 1130
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1124
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1132
    goto :goto_0
.end method
