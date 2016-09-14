.class public final Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
.super Ljava/lang/Object;
.source "LatLngBounds.java"


# instance fields
.field private a:D

.field private b:D

.field private c:D

.field private d:D


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a:D

    .line 217
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->b:D

    .line 218
    iput-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    .line 219
    iput-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    return-void
.end method

.method private a(D)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 249
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    iget-wide v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    .line 250
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_1

    .line 251
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 250
    goto :goto_0

    .line 251
    :cond_2
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    cmpg-double v2, v2, p1

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    cmpg-double v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final build()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 8

    .prologue
    .line 260
    const-string v1, "build"

    .line 262
    :try_start_0
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    .line 263
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "no included points"

    .line 262
    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/ch;->a(ZLjava/lang/Object;)V

    .line 264
    new-instance v0, Lcom/amap/api/maps2d/model/LatLngBounds;

    new-instance v2, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a:D

    iget-wide v6, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v3, Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->b:D

    iget-wide v6, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-direct {v0, v2, v3}, Lcom/amap/api/maps2d/model/LatLngBounds;-><init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_1
    return-object v0

    .line 263
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    const-string v2, "LatLngBounds"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final include(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    .locals 6

    .prologue
    .line 230
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a:D

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a:D

    .line 231
    iget-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->b:D

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->b:D

    .line 232
    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 233
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 234
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    .line 242
    :cond_0
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    .line 245
    :cond_1
    :goto_0
    return-object p0

    .line 236
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->a(D)Z

    move-result v2

    if-nez v2, :cond_1

    .line 237
    iget-wide v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    invoke-static {v2, v3, v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds;->a(DD)D

    move-result-wide v2

    iget-wide v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->d:D

    .line 238
    invoke-static {v4, v5, v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds;->b(DD)D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 240
    iput-wide v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;->c:D

    goto :goto_0
.end method
