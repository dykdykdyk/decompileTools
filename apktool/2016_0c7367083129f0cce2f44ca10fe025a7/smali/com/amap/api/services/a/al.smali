.class public final Lcom/amap/api/services/a/al;
.super Ljava/lang/Object;
.source "GeocodeSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/interfaces/IGeocodeSearch;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/al;->a:Landroid/content/Context;

    .line 67
    invoke-static {}, Lcom/amap/api/services/a/q;->a()Lcom/amap/api/services/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/al;->c:Landroid/os/Handler;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/al;)Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amap/api/services/a/al;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    return-object v0
.end method

.method static synthetic b(Lcom/amap/api/services/a/al;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amap/api/services/a/al;->c:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final getFromLocation(Lcom/amap/api/services/geocoder/RegeocodeQuery;)Lcom/amap/api/services/geocoder/RegeocodeAddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/al;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 81
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v1, "GeocodeSearch"

    const-string v2, "getFromLocationAsyn"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    throw v0

    .line 84
    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/aa;

    iget-object v1, p0, Lcom/amap/api/services/a/al;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/a/aa;-><init>(Landroid/content/Context;Lcom/amap/api/services/geocoder/RegeocodeQuery;)V

    .line 86
    invoke-virtual {v0}, Lcom/amap/api/services/a/aa;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/geocoder/RegeocodeAddress;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method

.method public final getFromLocationAsyn(Lcom/amap/api/services/geocoder/RegeocodeQuery;)V
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/services/a/al$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/services/a/al$1;-><init>(Lcom/amap/api/services/a/al;Lcom/amap/api/services/geocoder/RegeocodeQuery;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 154
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 156
    return-void
.end method

.method public final getFromLocationName(Lcom/amap/api/services/geocoder/GeocodeQuery;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/services/geocoder/GeocodeQuery;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/geocoder/GeocodeAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/al;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/o;->a(Landroid/content/Context;)Lcom/amap/api/services/a/o;

    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Lcom/amap/api/services/core/AMapException;

    const-string v1, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string v1, "GeocodeSearch"

    const-string v2, "getFromLocationName"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    throw v0

    .line 107
    :cond_0
    :try_start_1
    new-instance v0, Lcom/amap/api/services/a/l;

    iget-object v1, p0, Lcom/amap/api/services/a/al;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/a/l;-><init>(Landroid/content/Context;Lcom/amap/api/services/geocoder/GeocodeQuery;)V

    .line 108
    invoke-virtual {v0}, Lcom/amap/api/services/a/l;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0
.end method

.method public final getFromLocationNameAsyn(Lcom/amap/api/services/geocoder/GeocodeQuery;)V
    .locals 2

    .prologue
    .line 165
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/services/a/al$2;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/services/a/al$2;-><init>(Lcom/amap/api/services/a/al;Lcom/amap/api/services/geocoder/GeocodeQuery;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 186
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 187
    return-void
.end method

.method public final setOnGeocodeSearchListener(Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/amap/api/services/a/al;->b:Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    .line 123
    return-void
.end method
