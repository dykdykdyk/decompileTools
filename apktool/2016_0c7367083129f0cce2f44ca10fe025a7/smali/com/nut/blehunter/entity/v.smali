.class final Lcom/nut/blehunter/entity/v;
.super Ljava/lang/Object;
.source "RepeatTime.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nut/blehunter/entity/RepeatTime;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2045
    new-instance v0, Lcom/nut/blehunter/entity/RepeatTime;

    invoke-direct {v0, p1}, Lcom/nut/blehunter/entity/RepeatTime;-><init>(Landroid/os/Parcel;)V

    .line 42
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1050
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/nut/blehunter/entity/RepeatTime;

    .line 42
    return-object v0
.end method
