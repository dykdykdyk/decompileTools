.class public Lcom/amap/api/maps2d/AMapUtils;
.super Ljava/lang/Object;
.source "AMapUtils.java"


# static fields
.field public static final BUS_COMFORT:I = 0x4

.field public static final BUS_MONEY_LITTLE:I = 0x1

.field public static final BUS_NO_SUBWAY:I = 0x5

.field public static final BUS_TIME_FIRST:I = 0x0

.field public static final BUS_TRANSFER_LITTLE:I = 0x2

.field public static final BUS_WALK_LITTLE:I = 0x3

.field public static final DRIVING_AVOID_CONGESTION:I = 0x4

.field public static final DRIVING_DEFAULT:I = 0x0

.field public static final DRIVING_NO_HIGHWAY:I = 0x3

.field public static final DRIVING_NO_HIGHWAY_AVOID_CONGESTION:I = 0x6

.field public static final DRIVING_NO_HIGHWAY_AVOID_SHORT_MONEY:I = 0x5

.field public static final DRIVING_NO_HIGHWAY_SAVE_MONEY_AVOID_CONGESTION:I = 0x8

.field public static final DRIVING_SAVE_MONEY:I = 0x1

.field public static final DRIVING_SAVE_MONEY_AVOID_CONGESTION:I = 0x7

.field public static final DRIVING_SHORT_DISTANCE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    return-void
.end method

