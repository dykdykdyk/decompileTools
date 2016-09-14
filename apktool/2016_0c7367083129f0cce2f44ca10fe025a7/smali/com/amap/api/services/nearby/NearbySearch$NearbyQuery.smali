.class public Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;
.super Ljava/lang/Object;
.source "NearbySearch.java"


# instance fields
.field private a:Lcom/amap/api/services/core/LatLonPoint;

.field private b:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    sget-object v0, Lcom/amap/api/services/nearby/NearbySearchFunctionType;->DISTANCE_SEARCH:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    iput-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->b:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    .line 183
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->c:I

    .line 185
    const/16 v0, 0x708

    iput v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->d:I

    .line 187
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->e:I

    return-void
.end method


# virtual methods
.method public getCenterPoint()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getCoordType()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->e:I

    return v0
.end method

.method public getRadius()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->c:I

    return v0
.end method

.method public getTimeRange()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->d:I

    return v0
.end method

.method public getType()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 245
    .line 246
    sget-object v1, Lcom/amap/api/services/nearby/NearbySearch$1;->a:[I

    iget-object v2, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->b:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    invoke-virtual {v2}, Lcom/amap/api/services/nearby/NearbySearchFunctionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 255
    :goto_0
    :pswitch_0
    return v0

    .line 252
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCenterPoint(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 195
    return-void
.end method

.method public setCoordType(I)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 263
    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    .line 264
    iput v0, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->e:I

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    iput p1, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->e:I

    goto :goto_0
.end method

.method public setRadius(I)V
    .locals 1

    .prologue
    const/16 v0, 0x2710

    .line 220
    if-le p1, v0, :cond_0

    move p1, v0

    .line 223
    :cond_0
    iput p1, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->c:I

    .line 225
    return-void
.end method

.method public setTimeRange(I)V
    .locals 2

    .prologue
    const v1, 0x15180

    const/4 v0, 0x5

    .line 284
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 289
    :cond_0
    :goto_0
    iput p1, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->d:I

    .line 290
    return-void

    .line 286
    :cond_1
    if-le p1, v1, :cond_0

    move p1, v1

    .line 287
    goto :goto_0
.end method

.method public setType(Lcom/amap/api/services/nearby/NearbySearchFunctionType;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/amap/api/services/nearby/NearbySearch$NearbyQuery;->b:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    .line 233
    return-void
.end method
