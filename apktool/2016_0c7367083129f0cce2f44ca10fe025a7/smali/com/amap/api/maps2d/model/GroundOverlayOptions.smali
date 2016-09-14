.class public final Lcom/amap/api/maps2d/model/GroundOverlayOptions;
.super Ljava/lang/Object;
.source "GroundOverlayOptions.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/d;

.field public static final NO_DIMENSION:F = -1.0f


# instance fields
.field private final a:I

.field private b:Lcom/amap/api/maps2d/model/BitmapDescriptor;

.field private c:Lcom/amap/api/maps2d/model/LatLng;

.field private d:F

.field private e:F

.field private f:Lcom/amap/api/maps2d/model/LatLngBounds;

.field private g:F

.field private h:F

.field private i:Z

.field private j:F

.field private k:F

.field private l:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/amap/api/maps2d/model/d;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/d;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->CREATOR:Lcom/amap/api/maps2d/model/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x3f000000    # 0.5f

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v2, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->i:Z

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->j:F

    .line 32
    iput v1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->k:F

    .line 33
    iput v1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->l:F

    .line 60
    iput v2, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->a:I

    .line 61
    return-void
.end method

.method constructor <init>(ILandroid/os/IBinder;Lcom/amap/api/maps2d/model/LatLng;FFLcom/amap/api/maps2d/model/LatLngBounds;FFZFFF)V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->i:Z

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->j:F

    .line 32
    iput v1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->k:F

    .line 33
    iput v1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->l:F

    .line 40
    iput p1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->a:I

    .line 41
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amap/api/maps2d/model/BitmapDescriptorFactory;->fromBitmap(Landroid/graphics/Bitmap;)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->b:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 42
    iput-object p3, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->c:Lcom/amap/api/maps2d/model/LatLng;

    .line 43
    iput p4, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->d:F

    .line 44
    iput p5, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->e:F

    .line 45
    iput-object p6, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->f:Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 46
    iput p7, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->g:F

    .line 47
    iput p8, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->h:F

    .line 48
    iput-boolean p9, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->i:Z

    .line 49
    iput p10, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->j:F

    .line 50
    iput p11, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->k:F

    .line 51
    iput p12, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->l:F

    .line 52
    return-void
.end method

.method private a(Lcom/amap/api/maps2d/model/LatLng;FF)Lcom/amap/api/maps2d/model/GroundOverlayOptions;
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->c:Lcom/amap/api/maps2d/model/LatLng;

    .line 137
    iput p2, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->d:F

    .line 138
    iput p3, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->e:F

    .line 139
    return-object p0
.end method


# virtual methods
.method public final anchor(FF)Lcom/amap/api/maps2d/model/GroundOverlayOptions;
    .locals 0

    .prologue
    .line 84
    iput p1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->k:F

    .line 85
    iput p2, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->l:F

    .line 86
    return-object p0
.end method

.method public final bearing(F)Lcom/amap/api/maps2d/model/GroundOverlayOptions;
    .locals 0

    .prologue
    .line 170
    iput p1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->g:F

    .line 171
    return-object p0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x0

    return v0
.end method

.method public final getAnchorU()F
    .locals 1

    .prologue
    .line 304
    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->k:F

    return v0
.end method

.method public final getAnchorV()F
    .locals 1

    .prologue
    .line 314
    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->l:F

    return v0
.end method

.method public final getBearing()F
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->g:F

    return v0
.end method

.method public final getBounds()Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->f:Lcom/amap/api/maps2d/model/LatLngBounds;

    return-object v0
.end method

.method public final getHeight()F
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->e:F

    return v0
.end method

.method public final getImage()Lcom/amap/api/maps2d/model/BitmapDescriptor;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->b:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    return-object v0
.end method

.method public final getLocation()Lcom/amap/api/maps2d/model/LatLng;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->c:Lcom/amap/api/maps2d/model/LatLng;

    return-object v0
.end method

.method public final getTransparency()F
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->j:F

    return v0
.end method

.method public final getWidth()F
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->d:F

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->h:F

    return v0
.end method

.method public final image(Lcom/amap/api/maps2d/model/BitmapDescriptor;)Lcom/amap/api/maps2d/model/GroundOverlayOptions;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->b:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    .line 72
    return-object p0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 324
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->i:Z

    return v0
.end method

