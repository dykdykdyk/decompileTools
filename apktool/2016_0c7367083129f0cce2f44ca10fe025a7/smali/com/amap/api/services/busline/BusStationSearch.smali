.class public Lcom/amap/api/services/busline/BusStationSearch;
.super Ljava/lang/Object;
.source "BusStationSearch.java"


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IBusStationSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusStationQuery;)V
    .locals 6

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/ba;

    move-result-object v1

    const-string v2, "com.amap.api.services.dynamic.BusStationSearchWrapper"

    const-class v3, Lcom/amap/api/services/a/ai;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-class v5, Lcom/amap/api/services/busline/BusStationQuery;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object p2, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/amap/api/services/a/cb;->a(Landroid/content/Context;Lcom/amap/api/services/a/ba;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/interfaces/IBusStationSearch;

    iput-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/ar; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/amap/api/services/a/ai;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/services/a/ai;-><init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusStationQuery;)V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    .line 33
    :cond_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/ar;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/busline/BusStationQuery;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IBusStationSearch;->getQuery()Lcom/amap/api/services/busline/BusStationQuery;

    move-result-object v0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchBusStation()Lcom/amap/api/services/busline/BusStationResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IBusStationSearch;->searchBusStation()Lcom/amap/api/services/busline/BusStationResult;

    move-result-object v0

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchBusStationAsyn()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IBusStationSearch;->searchBusStationAsyn()V

    .line 70
    :cond_0
    return-void
.end method

.method public setOnBusStationSearchListener(Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IBusStationSearch;->setOnBusStationSearchListener(Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;)V

    .line 59
    :cond_0
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/busline/BusStationQuery;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/amap/api/services/busline/BusStationSearch;->a:Lcom/amap/api/services/interfaces/IBusStationSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IBusStationSearch;->setQuery(Lcom/amap/api/services/busline/BusStationQuery;)V

    .line 81
    :cond_0
    return-void
.end method
