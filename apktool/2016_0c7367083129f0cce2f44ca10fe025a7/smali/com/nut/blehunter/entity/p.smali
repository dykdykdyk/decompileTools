.class final Lcom/nut/blehunter/entity/p;
.super Ljava/lang/Object;
.source "Nut.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nut/blehunter/entity/Nut;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2290
    new-instance v0, Lcom/nut/blehunter/entity/Nut;

    invoke-direct {v0, p1}, Lcom/nut/blehunter/entity/Nut;-><init>(Landroid/os/Parcel;)V

    .line 287
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 287
    .line 1295
    new-array v0, p1, [Lcom/nut/blehunter/entity/Nut;

    .line 287
    return-object v0
.end method
