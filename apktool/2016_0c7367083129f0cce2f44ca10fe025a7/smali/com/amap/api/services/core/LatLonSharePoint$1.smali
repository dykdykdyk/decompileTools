.class final Lcom/amap/api/services/core/LatLonSharePoint$1;
.super Ljava/lang/Object;
.source "LatLonSharePoint.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/services/core/LatLonSharePoint;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/amap/api/services/core/LatLonSharePoint;
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/amap/api/services/core/LatLonSharePoint;

    invoke-direct {v0, p1}, Lcom/amap/api/services/core/LatLonSharePoint;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final a(I)[Lcom/amap/api/services/core/LatLonSharePoint;
    .locals 1

    .prologue
    .line 55
    new-array v0, p1, [Lcom/amap/api/services/core/LatLonSharePoint;

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/amap/api/services/core/LatLonSharePoint$1;->a(Landroid/os/Parcel;)Lcom/amap/api/services/core/LatLonSharePoint;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0, p1}, Lcom/amap/api/services/core/LatLonSharePoint$1;->a(I)[Lcom/amap/api/services/core/LatLonSharePoint;

    move-result-object v0

    return-object v0
.end method
