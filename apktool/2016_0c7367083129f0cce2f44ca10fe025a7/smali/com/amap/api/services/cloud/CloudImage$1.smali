.class final Lcom/amap/api/services/cloud/CloudImage$1;
.super Ljava/lang/Object;
.source "CloudImage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/services/cloud/CloudImage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/amap/api/services/cloud/CloudImage;
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/amap/api/services/cloud/CloudImage;

    invoke-direct {v0, p1}, Lcom/amap/api/services/cloud/CloudImage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final a(I)[Lcom/amap/api/services/cloud/CloudImage;
    .locals 1

    .prologue
    .line 104
    new-array v0, p1, [Lcom/amap/api/services/cloud/CloudImage;

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/amap/api/services/cloud/CloudImage$1;->a(Landroid/os/Parcel;)Lcom/amap/api/services/cloud/CloudImage;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/amap/api/services/cloud/CloudImage$1;->a(I)[Lcom/amap/api/services/cloud/CloudImage;

    move-result-object v0

    return-object v0
.end method
