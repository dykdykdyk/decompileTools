.class public Lcom/amap/api/services/route/RouteSearch$FromAndTo;
.super Ljava/lang/Object;
.source "RouteSearch.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/amap/api/services/route/RouteSearch$FromAndTo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/amap/api/services/core/LatLonPoint;

.field private b:Lcom/amap/api/services/core/LatLonPoint;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 371
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/RouteSearch$FromAndTo$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 357
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    .line 360
    return-void
.end method

.method public constructor <init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    .line 271
    iput-object p2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    .line 272
    return-void
.end method


# virtual methods
.method public clone()Lcom/amap/api/services/route/RouteSearch$FromAndTo;
    .locals 3

    .prologue
    .line 444
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_0
    new-instance v0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;-><init>(Lcom/amap/api/services/core/LatLonPoint;Lcom/amap/api/services/core/LatLonPoint;)V

    .line 449
    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->setStartPoiID(Ljava/lang/String;)V

    .line 450
    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->setDestinationPoiID(Ljava/lang/String;)V

    .line 451
    return-object v0

    .line 446
    :catch_0
    move-exception v0

    const-string v1, "RouteSearch"

    const-string v2, "FromAndToclone"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->clone()Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 408
    if-ne p0, p1, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v0

    .line 410
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 411
    goto :goto_0

    .line 412
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 413
    goto :goto_0

    .line 414
    :cond_3
    check-cast p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;

    .line 415
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 416
    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 417
    goto :goto_0

    .line 418
    :cond_4
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 419
    goto :goto_0

    .line 420
    :cond_5
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_6

    .line 421
    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v2, :cond_7

    move v0, v1

    .line 422
    goto :goto_0

    .line 423
    :cond_6
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 424
    goto :goto_0

    .line 425
    :cond_7
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 426
    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    .line 427
    goto :goto_0

    .line 428
    :cond_8
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 429
    goto :goto_0

    .line 430
    :cond_9
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_a

    .line 431
    iget-object v2, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    if-eqz v2, :cond_0

    move v0, v1

    .line 432
    goto :goto_0

    .line 433
    :cond_a
    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    iget-object v3, p1, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v2, v3}, Lcom/amap/api/services/core/LatLonPoint;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 434
    goto :goto_0
.end method

.method public getDestinationPoiID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getFrom()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public getStartPoiID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Lcom/amap/api/services/core/LatLonPoint;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 391
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 392
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 393
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 394
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 395
    return v0

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v0}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v0

    goto :goto_1

    .line 393
    :cond_2
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 394
    :cond_3
    iget-object v1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v1}, Lcom/amap/api/services/core/LatLonPoint;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public setDestinationPoiID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public setStartPoiID(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 312
    iput-object p1, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    .line 313
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->a:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 350
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->b:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 351
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/amap/api/services/route/RouteSearch$FromAndTo;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    return-void
.end method
