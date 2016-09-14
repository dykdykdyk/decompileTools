.class public Lcom/amap/api/services/a/ap;
.super Ljava/lang/Object;
.source "ShareSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IShareSearch;


# static fields
.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private g:Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "http://wb.amap.com/?r=%f,%f,%s,%f,%f,%s,%d,%d,%d,%s,%s,%s&sourceapplication=openapi/0"

    sput-object v0, Lcom/amap/api/services/a/ap;->b:Ljava/lang/String;

    .line 45
    const-string v0, "http://wb.amap.com/?q=%f,%f,%s&sourceapplication=openapi/0"

    sput-object v0, Lcom/amap/api/services/a/ap;->c:Ljava/lang/String;

    .line 51
    const-string v0, "http://wb.amap.com/?n=%f,%f,%f,%f,%d&sourceapplication=openapi/0"

    sput-object v0, Lcom/amap/api/services/a/ap;->d:Ljava/lang/String;

    .line 52
    const-string v0, "http://wb.amap.com/?p=%s,%f,%f,%s,%s&sourceapplication=openapi/0"

    sput-object v0, Lcom/amap/api/services/a/ap;->e:Ljava/lang/String;

    .line 54
    const-string v0, ""

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/services/a/ap;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Lcom/amap/api/services/a/ap;->a:Landroid/content/Context;

    .line 191
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/ap;)Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/amap/api/services/a/ap;->g:Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;

    return-object v0
.end method


# virtual methods
.method public searchBusRouteShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 488
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;->getBusMode()I

    move-result v0

    .line 489
    invoke-virtual {p1}, Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;->getShareFromAndTo()Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    move-result-object v1

    .line 490
    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    if-nez v2, :cond_1

    .line 491
    :cond_0
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :catch_0
    move-exception v0

    .line 506
    const-string v1, "ShareSearch"

    const-string v2, "searchBusRouteShareUrl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    throw v0

    .line 493
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    .line 494
    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    .line 495
    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getFromName()Ljava/lang/String;

    move-result-object v4

    .line 496
    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getToName()Ljava/lang/String;

    move-result-object v1

    .line 497
    sget-object v5, Lcom/amap/api/services/a/ap;->b:Ljava/lang/String;

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 498
    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x2

    aput-object v4, v6, v2

    const/4 v2, 0x3

    invoke-virtual {v3}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x4

    .line 499
    invoke-virtual {v3}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x5

    aput-object v1, v6, v2

    const/4 v1, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v0, 0x7

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x9

    sget-object v1, Lcom/amap/api/services/a/ap;->f:Ljava/lang/String;

    aput-object v1, v6, v0

    const/16 v0, 0xa

    sget-object v1, Lcom/amap/api/services/a/ap;->f:Ljava/lang/String;

    aput-object v1, v6, v0

    const/16 v0, 0xb

    sget-object v1, Lcom/amap/api/services/a/ap;->f:Ljava/lang/String;

    aput-object v1, v6, v0

    .line 497
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 501
    new-instance v1, Lcom/amap/api/services/a/ab;

    iget-object v2, p0, Lcom/amap/api/services/a/ap;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/amap/api/services/a/ab;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 503
    invoke-virtual {v1}, Lcom/amap/api/services/a/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    .line 504
    return-object v0
.end method

.method public searchBusRouteShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;)V
    .locals 1

    .prologue
    .line 241
    new-instance v0, Lcom/amap/api/services/a/ap$2;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/ap$2;-><init>(Lcom/amap/api/services/a/ap;Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;)V

    .line 263
    invoke-virtual {v0}, Lcom/amap/api/services/a/ap$2;->start()V

    .line 264
    return-void
.end method

