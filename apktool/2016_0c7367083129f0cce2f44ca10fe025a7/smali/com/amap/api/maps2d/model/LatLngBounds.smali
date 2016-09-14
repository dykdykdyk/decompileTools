.class public final Lcom/amap/api/maps2d/model/LatLngBounds;
.super Ljava/lang/Object;
.source "LatLngBounds.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Lcom/amap/api/maps2d/model/e;


# instance fields
.field private final a:I

.field public final northeast:Lcom/amap/api/maps2d/model/LatLng;

.field public final southwest:Lcom/amap/api/maps2d/model/LatLng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/amap/api/maps2d/model/e;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/e;-><init>()V

    sput-object v0, Lcom/amap/api/maps2d/model/LatLngBounds;->CREATOR:Lcom/amap/api/maps2d/model/e;

    return-void
.end method

.method constructor <init>(ILcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v2, "LatLngBounds"

    .line 26
    :try_start_0
    const-string v3, "null southwest"

    invoke-static {p2, v3}, Lcom/amap/api/mapcore2d/ch;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const-string v3, "null northeast"

    invoke-static {p3, v3}, Lcom/amap/api/mapcore2d/ch;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-wide v4, p3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v6, p2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_0

    :goto_0
    const-string v1, "southern latitude exceeds northern latitude (%s > %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 33
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-wide v6, p3, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    .line 34
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    .line 30
    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore2d/ch;->a(ZLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_1
    iput p1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->a:I

    .line 39
    iput-object p2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    .line 40
    iput-object p3, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 41
    return-void

    :cond_0
    move v0, v1

    .line 30
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    const-string v1, "LatLngBounds"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/amap/api/maps2d/model/LatLngBounds;-><init>(ILcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V

    .line 52
    return-void
.end method

.method static synthetic a(DD)D
    .locals 2

    .prologue
    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/maps2d/model/LatLngBounds;->c(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private a(D)Z
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/amap/api/maps2d/model/LatLngBounds;)Z
    .locals 12

    .prologue
    const/4 v0, 0x0

    .line 99
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    if-nez v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    add-double/2addr v2, v4

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    .line 106
    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    add-double/2addr v4, v6

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    sub-double/2addr v4, v6

    .line 108
    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    add-double/2addr v6, v8

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v6, v8

    .line 110
    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v8, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-object v1, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v10, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v8, v10

    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v10, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    add-double/2addr v8, v10

    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v10, v1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    sub-double/2addr v8, v10

    .line 112
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 113
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v1, v2, v8

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(DD)D
    .locals 2

    .prologue
    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/amap/api/maps2d/model/LatLngBounds;->d(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private b(D)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    iget-object v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    .line 172
    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    cmpg-double v2, v2, p1

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    cmpg-double v2, p1, v2

    if-gtz v2, :cond_1

    .line 174
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 172
    goto :goto_0

    .line 174
    :cond_2
    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    cmpg-double v2, v2, p1

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    cmpg-double v2, p1, v2

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public static builder()Lcom/amap/api/maps2d/model/LatLngBounds$Builder;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;

    invoke-direct {v0}, Lcom/amap/api/maps2d/model/LatLngBounds$Builder;-><init>()V

    return-object v0
.end method

.method private static c(DD)D
    .locals 4

    .prologue
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 145
    sub-double v0, p0, p2

    add-double/2addr v0, v2

    rem-double/2addr v0, v2

    return-wide v0
.end method

.method private static d(DD)D
    .locals 4

    .prologue
    const-wide v2, 0x4076800000000000L    # 360.0

    .line 150
    sub-double v0, p2, p0

    add-double/2addr v0, v2

    rem-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method final a()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->a:I

    return v0
.end method

.method public final contains(Lcom/amap/api/maps2d/model/LatLng;)Z
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds;->a(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 75
    invoke-direct {p0, v0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds;->b(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final contains(Lcom/amap/api/maps2d/model/LatLngBounds;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 79
    .line 80
    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {p0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 84
    invoke-virtual {p0, v1}, Lcom/amap/api/maps2d/model/LatLngBounds;->contains(Lcom/amap/api/maps2d/model/LatLng;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 183
    if-ne p0, p1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return v0

    .line 185
    :cond_1
    instance-of v2, p1, Lcom/amap/api/maps2d/model/LatLngBounds;

    if-nez v2, :cond_2

    move v0, v1

    .line 186
    goto :goto_0

    .line 187
    :cond_2
    check-cast p1, Lcom/amap/api/maps2d/model/LatLngBounds;

    .line 188
    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-object v3, p1, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 189
    invoke-virtual {v2, v3}, Lcom/amap/api/maps2d/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 179
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/amap/api/mapcore2d/ck;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final including(Lcom/amap/api/maps2d/model/LatLng;)Lcom/amap/api/maps2d/model/LatLngBounds;
    .locals 11

    .prologue
    .line 126
    iget-object v0, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v0, v0, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    .line 127
    iget-object v2, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v2, v2, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps2d/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 128
    iget-object v4, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v4, v4, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 129
    iget-object v6, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    iget-wide v6, v6, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 130
    iget-wide v8, p1, Lcom/amap/api/maps2d/model/LatLng;->longitude:D

    .line 131
    invoke-direct {p0, v8, v9}, Lcom/amap/api/maps2d/model/LatLngBounds;->b(D)Z

    move-result v10

    if-nez v10, :cond_0

    .line 132
    invoke-static {v6, v7, v8, v9}, Lcom/amap/api/maps2d/model/LatLngBounds;->c(DD)D

    .line 133
    invoke-static {v4, v5, v8, v9}, Lcom/amap/api/maps2d/model/LatLngBounds;->d(DD)D

    .line 139
    :cond_0
    new-instance v4, Lcom/amap/api/maps2d/model/LatLngBounds;

    new-instance v5, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v5, v0, v1, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    new-instance v0, Lcom/amap/api/maps2d/model/LatLng;

    invoke-direct {v0, v2, v3, v8, v9}, Lcom/amap/api/maps2d/model/LatLng;-><init>(DD)V

    invoke-direct {v4, v5, v0}, Lcom/amap/api/maps2d/model/LatLngBounds;-><init>(Lcom/amap/api/maps2d/model/LatLng;Lcom/amap/api/maps2d/model/LatLng;)V

    return-object v4
.end method

.method public final intersects(Lcom/amap/api/maps2d/model/LatLngBounds;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 92
    if-nez p1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/amap/api/maps2d/model/LatLngBounds;->a(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p1, p0}, Lcom/amap/api/maps2d/model/LatLngBounds;->a(Lcom/amap/api/maps2d/model/LatLngBounds;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "southwest"

    iget-object v3, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->southwest:Lcom/amap/api/maps2d/model/LatLng;

    .line 198
    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "northeast"

    iget-object v3, p0, Lcom/amap/api/maps2d/model/LatLngBounds;->northeast:Lcom/amap/api/maps2d/model/LatLng;

    .line 199
    invoke-static {v2, v3}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 197
    invoke-static {v0}, Lcom/amap/api/mapcore2d/ck;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 209
    invoke-static {p0, p1, p2}, Lcom/amap/api/maps2d/model/e;->a(Lcom/amap/api/maps2d/model/LatLngBounds;Landroid/os/Parcel;I)V

    .line 210
    return-void
.end method
