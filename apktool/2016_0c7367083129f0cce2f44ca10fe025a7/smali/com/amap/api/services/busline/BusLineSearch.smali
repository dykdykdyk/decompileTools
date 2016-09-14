.class public Lcom/amap/api/services/busline/BusLineSearch;
.super Ljava/lang/Object;
.source "BusLineSearch.java"


# instance fields
.field private a:Lcom/amap/api/services/interfaces/IBusLineSearch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusLineQuery;)V
    .locals 6

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    .line 27
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/ba;

    move-result-object v1

    const-string v2, "com.amap.api.services.dynamic.BusLineSearchWrapper"

    const-class v3, Lcom/amap/api/services/a/ah;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v0

    const/4 v0, 0x1

    const-class v5, Lcom/amap/api/services/busline/BusLineQuery;

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

    check-cast v0, Lcom/amap/api/services/interfaces/IBusLineSearch;

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;
    :try_end_0
    .catch Lcom/amap/api/services/a/ar; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/amap/api/services/a/ah;

    invoke-direct {v0, p1, p2}, Lcom/amap/api/services/a/ah;-><init>(Landroid/content/Context;Lcom/amap/api/services/busline/BusLineQuery;)V

    iput-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    .line 34
    :cond_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/amap/api/services/a/ar;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getQuery()Lcom/amap/api/services/busline/BusLineQuery;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IBusLineSearch;->getQuery()Lcom/amap/api/services/busline/BusLineQuery;

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchBusLine()Lcom/amap/api/services/busline/BusLineResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IBusLineSearch;->searchBusLine()Lcom/amap/api/services/busline/BusLineResult;

    move-result-object v0

    .line 47
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public searchBusLineAsyn()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    invoke-interface {v0}, Lcom/amap/api/services/interfaces/IBusLineSearch;->searchBusLineAsyn()V

    .line 71
    :cond_0
    return-void
.end method

.method public setOnBusLineSearchListener(Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IBusLineSearch;->setOnBusLineSearchListener(Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;)V

    .line 60
    :cond_0
    return-void
.end method

.method public setQuery(Lcom/amap/api/services/busline/BusLineQuery;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/amap/api/services/busline/BusLineSearch;->a:Lcom/amap/api/services/interfaces/IBusLineSearch;

    invoke-interface {v0, p1}, Lcom/amap/api/services/interfaces/IBusLineSearch;->setQuery(Lcom/amap/api/services/busline/BusLineQuery;)V

    .line 82
    :cond_0
    return-void
.end method
