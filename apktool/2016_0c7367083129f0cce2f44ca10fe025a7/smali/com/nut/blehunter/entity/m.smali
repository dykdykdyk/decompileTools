.class final Lcom/nut/blehunter/entity/m;
.super Ljava/lang/Object;
.source "MapRegion.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nut/blehunter/entity/MapRegion;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2014
    new-instance v0, Lcom/nut/blehunter/entity/MapRegion;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/nut/blehunter/entity/MapRegion;-><init>(Landroid/os/Parcel;B)V

    .line 12
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    .line 1018
    new-array v0, p1, [Lcom/nut/blehunter/entity/MapRegion;

    .line 12
    return-object v0
.end method
