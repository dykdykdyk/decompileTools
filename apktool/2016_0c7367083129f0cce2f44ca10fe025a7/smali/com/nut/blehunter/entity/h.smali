.class final Lcom/nut/blehunter/entity/h;
.super Ljava/lang/Object;
.source "FindLocation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nut/blehunter/entity/FindLocation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2056
    new-instance v0, Lcom/nut/blehunter/entity/FindLocation;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/nut/blehunter/entity/FindLocation;-><init>(Landroid/os/Parcel;B)V

    .line 54
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 54
    .line 1060
    new-array v0, p1, [Lcom/nut/blehunter/entity/FindLocation;

    .line 54
    return-object v0
.end method
