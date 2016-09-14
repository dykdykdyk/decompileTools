.class final Lcom/amap/api/services/district/DistrictSearchQuery$1;
.super Ljava/lang/Object;
.source "DistrictSearchQuery.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/services/district/DistrictSearchQuery;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 349
    new-instance v3, Lcom/amap/api/services/district/DistrictSearchQuery;

    invoke-direct {v3}, Lcom/amap/api/services/district/DistrictSearchQuery;-><init>()V

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amap/api/services/district/DistrictSearchQuery;->setKeywords(Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/amap/api/services/district/DistrictSearchQuery;->setKeywordsLevel(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/amap/api/services/district/DistrictSearchQuery;->setPageNum(I)V

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/amap/api/services/district/DistrictSearchQuery;->setPageSize(I)V

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/amap/api/services/district/DistrictSearchQuery;->setShowChild(Z)V

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Lcom/amap/api/services/district/DistrictSearchQuery;->setShowBoundary(Z)V

    .line 356
    return-object v3

    :cond_0
    move v0, v2

    .line 354
    goto :goto_0

    :cond_1
    move v1, v2

    .line 355
    goto :goto_1
.end method

.method public final a(I)[Lcom/amap/api/services/district/DistrictSearchQuery;
    .locals 1

    .prologue
    .line 361
    new-array v0, p1, [Lcom/amap/api/services/district/DistrictSearchQuery;

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/amap/api/services/district/DistrictSearchQuery$1;->a(Landroid/os/Parcel;)Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/amap/api/services/district/DistrictSearchQuery$1;->a(I)[Lcom/amap/api/services/district/DistrictSearchQuery;

    move-result-object v0

    return-object v0
.end method
