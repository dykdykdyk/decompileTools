.class public Lcom/nut/blehunter/entity/MapRegion;
.super Lcom/nut/blehunter/entity/Region;
.source "MapRegion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nut/blehunter/entity/MapRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/nut/blehunter/entity/m;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/m;-><init>()V

    sput-object v0, Lcom/nut/blehunter/entity/MapRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/nut/blehunter/entity/Region;-><init>()V

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/nut/blehunter/entity/Region;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/MapRegion;->a:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nut/blehunter/entity/MapRegion;->b:D

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nut/blehunter/entity/MapRegion;->c:D

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/MapRegion;->d:I

    .line 30
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0, p1}, Lcom/nut/blehunter/entity/MapRegion;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 33
    iget v0, p0, Lcom/nut/blehunter/entity/MapRegion;->d:I

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/nut/blehunter/entity/MapRegion;->b:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nut/blehunter/entity/MapRegion;->c:D

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/nut/blehunter/entity/MapRegion;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    iget-wide v0, p0, Lcom/nut/blehunter/entity/MapRegion;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 45
    iget-wide v0, p0, Lcom/nut/blehunter/entity/MapRegion;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 46
    iget v0, p0, Lcom/nut/blehunter/entity/MapRegion;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    return-void
.end method
