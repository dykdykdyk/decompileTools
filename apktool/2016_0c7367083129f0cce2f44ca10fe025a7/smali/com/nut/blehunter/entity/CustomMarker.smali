.class public Lcom/nut/blehunter/entity/CustomMarker;
.super Ljava/lang/Object;
.source "CustomMarker.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nut/blehunter/entity/CustomMarker;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Z

.field public f:J

.field public g:D

.field public h:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/nut/blehunter/entity/d;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/d;-><init>()V

    sput-object v0, Lcom/nut/blehunter/entity/CustomMarker;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/nut/blehunter/entity/Position;)V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/nut/blehunter/entity/CustomMarker;->a:I

    .line 29
    iput-object p2, p0, Lcom/nut/blehunter/entity/CustomMarker;->c:Ljava/lang/String;

    .line 30
    iget v0, p3, Lcom/nut/blehunter/entity/Position;->b:I

    iput v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->d:I

    .line 31
    iget-wide v0, p3, Lcom/nut/blehunter/entity/Position;->e:J

    iput-wide v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->f:J

    .line 32
    iget-wide v0, p3, Lcom/nut/blehunter/entity/Position;->d:D

    iput-wide v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->g:D

    .line 33
    iget-wide v0, p3, Lcom/nut/blehunter/entity/Position;->c:D

    iput-wide v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->h:D

    .line 34
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->a:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->b:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->c:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->d:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->e:Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->f:J

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->g:D

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->h:D

    .line 66
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/nut/blehunter/entity/CustomLatLng;
    .locals 6

    .prologue
    .line 37
    new-instance v0, Lcom/nut/blehunter/entity/CustomLatLng;

    iget-wide v2, p0, Lcom/nut/blehunter/entity/CustomMarker;->g:D

    iget-wide v4, p0, Lcom/nut/blehunter/entity/CustomMarker;->h:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 47
    iget v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    iget-object v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 50
    iget v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget-boolean v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 52
    iget-wide v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->f:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 53
    iget-wide v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->g:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 54
    iget-wide v0, p0, Lcom/nut/blehunter/entity/CustomMarker;->h:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 55
    return-void

    .line 51
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
