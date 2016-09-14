.class final Lcom/nut/blehunter/entity/z;
.super Ljava/lang/Object;
.source "Silence.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nut/blehunter/entity/Silence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2083
    new-instance v0, Lcom/nut/blehunter/entity/Silence;

    invoke-direct {v0, p1}, Lcom/nut/blehunter/entity/Silence;-><init>(Landroid/os/Parcel;)V

    .line 80
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1088
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/nut/blehunter/entity/Silence;

    .line 80
    return-object v0
.end method