.method public searchDrivingRouteShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 520
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;->getDrivingMode()I

    move-result v0

    .line 521
    invoke-virtual {p1}, Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;->getShareFromAndTo()Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    move-result-object v1

    .line 522
    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    if-nez v2, :cond_1

    .line 523
    :cond_0
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :catch_0
    move-exception v0

    .line 538
    const-string v1, "ShareSearch"

    const-string v2, "searchDrivingRouteShareUrl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    throw v0

    .line 525
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    .line 526
    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    .line 527
    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getFromName()Ljava/lang/String;

    move-result-object v4

    .line 528
    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getToName()Ljava/lang/String;

    move-result-object v1

    .line 529
    sget-object v5, Lcom/amap/api/services/a/ap;->b:Ljava/lang/String;

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 530
    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x2

    aput-object v4, v6, v2

    const/4 v2, 0x3

    invoke-virtual {v3}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x4

    .line 531
    invoke-virtual {v3}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x5

    aput-object v1, v6, v2

    const/4 v1, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x9

    sget-object v1, Lcom/amap/api/services/a/ap;->f:Ljava/lang/String;

    aput-object v1, v6, v0

    const/16 v0, 0xa

    sget-object v1, Lcom/amap/api/services/a/ap;->f:Ljava/lang/String;

    aput-object v1, v6, v0

    const/16 v0, 0xb

    sget-object v1, Lcom/amap/api/services/a/ap;->f:Ljava/lang/String;

    aput-object v1, v6, v0

    .line 529
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 533
    new-instance v1, Lcom/amap/api/services/a/ab;

    iget-object v2, p0, Lcom/amap/api/services/a/ap;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/amap/api/services/a/ab;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 535
    invoke-virtual {v1}, Lcom/amap/api/services/a/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    .line 536
    return-object v0
.end method

.method public searchDrivingRouteShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;)V
    .locals 1

    .prologue
    .line 307
    new-instance v0, Lcom/amap/api/services/a/ap$4;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/ap$4;-><init>(Lcom/amap/api/services/a/ap;Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;)V

    .line 329
    invoke-virtual {v0}, Lcom/amap/api/services/a/ap$4;->start()V

    .line 330
    return-void
.end method

.method public searchLocationShareUrl(Lcom/amap/api/services/core/LatLonSharePoint;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 465
    :try_start_0
    sget-object v0, Lcom/amap/api/services/a/ap;->c:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 466
    invoke-virtual {p1}, Lcom/amap/api/services/core/LatLonSharePoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/amap/api/services/core/LatLonSharePoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 467
    invoke-virtual {p1}, Lcom/amap/api/services/core/LatLonSharePoint;->getSharePointName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 465
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 469
    new-instance v1, Lcom/amap/api/services/a/ab;

    iget-object v2, p0, Lcom/amap/api/services/a/ap;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/amap/api/services/a/ab;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 471
    invoke-virtual {v1}, Lcom/amap/api/services/a/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    return-object v0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    const-string v1, "ShareSearch"

    const-string v2, "searchLocationShareUrl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    throw v0
.end method

.method public searchLocationShareUrlAsyn(Lcom/amap/api/services/core/LatLonSharePoint;)V
    .locals 1

    .prologue
    .line 371
    new-instance v0, Lcom/amap/api/services/a/ap$6;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/ap$6;-><init>(Lcom/amap/api/services/a/ap;Lcom/amap/api/services/core/LatLonSharePoint;)V

    .line 393
    invoke-virtual {v0}, Lcom/amap/api/services/a/ap$6;->start()V

    .line 394
    return-void
.end method

.method public searchNaviShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 430
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;->getFromAndTo()Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    move-result-object v0

    .line 431
    invoke-virtual {v0}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-nez v1, :cond_0

    .line 432
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    const-string v1, "ShareSearch"

    const-string v2, "searchNaviShareUrl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    throw v0

    .line 434
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    .line 435
    invoke-virtual {v0}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    .line 436
    invoke-virtual {p1}, Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;->getNaviMode()I

    move-result v3

    .line 438
    invoke-virtual {v0}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    if-nez v0, :cond_1

    .line 439
    sget-object v0, Lcom/amap/api/services/a/ap;->d:Ljava/lang/String;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-object v5, v1, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v1, v4

    const/4 v4, 0x2

    .line 440
    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 439
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 446
    :goto_0
    new-instance v1, Lcom/amap/api/services/a/ab;

    iget-object v2, p0, Lcom/amap/api/services/a/ap;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/amap/api/services/a/ab;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v1}, Lcom/amap/api/services/a/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 449
    return-object v0

    .line 442
    :cond_1
    sget-object v0, Lcom/amap/api/services/a/ap;->d:Ljava/lang/String;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 443
    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x3

    .line 444
    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v1, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 442
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public searchNaviShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;)V
    .locals 1

    .prologue
    .line 339
    new-instance v0, Lcom/amap/api/services/a/ap$5;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/ap$5;-><init>(Lcom/amap/api/services/a/ap;Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;)V

    .line 361
    invoke-virtual {v0}, Lcom/amap/api/services/a/ap$5;->start()V

    .line 362
    return-void
