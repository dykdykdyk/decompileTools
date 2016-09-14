.class public Lcom/nut/blehunter/entity/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nut/blehunter/entity/Region;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "address"
    .end annotation
.end field

.field public b:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latitude"
    .end annotation
.end field

.field public c:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "longitude"
    .end annotation
.end field

.field public d:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radius"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/nut/blehunter/entity/u;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/u;-><init>()V

    sput-object v0, Lcom/nut/blehunter/entity/Region;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/Region;->a:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nut/blehunter/entity/Region;->b:D

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nut/blehunter/entity/Region;->c:D

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/Region;->d:I

    .line 55
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 27
    iget-wide v0, p0, Lcom/nut/blehunter/entity/Region;->b:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nut/blehunter/entity/Region;->c:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/nut/blehunter/entity/Region;->d:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/nut/blehunter/entity/CustomLatLng;
    .locals 6

    .prologue
    .line 31
    new-instance v0, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-wide v2, p0, Lcom/nut/blehunter/entity/Region;->b:D

    iget-wide v4, p0, Lcom/nut/blehunter/entity/Region;->c:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/nut/blehunter/entity/Region;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-wide v0, p0, Lcom/nut/blehunter/entity/Region;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 43
    iget-wide v0, p0, Lcom/nut/blehunter/entity/Region;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 44
    iget v0, p0, Lcom/nut/blehunter/entity/Region;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    return-void
.end method
