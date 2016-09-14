.class Lcom/amap/api/maps2d/a;
.super Ljava/lang/Object;
.source "AMapOptionsCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/maps2d/AMapOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/AMapOptions;
    .locals 4

    .prologue
    .line 12
    new-instance v1, Lcom/amap/api/maps2d/AMapOptions;

    invoke-direct {v1}, Lcom/amap/api/maps2d/AMapOptions;-><init>()V

    .line 14
    const-class v0, Lcom/amap/api/maps2d/model/CameraPosition;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps2d/model/CameraPosition;

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/AMapOptions;->mapType(I)Lcom/amap/api/maps2d/AMapOptions;

    .line 16
    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/AMapOptions;->camera(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/amap/api/maps2d/AMapOptions;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    array-length v2, v0

    const/4 v3, 0x6

    if-lt v2, v3, :cond_0

    .line 19
    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/AMapOptions;->scrollGesturesEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;

    .line 20
    const/4 v2, 0x1

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/AMapOptions;->zoomGesturesEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;

    .line 21
    const/4 v2, 0x2

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/AMapOptions;->zoomControlsEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;

    .line 23
    const/4 v2, 0x3

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/AMapOptions;->zOrderOnTop(Z)Lcom/amap/api/maps2d/AMapOptions;

    .line 24
    const/4 v2, 0x4

    aget-boolean v2, v0, v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps2d/AMapOptions;->compassEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;

    .line 25
    const/4 v2, 0x5

    aget-boolean v0, v0, v2

    invoke-virtual {v1, v0}, Lcom/amap/api/maps2d/AMapOptions;->scaleControlsEnabled(Z)Lcom/amap/api/maps2d/AMapOptions;

    .line 28
    :cond_0
    return-object v1
.end method

.method public a(I)[Lcom/amap/api/maps2d/AMapOptions;
    .locals 1

    .prologue
    .line 34
    new-array v0, p1, [Lcom/amap/api/maps2d/AMapOptions;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/a;->a(Landroid/os/Parcel;)Lcom/amap/api/maps2d/AMapOptions;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/amap/api/maps2d/a;->a(I)[Lcom/amap/api/maps2d/AMapOptions;

    move-result-object v0

    return-object v0
.end method
