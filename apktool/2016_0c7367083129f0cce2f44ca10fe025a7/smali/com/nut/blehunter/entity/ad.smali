.class final Lcom/nut/blehunter/entity/ad;
.super Ljava/lang/Object;
.source "UnhandledFriend.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nut/blehunter/entity/UnhandledFriend$Receiver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2076
    new-instance v0, Lcom/nut/blehunter/entity/UnhandledFriend$Receiver;

    invoke-direct {v0, p1}, Lcom/nut/blehunter/entity/UnhandledFriend$Receiver;-><init>(Landroid/os/Parcel;)V

    .line 73
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    .line 1081
    new-array v0, p1, [Lcom/nut/blehunter/entity/UnhandledFriend$Receiver;

    .line 73
    return-object v0
.end method
