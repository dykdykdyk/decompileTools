.class public Lcom/amap/api/services/share/ShareSearch;
.super Ljava/lang/Object;
.source "ShareSearch.java"


# static fields
.field public static final BusComfortable:I = 0x4

.field public static final BusDefault:I = 0x0

.field public static final BusLeaseChange:I = 0x2

.field public static final BusLeaseWalk:I = 0x3

.field public static final BusNoSubway:I = 0x5

.field public static final BusSaveMoney:I = 0x1

.field public static final DrivingAvoidCongestion:I = 0x4

.field public static final DrivingDefault:I = 0x0

.field public static final DrivingNoHighWay:I = 0x3

.field public static final DrivingNoHighWayAvoidCongestion:I = 0x6

.field public static final DrivingNoHighWaySaveMoney:I = 0x5

.field public static final DrivingNoHighWaySaveMoneyAvoidCongestion:I = 0x8

.field public static final DrivingSaveMoney:I = 0x1

.field public static final DrivingSaveMoneyAvoidCongestion:I = 0x7

.field public static final DrivingShortDistance:I = 0x2

.field public static final NaviAvoidCongestion:I = 0x4

.field public static final NaviDefault:I = 0x0

.field public static final NaviNoHighWay:I = 0x3

.field public static final NaviNoHighWayAvoidCongestion:I = 0x6

.field public static final NaviNoHighWaySaveMoney:I = 0x5

.field public static final NaviNoHighWaySaveMoneyAvoidCongestion:I = 0x8

.field public static final NaviSaveMoney:I = 0x1

.field public static final NaviSaveMoneyAvoidCongestion:I = 0x7

.field public static final NaviShortDistance:I = 0x2


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IShareSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/ba;

    move-result-object v1

    const-string v2, "com.amap.api.services.dynamic.ShareSearchWrapper"

    const-class v3, Lcom/amap/api/services/a/ap;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/services/a/cb;->a(Landroid/content/Context;Lcom/amap/api/services/a/ba;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/IShareSearch;

    iput-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/ar; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/amap/api/services/a/ap;

    invoke-direct {v0, p1}, Lcom/amap/api/services/a/ap;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    .line 198
    :cond_0
    return-void

    .line 193
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/ar;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public searchBusRouteShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 345
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchBusRouteShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;)Ljava/lang/String;

    .line 348
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchBusRouteShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchBusRouteShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareBusRouteQuery;)V

    .line 237
    :cond_0
    return-void
.end method

.method public searchDrivingRouteShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 360
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchDrivingRouteShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;)Ljava/lang/String;

    .line 363
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchDrivingRouteShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;)V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchDrivingRouteShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareDrivingRouteQuery;)V

    .line 263
    :cond_0
    return-void
.end method

.method public searchLocationShareUrl(Lcom/amap/api/services/core/LatLonSharePoint;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchLocationShareUrl(Lcom/amap/api/services/core/LatLonSharePoint;)Ljava/lang/String;

    .line 333
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchLocationShareUrlAsyn(Lcom/amap/api/services/core/LatLonSharePoint;)V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchLocationShareUrlAsyn(Lcom/amap/api/services/core/LatLonSharePoint;)V

    .line 289
    :cond_0
    return-void
.end method

.method public searchNaviShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchNaviShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;)Ljava/lang/String;

    .line 318
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchNaviShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;)V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchNaviShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareNaviQuery;)V

    .line 276
    :cond_0
    return-void
.end method

.method public searchPoiShareUrl(Lcom/amap/api/services/core/PoiItem;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchPoiShareUrl(Lcom/amap/api/services/core/PoiItem;)Ljava/lang/String;

    .line 303
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchPoiShareUrlAsyn(Lcom/amap/api/services/core/PoiItem;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchPoiShareUrlAsyn(Lcom/amap/api/services/core/PoiItem;)V

    .line 224
    :cond_0
    return-void
.end method

.method public searchWalkRouteShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchWalkRouteShareUrl(Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;)Ljava/lang/String;

    .line 378
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchWalkRouteShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;)V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->searchWalkRouteShareUrlAsyn(Lcom/amap/api/services/share/ShareSearch$ShareWalkRouteQuery;)V

    .line 250
    :cond_0
    return-void
.end method

.method public setOnShareSearchListener(Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/amap/api/services/share/ShareSearch;->a:Lcom/amap/api/services/interfaces/IShareSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IShareSearch;->setOnShareSearchListener(Lcom/amap/api/services/share/ShareSearch$OnShareSearchListener;)V

    .line 211
    :cond_0
    return-void
.end method
