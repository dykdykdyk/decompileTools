.class final Lcom/amap/api/services/cloud/CloudItem$1;
.super Ljava/lang/Object;
.source "CloudItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/amap/api/services/cloud/CloudItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/amap/api/services/cloud/CloudItem;
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/amap/api/services/cloud/CloudItem;

    invoke-direct {v0, p1}, Lcom/amap/api/services/cloud/CloudItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final a(I)[Lcom/amap/api/services/cloud/CloudItem;
    .locals 1

    .prologue
    .line 234
    new-array v0, p1, [Lcom/amap/api/services/cloud/CloudItem;

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/amap/api/services/cloud/CloudItem$1;->a(Landroid/os/Parcel;)Lcom/amap/api/services/cloud/CloudItem;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p0, p1}, Lcom/amap/api/services/cloud/CloudItem$1;->a(I)[Lcom/amap/api/services/cloud/CloudItem;

    move-result-object v0

    return-object v0
.end method
