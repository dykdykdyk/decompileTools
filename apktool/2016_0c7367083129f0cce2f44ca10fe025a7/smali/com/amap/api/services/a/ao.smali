.class public Lcom/amap/api/services/a/ao;
.super Ljava/lang/Object;
.source "RouteSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IRouteSearch;


# instance fields
.field private a:Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ao;->b:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/ao;->c:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/ao;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->a:Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    return-object v0
.end method

.method private a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 232
    if-nez p1, :cond_1

    .line 236
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->getFrom()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->getTo()Lcom/amap/api/services/core/LatLonPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/amap/api/services/a/ao;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public calculateBusRoute(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)Lcom/amap/api/services/route/BusRouteResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 123
    if-nez p1, :cond_0

    .line 124
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string v1, "RouteSearch"

    const-string v2, "calculateBusRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    throw v0

    .line 126
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ao;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 127
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;

    move-result-object v1

    .line 130
    new-instance v0, Lcom/amap/api/services/a/c;

    iget-object v2, p0, Lcom/amap/api/services/a/ao;->b:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/amap/api/services/a/c;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V

    .line 132
    invoke-virtual {v0}, Lcom/amap/api/services/a/c;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/BusRouteResult;

    .line 133
    if-eqz v0, :cond_2

    .line 134
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/BusRouteResult;->setBusQuery(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    :cond_2
    return-object v0
.end method

.method public calculateBusRouteAsyn(Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/amap/api/services/a/ao$2;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/ao$2;-><init>(Lcom/amap/api/services/a/ao;Lcom/amap/api/services/route/RouteSearch$BusRouteQuery;)V

    .line 169
    invoke-virtual {v0}, Lcom/amap/api/services/a/ao$2;->start()V

    .line 170
    return-void
.end method

.method public calculateDriveRoute(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)Lcom/amap/api/services/route/DriveRouteResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 182
    if-nez p1, :cond_0

    .line 183
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    const-string v1, "RouteSearch"

    const-string v2, "calculateDriveRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    throw v0

    .line 185
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ao;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;

    move-result-object v1

    .line 189
    new-instance v0, Lcom/amap/api/services/a/k;

    iget-object v2, p0, Lcom/amap/api/services/a/ao;->b:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/amap/api/services/a/k;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V

    .line 191
    invoke-virtual {v0}, Lcom/amap/api/services/a/k;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/DriveRouteResult;

    .line 192
    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/DriveRouteResult;->setDriveQuery(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    .line 195
    :cond_2
    return-object v0
.end method

.method public calculateDriveRouteAsyn(Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/amap/api/services/a/ao$3;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/ao$3;-><init>(Lcom/amap/api/services/a/ao;Lcom/amap/api/services/route/RouteSearch$DriveRouteQuery;)V

    .line 228
    invoke-virtual {v0}, Lcom/amap/api/services/a/ao$3;->start()V

    .line 229
    return-void
.end method

.method public calculateWalkRoute(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)Lcom/amap/api/services/route/WalkRouteResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/ao;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string v1, "RouteSearch"

    const-string v2, "calculateWalkRoute"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    throw v0

    .line 67
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->getFromAndTo()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amap/api/services/a/ao;->a(Lcom/amap/api/services/route/RouteSearch$FromAndTo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;->clone()Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;

    move-result-object v1

    .line 71
    new-instance v0, Lcom/amap/api/services/a/ac;

    iget-object v2, p0, Lcom/amap/api/services/a/ao;->b:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/amap/api/services/a/ac;-><init>(Landroid/content/Context;Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V

    .line 73
    invoke-virtual {v0}, Lcom/amap/api/services/a/ac;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/route/WalkRouteResult;

    .line 74
    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/WalkRouteResult;->setWalkQuery(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    :cond_2
    return-object v0
.end method

.method public calculateWalkRouteAsyn(Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/amap/api/services/a/ao$1;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/ao$1;-><init>(Lcom/amap/api/services/a/ao;Lcom/amap/api/services/route/RouteSearch$WalkRouteQuery;)V

    .line 110
    invoke-virtual {v0}, Lcom/amap/api/services/a/ao$1;->start()V

    .line 111
    return-void
.end method

.method public setRouteSearchListener(Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/amap/api/services/a/ao;->a:Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    .line 52
    return-void
.end method