.end method

.method public searchPoiShareUrl(Lcom/amap/api/services/core/PoiItem;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 404
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    if-nez v0, :cond_1

    .line 405
    :cond_0
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    const-string v1, "ShareSearch"

    const-string v2, "searchPoiShareUrl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    throw v0

    .line 407
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/core/PoiItem;->getLatLonPoint()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v0

    .line 408
    sget-object v1, Lcom/amap/api/services/a/ap;->e:Ljava/lang/String;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/amap/api/services/core/PoiItem;->getPoiId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 409
    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x3

    .line 410
    invoke-virtual {p1}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p1}, Lcom/amap/api/services/core/PoiItem;->getSnippet()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 408
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 411
    new-instance v1, Lcom/amap/api/services/a/ab;

    iget-object v2, p0, Lcom/amap/api/services/a/ap;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/amap/api/services/a/ab;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 413
    invoke-virtual {v1}, Lcom/amap/api/services/a/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    .line 414
    return-object v0
.end method

.method public searchPoiShareUrlAsyn(Lcom/amap/api/services/core/PoiItem;)V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/amap/api/services/a/ap$1;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/ap$1;-><init>(Lcom/amap/api/services/a/ap;Lcom/amap/api/services/core/PoiItem;)V

    .line 230
    invoke-virtual {v0}, Lcom/amap/api/services/a/ap$1;->start()V

    .line 231
    return-void
.end method

.method public searchWalkRouteShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 552
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;->getWalkMode()I

    move-result v0

    .line 553
    invoke-virtual {p1}, Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;->getShareFromAndTo()Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;

    move-result-object v1

    .line 554
    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    if-nez v2, :cond_1

    .line 555
    :cond_0
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 569
    :catch_0
    move-exception v0

    .line 570
    const-string v1, "ShareSearch"

    const-string v2, "searchWalkRouteShareUrl"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    throw v0

    .line 557
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v2

    .line 558
    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v3

    .line 559
    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getFromName()Ljava/lang/String;

    move-result-object v4

    .line 560
    invoke-virtual {v1}, Lcom/amap/api/services/share/ShareSearch$ShareFromAndTo;->getToName()Ljava/lang/String;

    move-result-object v1

    .line 561
    sget-object v5, Lcom/amap/api/services/a/ap;->b:Ljava/lang/String;

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    .line 562
    invoke-virtual {v2}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v6, v7

    const/4 v2, 0x2

    aput-object v4, v6, v2

    const/4 v2, 0x3

    invoke-virtual {v3}, Lcom/amap/api/services/core/LatLonPoint;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v6, v2

    const/4 v2, 0x4

    .line 563
    invoke-virtual {v3}, Lcom/amap/api/services/core/LatLonPoint;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x5

    aput-object v1, v6, v2

    const/4 v1, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    const/4 v0, 0x7

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v0

    const/16 v0, 0x9

    sget-object v1, Lcom/amap/api/services/a/ap;->f:Ljava/lang/String;

    aput-object v1, v6, v0

    const/16 v0, 0xa

    sget-object v1, Lcom/amap/api/services/a/ap;->f:Ljava/lang/String;

    aput-object v1, v6, v0

    const/16 v0, 0xb

    sget-object v1, Lcom/amap/api/services/a/ap;->f:Ljava/lang/String;

    aput-object v1, v6, v0

    .line 561
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 565
    new-instance v1, Lcom/amap/api/services/a/ab;

    iget-object v2, p0, Lcom/amap/api/services/a/ap;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/amap/api/services/a/ab;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 567
    invoke-virtual {v1}, Lcom/amap/api/services/a/ab;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    .line 568
    return-object v0
.end method

.method public searchWalkRouteShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;)V
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lcom/amap/api/services/a/ap$3;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/ap$3;-><init>(Lcom/amap/api/services/a/ap;Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;)V

    .line 296
    invoke-virtual {v0}, Lcom/amap/api/services/a/ap$3;->start()V

    .line 297
    return-void
.end method

.method public setOnShareSearchListener(Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/amap/api/services/a/ap;->g:Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;

    .line 201
    return-void
.end method