.method public final position(Lcom/amap/api/maps2d/model/LatLng;F)Lcom/amap/api/maps2d/model/GroundOverlayOptions;
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 98
    const-string v3, "position"

    .line 100
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->f:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    const-string v4, "Position has already been set using positionFromBounds"

    invoke-static {v2, v4}, Lcom/amap/api/mapcore2d/ch;->a(ZLjava/lang/Object;)V

    .line 101
    if-eqz p1, :cond_1

    move v2, v0

    :goto_1
    const-string v4, "Location must be specified"

    invoke-static {v2, v4}, Lcom/amap/api/mapcore2d/ch;->b(ZLjava/lang/Object;)V

    .line 102
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_2

    :goto_2
    const-string v1, "Width must be non-negative"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/ch;->b(ZLjava/lang/Object;)V

    .line 103
    invoke-direct {p0, p1, p2, p2}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->a(Lcom/amap/api/maps2d/model/LatLng;FF)Lcom/amap/api/maps2d/model/GroundOverlayOptions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    :goto_3
    return-object v0

    :cond_0
    move v2, v1

    .line 100
    goto :goto_0

    :cond_1
    move v2, v1

    .line 101
    goto :goto_1

    :cond_2
    move v0, v1

    .line 102
    goto :goto_2

    .line 105
    :catch_0
    move-exception v0

    const-string v1, "GroundOverlayOptions"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public final position(Lcom/amap/api/maps2d/model/LatLng;FF)Lcom/amap/api/maps2d/model/GroundOverlayOptions;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 121
    const-string v3, "position"

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->f:Lcom/amap/api/maps2d/model/LatLngBounds;

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    const-string v4, "Position has already been set using positionFromBounds"

    invoke-static {v2, v4}, Lcom/amap/api/mapcore2d/ch;->a(ZLjava/lang/Object;)V

    .line 124
    if-eqz p1, :cond_1

    move v2, v0

    :goto_1
    const-string v4, "Location must be specified"

    invoke-static {v2, v4}, Lcom/amap/api/mapcore2d/ch;->b(ZLjava/lang/Object;)V

    .line 125
    cmpl-float v2, p2, v5

    if-ltz v2, :cond_2

    move v2, v0

    :goto_2
    const-string v4, "Width must be non-negative"

    invoke-static {v2, v4}, Lcom/amap/api/mapcore2d/ch;->b(ZLjava/lang/Object;)V

    .line 126
    cmpl-float v2, p3, v5

    if-ltz v2, :cond_3

    :goto_3
    const-string v1, "Height must be non-negative"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore2d/ch;->b(ZLjava/lang/Object;)V

    .line 127
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->a(Lcom/amap/api/maps2d/model/LatLng;FF)Lcom/amap/api/maps2d/model/GroundOverlayOptions;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 130
    :goto_4
    return-object v0

    :cond_0
    move v2, v1

    .line 123
    goto :goto_0

    :cond_1
    move v2, v1

    .line 124
    goto :goto_1

    :cond_2
    move v2, v1

    .line 125
    goto :goto_2

    :cond_3
    move v0, v1

    .line 126
    goto :goto_3

    .line 129
    :catch_0
    move-exception v0

    const-string v1, "GroundOverlayOptions"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public final positionFromBounds(Lcom/amap/api/maps2d/model/LatLngBounds;)Lcom/amap/api/maps2d/model/GroundOverlayOptions;
    .locals 4

    .prologue
    .line 151
    const-string v1, "positionFromBounds"

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->c:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Position has already been set using position: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->c:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/ch;->a(ZLjava/lang/Object;)V

    .line 154
    iput-object p1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->f:Lcom/amap/api/maps2d/model/LatLngBounds;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_1
    return-object p0

    .line 153
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    const-string v2, "GroundOverlayOptions"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public final transparency(F)Lcom/amap/api/maps2d/model/GroundOverlayOptions;
    .locals 3

    .prologue
    .line 206
    const-string v1, "transparency"

    .line 208
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    const-string v2, "Transparency must be in the range [0..1]"

    invoke-static {v0, v2}, Lcom/amap/api/mapcore2d/ch;->b(ZLjava/lang/Object;)V

    .line 209
    iput p1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->j:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_1
    return-object p0

    .line 208
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    const-string v2, "GroundOverlayOptions"

    invoke-static {v0, v2, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public final visible(Z)Lcom/amap/api/maps2d/model/GroundOverlayOptions;
    .locals 0

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->i:Z

    .line 195
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->a:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->b:Lcom/amap/api/maps2d/model/BitmapDescriptor;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 336
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->c:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 337
    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->d:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 338
    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->e:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 339
    iget-object v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->f:Lcom/amap/api/maps2d/model/LatLngBounds;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 340
    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->g:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 341
    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->h:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 342
    iget-boolean v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 343
    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 344
    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->k:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 345
    iget v0, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->l:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 346
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final zIndex(F)Lcom/amap/api/maps2d/model/GroundOverlayOptions;
    .locals 0

    .prologue
    .line 182
    iput p1, p0, Lcom/amap/api/maps2d/model/GroundOverlayOptions;->h:F

    .line 183
    return-object p0
.end method
