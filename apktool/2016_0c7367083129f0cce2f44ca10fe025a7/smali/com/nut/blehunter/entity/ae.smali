.class final Lcom/nut/blehunter/entity/ae;
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
        "Lcom/nut/blehunter/entity/UnhandledFriend$Sponsor;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2034
    new-instance v0, Lcom/nut/blehunter/entity/UnhandledFriend$Sponsor;

    invoke-direct {v0, p1}, Lcom/nut/blehunter/entity/UnhandledFriend$Sponsor;-><init>(Landroid/os/Parcel;)V

    .line 31
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    .line 1039
    new-array v0, p1, [Lcom/nut/blehunter/entity/UnhandledFriend$Sponsor;

    .line 31
    return-object v0
.end method
