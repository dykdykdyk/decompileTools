.class final Lcom/nut/blehunter/entity/l;
.super Ljava/lang/Object;
.source "LosingRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nut/blehunter/entity/LosingRecord;",
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
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 2051
    new-instance v0, Lcom/nut/blehunter/entity/LosingRecord;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/nut/blehunter/entity/LosingRecord;-><init>(Landroid/os/Parcel;B)V

    .line 49
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 49
    .line 1055
    new-array v0, p1, [Lcom/nut/blehunter/entity/LosingRecord;

    .line 49
    return-object v0
.end method
