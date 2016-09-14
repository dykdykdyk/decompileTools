.class public final Lcom/nut/blehunter/b/b;
.super Ljava/lang/Object;
.source "MixReGeocodeAddress.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;DDLcom/nut/blehunter/b/e;)V
    .locals 12

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x1

    const/4 v9, -0x1

    const/4 v3, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    invoke-static {p1}, Lcom/nut/blehunter/d/h;->b(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1039
    move-object/from16 v0, p6

    invoke-interface {v0, v10, v9}, Lcom/nut/blehunter/b/e;->a(Lcom/nut/blehunter/b/a;I)V

    .line 1087
    :goto_0
    return-void

    .line 2033
    :cond_0
    const-wide v4, 0x4052004189374bc7L    # 72.004

    cmpl-double v4, p4, v4

    if-lez v4, :cond_1

    const-wide v4, 0x40613ab5dcc63f14L    # 137.8347

    cmpg-double v4, p4, v4

    if-gez v4, :cond_1

    const-wide v4, 0x3fea89a027525461L    # 0.8293

    cmpl-double v4, p2, v4

    if-lez v4, :cond_1

    const-wide v4, 0x404be9de69ad42c4L    # 55.8271

    cmpg-double v4, p2, v4

    if-gez v4, :cond_1

    invoke-static/range {p1 .. p5}, Lcom/bingerz/android/pathcontainspoint/a;->a(Landroid/content/Context;DD)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1043
    :goto_1
    if-eqz v2, :cond_2

    .line 1044
    new-instance v2, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    new-instance v3, Lcom/amap/api/services/core/LatLonPoint;

    move-wide/from16 v0, p4

    invoke-direct {v3, p2, p3, v0, v1}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    const/high16 v4, 0x43480000    # 200.0f

    const-string v5, "gps"

    invoke-direct {v2, v3, v4, v5}, Lcom/amap/api/services/geocoder/RegeocodeQuery;-><init>(Lcom/amap/api/services/core/LatLonPoint;FLjava/lang/String;)V

    .line 1045
    new-instance v10, Lcom/amap/api/services/geocoder/GeocodeSearch;

    invoke-direct {v10, p1}, Lcom/amap/api/services/geocoder/GeocodeSearch;-><init>(Landroid/content/Context;)V

    .line 1046
    invoke-virtual {v10, v2}, Lcom/amap/api/services/geocoder/GeocodeSearch;->getFromLocationAsyn(Lcom/amap/api/services/geocoder/RegeocodeQuery;)V

    .line 1047
    new-instance v2, Lcom/nut/blehunter/b/c;

    move-object v3, p0

    move-object/from16 v4, p6

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/nut/blehunter/b/c;-><init>(Lcom/nut/blehunter/b/b;Lcom/nut/blehunter/b/e;Landroid/content/Context;DD)V

    invoke-virtual {v10, v2}, Lcom/amap/api/services/geocoder/GeocodeSearch;->setOnGeocodeSearchListener(Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 2033
    goto :goto_1

    .line 1076
    :cond_2
    :try_start_0
    new-instance v3, Landroid/location/Geocoder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v3, p1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    const/4 v8, 0x1

    move-wide v4, p2

    move-wide/from16 v6, p4

    invoke-virtual/range {v3 .. v8}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v2

    .line 1077
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Address;

    .line 1078
    new-instance v3, Lcom/nut/blehunter/b/a;

    move-wide v4, p2

    move-wide/from16 v6, p4

    invoke-direct/range {v3 .. v8}, Lcom/nut/blehunter/b/a;-><init>(DDLandroid/location/Address;)V

    .line 1080
    const/4 v2, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v3, v2}, Lcom/nut/blehunter/b/e;->a(Lcom/nut/blehunter/b/a;I)V

    .line 1081
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reGeocodeAddress result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, La/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1084
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1086
    move-object/from16 v0, p6

    invoke-interface {v0, v10, v9}, Lcom/nut/blehunter/b/e;->a(Lcom/nut/blehunter/b/a;I)V

    goto/16 :goto_0
.end method
