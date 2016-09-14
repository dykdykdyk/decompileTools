.class public final Lcom/amap/api/maps2d/model/BitmapDescriptor;
.super Ljava/lang/Object;
.source "BitmapDescriptor.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field static final a:Lcom/amap/api/maps2d/model/a;


# instance fields
.field b:I

.field c:I

.field d:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/amap/api/maps2d/model/a;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/a;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->a:Lcom/amap/api/maps2d/model/a;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->b:I

    .line 21
    iput v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->c:I

    .line 25
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->b:I

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->c:I

    .line 28
    iput-object p1, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    .line 30
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->b:I

    .line 21
    iput v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->c:I

    .line 33
    iput p2, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->b:I

    .line 34
    iput p3, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->c:I

    .line 35
    iput-object p1, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    .line 36
    return-void
.end method


# virtual methods
.method public final clone()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 5

    .prologue
    .line 44
    const-string v1, "clone"

    .line 46
    :try_start_0
    new-instance v0, Lcom/amap/api/maps2d/model/BitmapDescriptor;

    iget-object v2, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget v3, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->b:I

    iget v4, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->c:I

    invoke-direct {v0, v2, v3, v4}, Lcom/amap/api/maps2d/model/BitmapDescriptor;-><init>(Landroid/graphics/Bitmap;II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    const-string v2, "BitmapDescriptor"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/BitmapDescriptor;->clone()Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->c:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->b:I

    return v0
.end method

.method public final recycle()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    .line 101
    :cond_0
    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 89
    iget v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/amap/api/maps2d/model/BitmapDescriptor;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