.method private static a(Lcom/amap/api/maps2d/model/NaviPara;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 537
    const-string v0, "androidamap://navi?sourceApplication=%s&lat=%f&lon=%f&dev=0&style=%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/amap/api/mapcore2d/cm;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 538
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/NaviPara;->getTargetPoint()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v3

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 539
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/NaviPara;->getTargetPoint()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v3

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/NaviPara;->getNaviStyle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 537
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/amap/api/maps2d/model/PoiPara;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 407
    const-string v0, "androidamap://arroundpoi?sourceApplication=%s&keywords=%s&dev=0"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 408
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cm;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PoiPara;->getKeywords()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 407
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PoiPara;->getCenter()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PoiPara;->getCenter()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    iget-wide v2, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&lon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PoiPara;->getCenter()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    iget-wide v2, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    :cond_0
    return-object v0
.end method

.method private static a(Lcom/amap/api/maps2d/model/RoutePara;Landroid/content/Context;I)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 439
    const-string v0, "androidamap://route?sourceApplication=%s&slat=%f&slon=%f&sname=%s&dlat=%f&dlon=%f&dname=%s&dev=0&t=%d"

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 440
    invoke-static {p1}, Lcom/amap/api/mapcore2d/cm;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 441
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/RoutePara;->getStartPoint()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/RoutePara;->getStartPoint()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x3

    .line 442
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/RoutePara;->getStartName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/RoutePara;->getEndPoint()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v3

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    .line 443
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/RoutePara;->getEndPoint()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v3

    iget-wide v4, v3, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/RoutePara;->getEndName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 439
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 445
    if-ne p2, v6, :cond_1

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/RoutePara;->getTransitRouteStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    :cond_0
    :goto_0
    return-object v0

    .line 447
    :cond_1
    if-ne p2, v7, :cond_0

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&m="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/RoutePara;->getDrivingRouteStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 554
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.autonavi.minimap"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 561
    if-eqz v1, :cond_0

    .line 562
    const/4 v0, 0x1

    .line 564
    :cond_0
    :goto_0
    return v0

    .line 558
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static a(Lcom/amap/api/maps2d/model/RoutePara;)Z
    .locals 1

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/RoutePara;->getStartPoint()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/RoutePara;->getEndPoint()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/RoutePara;->getStartName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/RoutePara;->getStartName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/RoutePara;->getEndName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/RoutePara;->getEndName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 492
    :cond_0
    const/4 v0, 0x0

    .line 495
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static b(Lcom/amap/api/maps2d/model/RoutePara;Landroid/content/Context;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .prologue
    .line 457
    invoke-static {p1}, Lcom/amap/api/maps2d/AMapUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    invoke-static {p0}, Lcom/amap/api/maps2d/AMapUtils;->a(Lcom/amap/api/maps2d/model/RoutePara;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 464
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    invoke-static {p0, p1, p2}, Lcom/amap/api/maps2d/AMapUtils;->a(Lcom/amap/api/maps2d/model/RoutePara;Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 467
    const-string v1, "com.autonavi.minimap"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    new-instance v1, Lcom/amap/api/maps2d/AMapUtils$a;

    const-string v2, "oan"

    invoke-direct {v1, v2, p1}, Lcom/amap/api/maps2d/AMapUtils$a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 469
    invoke-virtual {v1}, Lcom/amap/api/maps2d/AMapUtils$a;->start()V

    .line 470
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    return-void

    .line 473
    :catch_0
    move-exception v0

    new-instance v0, Lcom/amap/api/maps2d/AMapException;

    const-string v1, "\u79fb\u52a8\u8bbe\u5907\u4e0a\u672a\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u6216\u9ad8\u5fb7\u5730\u56fe\u7248\u672c\u8f83\u65e7"

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    new-instance v0, Lcom/amap/api/maps2d/AMapException;

    const-string v1, "\u975e\u6cd5\u5bfc\u822a\u53c2\u6570"

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_1
    new-instance v0, Lcom/amap/api/maps2d/AMapException;

    const-string v1, "\u79fb\u52a8\u8bbe\u5907\u4e0a\u672a\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u6216\u9ad8\u5fb7\u5730\u56fe\u7248\u672c\u8f83\u65e7"

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static calculateArea(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)F
    .locals 8

    .prologue
    const-wide v6, 0x4066800000000000L    # 180.0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    .line 255
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 257
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amap/api/maps2d/AMapException;

    const-string v1, "\u975e\u6cd5\u5750\u6807\u503c"

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/maps2d/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMapException;->printStackTrace()V

    .line 261
    const/4 v0, 0x0

    .line 269
    :goto_0
    return v0

    .line 264
    :cond_1
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v0, v4

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    mul-double/2addr v2, v4

    div-double/2addr v2, v6

    .line 265
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    sub-double v2, v0, v2

    .line 266
    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-wide v4, p0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v0, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v4

    .line 267
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_2

    .line 268
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v4

    .line 269
    :cond_2
    const-wide v4, 0x42ed0f0dce469631L    # 2.5560394669790553E14

    mul-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    goto :goto_0
.end method

.method public static calculateLineDistance(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)F
    .locals 21

    .prologue
    .line 111
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 113
    :cond_0
    :try_start_0
    new-instance v2, Lcom/amap/api/maps2d/AMapException;

    const-string v3, "\u975e\u6cd5\u5750\u6807\u503c"

    invoke-direct {v2, v3}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/amap/api/maps2d/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lcom/amap/api/maps2d/AMapException;->printStackTrace()V

    .line 117
    const/4 v2, 0x0

    .line 149
    :goto_0
    return v2

    .line 121
    :cond_1
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 122
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 123
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 124
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 125
    const-wide v10, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v2, v10

    .line 126
    const-wide v10, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v4, v10

    .line 127
    const-wide v10, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v6, v10

    .line 128
    const-wide v10, 0x3f91df46a2529d37L    # 0.01745329251994329

    mul-double/2addr v8, v10

    .line 129
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    .line 130
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    .line 131
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 132
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    .line 133
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 134
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 135
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    .line 136
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 137
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [D

    move-object/from16 v18, v0

    .line 138
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [D

    move-object/from16 v19, v0

    .line 139
    const/16 v20, 0x0

    mul-double/2addr v2, v4

    aput-wide v2, v18, v20

    .line 140
    const/4 v2, 0x1

    mul-double/2addr v4, v10

    aput-wide v4, v18, v2

    .line 141
    const/4 v2, 0x2

    aput-wide v12, v18, v2

    .line 142
    const/4 v2, 0x0

    mul-double v4, v8, v6

    aput-wide v4, v19, v2

    .line 143
    const/4 v2, 0x1

    mul-double v4, v8, v14

    aput-wide v4, v19, v2

    .line 144
    const/4 v2, 0x2

    aput-wide v16, v19, v2

    .line 145
    const/4 v2, 0x0

    aget-wide v2, v18, v2

    const/4 v4, 0x0

    aget-wide v4, v19, v4

    sub-double/2addr v2, v4

    const/4 v4, 0x0

    aget-wide v4, v18, v4

    const/4 v6, 0x0

    aget-wide v6, v19, v6

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    const/4 v4, 0x1

    aget-wide v4, v18, v4

    const/4 v6, 0x1

    aget-wide v6, v19, v6

    sub-double/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v18, v6

    const/4 v8, 0x1

    aget-wide v8, v19, v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const/4 v4, 0x2

    aget-wide v4, v18, v4

    const/4 v6, 0x2

    aget-wide v6, v19, v6

    sub-double/2addr v4, v6

    const/4 v6, 0x2

    aget-wide v6, v18, v6

    const/4 v8, 0x2

    aget-wide v8, v19, v8

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 149
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    const-wide v4, 0x41684dae328e2ad1L    # 1.27420015798544E7

    mul-double/2addr v2, v4

    double-to-float v2, v2

    goto/16 :goto_0
.end method

.method public static getLatestAMapApp(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 280
    :try_start_0
    const-string v0, "http://wap.amap.com/"

    .line 281
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    const/high16 v2, 0x10800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 284
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 286
    new-instance v0, Lcom/amap/api/maps2d/AMapUtils$a;

    const-string v2, "glaa"

    invoke-direct {v0, v2, p0}, Lcom/amap/api/maps2d/AMapUtils$a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 287
    invoke-virtual {v0}, Lcom/amap/api/maps2d/AMapUtils$a;->start()V

    .line 288
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    :goto_0
    return-void

    .line 290
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static openAMapDrivingRoute(Lcom/amap/api/maps2d/model/RoutePara;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .prologue
    .line 382
    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/amap/api/maps2d/AMapUtils;->b(Lcom/amap/api/maps2d/model/RoutePara;Landroid/content/Context;I)V

    .line 383
    return-void
.end method

.method public static openAMapNavi(Lcom/amap/api/maps2d/model/NaviPara;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-static {p1}, Lcom/amap/api/maps2d/AMapUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/NaviPara;->getTargetPoint()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 309
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 310
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 312
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    invoke-static {p0, p1}, Lcom/amap/api/maps2d/AMapUtils;->a(Lcom/amap/api/maps2d/model/NaviPara;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 315
    const-string v1, "com.autonavi.minimap"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    new-instance v1, Lcom/amap/api/maps2d/AMapUtils$a;

    const-string v2, "oan"

    invoke-direct {v1, v2, p1}, Lcom/amap/api/maps2d/AMapUtils$a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 317
    invoke-virtual {v1}, Lcom/amap/api/maps2d/AMapUtils$a;->start()V

    .line 318
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    return-void

    .line 321
    :catch_0
    move-exception v0

    new-instance v0, Lcom/amap/api/maps2d/AMapException;

    const-string v1, "\u79fb\u52a8\u8bbe\u5907\u4e0a\u672a\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u6216\u9ad8\u5fb7\u5730\u56fe\u7248\u672c\u8f83\u65e7"

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_0
    new-instance v0, Lcom/amap/api/maps2d/AMapException;

    const-string v1, "\u975e\u6cd5\u5bfc\u822a\u53c2\u6570"

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 329
    :cond_1
    new-instance v0, Lcom/amap/api/maps2d/AMapException;

    const-string v1, "\u79fb\u52a8\u8bbe\u5907\u4e0a\u672a\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u6216\u9ad8\u5fb7\u5730\u56fe\u7248\u672c\u8f83\u65e7"

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static openAMapPoiNearbySearch(Lcom/amap/api/maps2d/model/PoiPara;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .prologue
    .line 343
    invoke-static {p1}, Lcom/amap/api/maps2d/AMapUtils;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PoiPara;->getKeywords()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/PoiPara;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 348
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 349
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 351
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 352
    invoke-static {p0, p1}, Lcom/amap/api/maps2d/AMapUtils;->a(Lcom/amap/api/maps2d/model/PoiPara;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 354
    const-string v1, "com.autonavi.minimap"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 355
    new-instance v1, Lcom/amap/api/maps2d/AMapUtils$a;

    const-string v2, "oan"

    invoke-direct {v1, v2, p1}, Lcom/amap/api/maps2d/AMapUtils$a;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 356
    invoke-virtual {v1}, Lcom/amap/api/maps2d/AMapUtils$a;->start()V

    .line 357
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    return-void

    .line 360
    :catch_0
    move-exception v0

    new-instance v0, Lcom/amap/api/maps2d/AMapException;

    const-string v1, "\u79fb\u52a8\u8bbe\u5907\u4e0a\u672a\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u6216\u9ad8\u5fb7\u5730\u56fe\u7248\u672c\u8f83\u65e7"

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    new-instance v0, Lcom/amap/api/maps2d/AMapException;

    const-string v1, "\u975e\u6cd5\u5bfc\u822a\u53c2\u6570"

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_1
    new-instance v0, Lcom/amap/api/maps2d/AMapException;

    const-string v1, "\u79fb\u52a8\u8bbe\u5907\u4e0a\u672a\u5b89\u88c5\u9ad8\u5fb7\u5730\u56fe\u6216\u9ad8\u5fb7\u5730\u56fe\u7248\u672c\u8f83\u65e7"

    invoke-direct {v0, v1}, Lcom/amap/api/maps2d/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static openAMapTransitRoute(Lcom/amap/api/maps2d/model/RoutePara;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .prologue
    .line 395
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/amap/api/maps2d/AMapUtils;->b(Lcom/amap/api/maps2d/model/RoutePara;Landroid/content/Context;I)V

    .line 396
    return-void
.end method

.method public static openAMapWalkingRoute(Lcom/amap/api/maps2d/model/RoutePara;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps2d/AMapException;
        }
    .end annotation

    .prologue
    .line 426
    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/amap/api/maps2d/AMapUtils;->b(Lcom/amap/api/maps2d/model/RoutePara;Landroid/content/Context;I)V

    .line 427
    return-void
.end method
