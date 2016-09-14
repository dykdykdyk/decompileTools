.class Lcom/amap/api/mapcore2d/az;
.super Ljava/lang/Object;
.source "MemoryTileManager.java"


# instance fields
.field protected final a:[Lcom/amap/api/mapcore2d/az$a;

.field protected final b:I

.field protected final c:I

.field protected final d:[Lcom/amap/api/mapcore2d/az$a;

.field private e:Z

.field private f:J

.field private g:Lcom/amap/api/mapcore2d/am;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(IIZJLcom/amap/api/mapcore2d/am;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/az;->e:Z

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/az;->f:J

    .line 262
    iput-object v2, p0, Lcom/amap/api/mapcore2d/az;->h:Landroid/graphics/Paint;

    .line 263
    iput-object v2, p0, Lcom/amap/api/mapcore2d/az;->i:Landroid/graphics/Path;

    .line 31
    iput p1, p0, Lcom/amap/api/mapcore2d/az;->b:I

    .line 32
    iput p2, p0, Lcom/amap/api/mapcore2d/az;->c:I

    .line 33
    iput-object p6, p0, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/am;

    .line 34
    iput-boolean p3, p0, Lcom/amap/api/mapcore2d/az;->e:Z

    .line 35
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p4

    iput-wide v0, p0, Lcom/amap/api/mapcore2d/az;->f:J

    .line 37
    iget v0, p0, Lcom/amap/api/mapcore2d/az;->b:I

    if-lez v0, :cond_0

    .line 38
    iget v0, p0, Lcom/amap/api/mapcore2d/az;->b:I

    new-array v0, v0, [Lcom/amap/api/mapcore2d/az$a;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    .line 39
    iget v0, p0, Lcom/amap/api/mapcore2d/az;->c:I

    new-array v0, v0, [Lcom/amap/api/mapcore2d/az$a;

    iput-object v0, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    iput-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    .line 42
    iput-object v2, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    goto :goto_0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->h:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/az;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/amap/api/mapcore2d/az;->h:Landroid/graphics/Paint;

    return-object p1
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/az;Landroid/graphics/Path;)Landroid/graphics/Path;
    .locals 0

    .prologue
    .line 18
    iput-object p1, p0, Lcom/amap/api/mapcore2d/az;->i:Landroid/graphics/Path;

    return-object p1
.end method

.method private a(Landroid/graphics/Bitmap;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/bu;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v0, Lcom/amap/api/mapcore2d/az$1;

    invoke-direct {v0, p0, p2}, Lcom/amap/api/mapcore2d/az$1;-><init>(Lcom/amap/api/mapcore2d/az;Ljava/util/List;)V

    .line 315
    new-instance v1, Lcom/amap/api/mapcore2d/h;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/amap/api/mapcore2d/h;-><init>(Landroid/graphics/Bitmap$Config;)V

    .line 316
    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore2d/h;->a(Landroid/graphics/Bitmap;)V

    .line 317
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore2d/h;->a(Lcom/amap/api/mapcore2d/i;)V

    .line 318
    return-void
.end method

.method static synthetic b(Lcom/amap/api/mapcore2d/az;)Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->i:Landroid/graphics/Path;

    return-object v0
.end method

.method private d()J
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected a()I
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 191
    move v0, v1

    :goto_0
    iget v2, p0, Lcom/amap/api/mapcore2d/az;->c:I

    if-ge v0, v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 196
    :goto_1
    iget v2, p0, Lcom/amap/api/mapcore2d/az;->b:I

    if-ge v0, v2, :cond_4

    .line 198
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v0

    move-object v3, v2

    move v2, v1

    .line 200
    :goto_2
    iget v4, p0, Lcom/amap/api/mapcore2d/az;->c:I

    if-ge v2, v4, :cond_1

    .line 201
    iget-object v4, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v4, v4, v2

    if-nez v4, :cond_2

    .line 202
    iget-object v4, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    aput-object v3, v4, v2

    .line 196
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 206
    :cond_2
    iget-object v4, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v4, v4, v2

    iget-wide v4, v4, Lcom/amap/api/mapcore2d/az$a;->d:J

    iget-wide v6, v3, Lcom/amap/api/mapcore2d/az$a;->d:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 207
    iget-object v4, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v4, v4, v2

    .line 208
    iget-object v5, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    aput-object v3, v5, v2

    move-object v3, v4

    .line 200
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 214
    :cond_4
    const/4 v0, -0x1

    move v2, v0

    move v0, v1

    .line 216
    :goto_3
    iget v3, p0, Lcom/amap/api/mapcore2d/az;->c:I

    if-ge v0, v3, :cond_6

    .line 217
    iget-object v3, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v3, v3, v0

    if-eqz v3, :cond_5

    .line 218
    iget-object v3, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v3, v3, v0

    iput-boolean v1, v3, Lcom/amap/api/mapcore2d/az$a;->c:Z

    .line 219
    if-gez v2, :cond_5

    .line 220
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->d:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/amap/api/mapcore2d/az$a;->e:I

    .line 216
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 224
    :cond_6
    return v2
.end method

.method protected a(Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 49
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_1

    :cond_0
    move v0, v2

    .line 78
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 53
    :goto_1
    iget v3, p0, Lcom/amap/api/mapcore2d/az;->b:I

    if-ge v0, v3, :cond_6

    .line 54
    iget-object v3, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v3, v3, v0

    if-eqz v3, :cond_5

    .line 57
    iget-object v3, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/amap/api/mapcore2d/az$a;->b:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 60
    iget-object v3, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/amap/api/mapcore2d/az$a;->c:Z

    if-nez v3, :cond_2

    move v0, v2

    .line 61
    goto :goto_0

    .line 64
    :cond_2
    iget-boolean v3, p0, Lcom/amap/api/mapcore2d/az;->e:Z

    if-ne v3, v4, :cond_3

    .line 65
    invoke-direct {p0}, Lcom/amap/api/mapcore2d/az;->d()J

    move-result-wide v4

    .line 66
    iget-object v3, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v3, v3, v0

    iget-wide v6, v3, Lcom/amap/api/mapcore2d/az$a;->f:J

    sub-long/2addr v4, v6

    iget-wide v6, p0, Lcom/amap/api/mapcore2d/az;->f:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 67
    iget-object v3, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v3, v0

    iput-boolean v1, v0, Lcom/amap/api/mapcore2d/az$a;->c:Z

    move v0, v2

    .line 68
    goto :goto_0

    .line 71
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    move v0, v2

    .line 72
    goto :goto_0

    .line 74
    :cond_4
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v1, v1, v0

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/az;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/mapcore2d/az$a;->d:J

    goto :goto_0

    .line 53
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move v0, v2

    .line 78
    goto :goto_0
.end method

.method protected declared-synchronized a([B[BZLjava/util/List;Ljava/lang/String;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[BZ",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/mapcore2d/bu;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v0, -0x1

    .line 107
    monitor-enter p0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p4, :cond_1

    .line 179
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 111
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/az;->b()I

    move-result v1

    .line 114
    if-gez v1, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/amap/api/mapcore2d/az;->a()I

    move-result v1

    .line 118
    :cond_2
    if-ltz v1, :cond_0

    .line 121
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    .line 127
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 128
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 129
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    .line 132
    :cond_3
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 133
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 134
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_4
    if-ne p3, v6, :cond_9

    if-eqz p1, :cond_9

    .line 139
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    array-length v4, p1

    .line 140
    invoke-static {p1, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :cond_5
    :goto_1
    if-eqz p4, :cond_6

    .line 155
    :try_start_2
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/am;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/am;->a:Lcom/amap/api/mapcore2d/au;

    iget v3, v3, Lcom/amap/api/mapcore2d/au;->a:I

    iget-object v4, p0, Lcom/amap/api/mapcore2d/az;->g:Lcom/amap/api/mapcore2d/am;

    iget-object v4, v4, Lcom/amap/api/mapcore2d/am;->a:Lcom/amap/api/mapcore2d/au;

    iget v4, v4, Lcom/amap/api/mapcore2d/au;->a:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    .line 158
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, p4}, Lcom/amap/api/mapcore2d/az;->a(Landroid/graphics/Bitmap;Ljava/util/List;)V

    .line 165
    :cond_6
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    if-nez v2, :cond_7

    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/amap/api/mapcore2d/az$a;->g:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    .line 171
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/amap/api/mapcore2d/az$a;->c:Z

    .line 172
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    iput-object p5, v0, Lcom/amap/api/mapcore2d/az$a;->b:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/az;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/mapcore2d/az$a;->d:J

    .line 175
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/az;->e:Z

    if-ne v0, v6, :cond_8

    .line 176
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, v1

    invoke-direct {p0}, Lcom/amap/api/mapcore2d/az;->d()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/amap/api/mapcore2d/az$a;->f:J

    :cond_8
    move v0, v1

    .line 179
    goto/16 :goto_0

    .line 143
    :catch_0
    move-exception v2

    const-string v3, "BitmapManager"

    const-string v4, "setBitmapData"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 145
    :cond_9
    if-eqz p2, :cond_5

    .line 147
    :try_start_3
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    array-length v4, p2

    .line 148
    invoke-static {p2, v3, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v2, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 152
    :catch_1
    move-exception v2

    goto :goto_1

    .line 151
    :catch_2
    move-exception v2

    :try_start_4
    const-string v3, "BitmapManager"

    const-string v4, "setBitmapData"

    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 144
    :catch_3
    move-exception v2

    goto/16 :goto_1
.end method

.method protected a(I)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 82
    if-ltz p1, :cond_0

    iget v1, p0, Lcom/amap/api/mapcore2d/az;->b:I

    if-lt p1, v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-object v0

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 229
    const/4 v1, -0x1

    .line 231
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/amap/api/mapcore2d/az;->b:I

    if-ge v0, v2, :cond_2

    .line 232
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 233
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    new-instance v2, Lcom/amap/api/mapcore2d/az$a;

    invoke-direct {v2, p0}, Lcom/amap/api/mapcore2d/az$a;-><init>(Lcom/amap/api/mapcore2d/az;)V

    aput-object v2, v1, v0

    .line 234
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v1, v1, v0

    iput v0, v1, Lcom/amap/api/mapcore2d/az$a;->e:I

    .line 242
    :goto_1
    return v0

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v2, v2, v0

    iget-boolean v2, v2, Lcom/amap/api/mapcore2d/az$a;->c:Z

    if-nez v2, :cond_1

    if-gez v1, :cond_1

    move v1, v0

    .line 231
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 242
    goto :goto_1
.end method

.method protected c()V
    .locals 3

    .prologue
    .line 248
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/amap/api/mapcore2d/az;->b:I

    if-ge v0, v1, :cond_2

    .line 249
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 252
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    .line 253
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 257
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore2d/az;->a:[Lcom/amap/api/mapcore2d/az$a;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/amap/api/mapcore2d/az$a;->a:Landroid/graphics/Bitmap;

    .line 248
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_2
    return-void
.end method
