.class public Lcom/nut/blehunter/entity/SafeRegion;
.super Lcom/nut/blehunter/entity/Region;
.source "SafeRegion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nut/blehunter/entity/SafeRegion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public e:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uuid"
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/nut/blehunter/entity/w;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/w;-><init>()V

    sput-object v0, Lcom/nut/blehunter/entity/SafeRegion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/nut/blehunter/entity/Region;-><init>()V

    .line 31
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/nut/blehunter/entity/Region;-><init>()V

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/SafeRegion;->e:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/SafeRegion;->f:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/SafeRegion;->a:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nut/blehunter/entity/SafeRegion;->b:D

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nut/blehunter/entity/SafeRegion;->c:D

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/SafeRegion;->d:I

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/nut/blehunter/entity/Region;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/nut/blehunter/entity/Region;-><init>()V

    .line 34
    iget-wide v0, p1, Lcom/nut/blehunter/entity/Region;->b:D

    iput-wide v0, p0, Lcom/nut/blehunter/entity/SafeRegion;->b:D

    .line 35
    iget-wide v0, p1, Lcom/nut/blehunter/entity/Region;->c:D

    iput-wide v0, p0, Lcom/nut/blehunter/entity/SafeRegion;->c:D

    .line 36
    iget-object v0, p1, Lcom/nut/blehunter/entity/Region;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/nut/blehunter/entity/SafeRegion;->a:Ljava/lang/String;

    .line 37
    iget v0, p1, Lcom/nut/blehunter/entity/Region;->d:I

    iput v0, p0, Lcom/nut/blehunter/entity/SafeRegion;->d:I

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nut/blehunter/entity/SafeRegion;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/nut/blehunter/entity/SafeRegion;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/nut/blehunter/entity/SafeRegion;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    iget-wide v0, p0, Lcom/nut/blehunter/entity/SafeRegion;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 60
    iget-wide v0, p0, Lcom/nut/blehunter/entity/SafeRegion;->c:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 61
    iget v0, p0, Lcom/nut/blehunter/entity/SafeRegion;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    return-void
.end method
