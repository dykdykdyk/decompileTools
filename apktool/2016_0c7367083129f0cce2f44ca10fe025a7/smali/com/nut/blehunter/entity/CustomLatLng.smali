.class public Lcom/nut/blehunter/entity/CustomLatLng;
.super Ljava/lang/Object;
.source "CustomLatLng.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nut/blehunter/entity/CustomLatLng;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:D

.field public b:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/nut/blehunter/entity/c;

    invoke-direct {v0}, Lcom/nut/blehunter/entity/c;-><init>()V

    sput-object v0, Lcom/nut/blehunter/entity/CustomLatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 27
    iput-wide p3, p0, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 28
    return-void
.end method

.method public constructor <init>(DDB)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/nut/blehunter/u;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1057
    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 1058
    invoke-static {p1, p2, p3, p4}, Lcom/nut/blehunter/d/f;->b(DD)[D

    move-result-object v1

    .line 1059
    aget-wide v2, v1, v4

    sub-double v2, p1, v2

    aput-wide v2, v0, v4

    .line 1060
    aget-wide v2, v1, v5

    sub-double v2, p3, v2

    aput-wide v2, v0, v5

    .line 39
    aget-wide v2, v0, v4

    iput-wide v2, p0, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 40
    aget-wide v0, v0, v5

    iput-wide v0, p0, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 45
    :goto_0
    return-void

    .line 42
    :cond_0
    iput-wide p1, p0, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 43
    iput-wide p3, p0, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    .line 23
    return-void
.end method


# virtual methods
.method public final a()Lcom/nut/blehunter/entity/CustomLatLng;
    .locals 6

    .prologue
    .line 57
    invoke-static {}, Lcom/nut/blehunter/u;->a()Lcom/nut/blehunter/u;

    move-result-object v0

    iget-wide v2, p0, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    iget-wide v4, p0, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/nut/blehunter/u;->a(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    iget-wide v0, p0, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    iget-wide v2, p0, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/d/f;->a(DD)[D

    move-result-object v0

    .line 59
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    .line 60
    const/4 v1, 0x1

    aget-wide v0, v0, v1

    .line 65
    :goto_0
    new-instance v4, Lcom/nut/blehunter/entity/CustomLatLng;

    invoke-direct {v4, v2, v3, v0, v1}, Lcom/nut/blehunter/entity/CustomLatLng;-><init>(DD)V

    return-object v4

    .line 62
    :cond_0
    iget-wide v2, p0, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    .line 63
    iget-wide v0, p0, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 75
    iget-wide v0, p0, Lcom/nut/blehunter/entity/CustomLatLng;->a:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 76
    iget-wide v0, p0, Lcom/nut/blehunter/entity/CustomLatLng;->b:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 77
    return-void
.end method
