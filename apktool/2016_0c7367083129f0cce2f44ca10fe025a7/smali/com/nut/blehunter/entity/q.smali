.class final Lcom/nut/blehunter/entity/q;
.super Ljava/lang/Object;
.source "NutConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/nut/blehunter/entity/NutConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2061
    new-instance v0, Lcom/nut/blehunter/entity/NutConfig;

    invoke-direct {v0, p1}, Lcom/nut/blehunter/entity/NutConfig;-><init>(Landroid/os/Parcel;)V

    .line 59
    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 59
    .line 1065
    new-array v0, p1, [Lcom/nut/blehunter/entity/NutConfig;

    .line 59
    return-object v0
.end method
