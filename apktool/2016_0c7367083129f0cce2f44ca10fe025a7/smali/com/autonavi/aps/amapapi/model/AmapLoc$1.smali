.class final Lcom/autonavi/aps/amapapi/model/AmapLoc$1;
.super Ljava/lang/Object;
.source "AmapLoc.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/autonavi/aps/amapapi/model/AmapLoc;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Parcel;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 1

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0, p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final a(I)[Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc$1;->a(Landroid/os/Parcel;)Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/autonavi/aps/amapapi/model/AmapLoc$1;->a(I)[Lcom/autonavi/aps/amapapi/model/AmapLoc;

    move-result-object v0

    return-object v0
.end method
