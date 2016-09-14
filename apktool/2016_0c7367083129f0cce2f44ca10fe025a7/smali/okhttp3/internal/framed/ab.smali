.class final Lokhttp3/internal/framed/ab;
.super Ljava/lang/Object;
.source "Hpack.java"


# instance fields
.field a:I

.field b:I

.field c:[Lokhttp3/internal/framed/x;

.field d:I

.field e:I

.field f:I

.field private final g:Lokio/Buffer;

.field private h:I

.field private i:Z


# direct methods
.method constructor <init>(Lokio/Buffer;)V
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/internal/framed/ab;-><init>(Lokio/Buffer;B)V

    .line 393
    return-void
.end method

.method private constructor <init>(Lokio/Buffer;B)V
    .locals 3

    .prologue
    const/16 v2, 0x1000

    const/4 v1, 0x0

    .line 395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    const v0, 0x7fffffff

    iput v0, p0, Lokhttp3/internal/framed/ab;->h:I

    .line 385
    const/16 v0, 0x8

    new-array v0, v0, [Lokhttp3/internal/framed/x;

    iput-object v0, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    .line 387
    iget-object v0, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/framed/ab;->d:I

    .line 388
    iput v1, p0, Lokhttp3/internal/framed/ab;->e:I

    .line 389
    iput v1, p0, Lokhttp3/internal/framed/ab;->f:I

    .line 396
    iput v2, p0, Lokhttp3/internal/framed/ab;->a:I

    .line 397
    iput v2, p0, Lokhttp3/internal/framed/ab;->b:I

    .line 398
    iput-object p1, p0, Lokhttp3/internal/framed/ab;->g:Lokio/Buffer;

    .line 399
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 402
    iget-object v0, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 403
    iget-object v0, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lokhttp3/internal/framed/ab;->d:I

    .line 404
    iput v2, p0, Lokhttp3/internal/framed/ab;->e:I

    .line 405
    iput v2, p0, Lokhttp3/internal/framed/ab;->f:I

    .line 406
    return-void
.end method

.method private a(III)V
    .locals 3

    .prologue
    .line 494
    if-ge p1, p2, :cond_0

    .line 495
    iget-object v0, p0, Lokhttp3/internal/framed/ab;->g:Lokio/Buffer;

    or-int v1, p3, p1

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 510
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/ab;->g:Lokio/Buffer;

    or-int v1, p3, p2

    invoke-virtual {v0, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 501
    sub-int v0, p1, p2

    .line 504
    :goto_1
    const/16 v1, 0x80

    if-lt v0, v1, :cond_1

    .line 505
    and-int/lit8 v1, v0, 0x7f

    .line 506
    iget-object v2, p0, Lokhttp3/internal/framed/ab;->g:Lokio/Buffer;

    or-int/lit16 v1, v1, 0x80

    invoke-virtual {v2, v1}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 507
    ushr-int/lit8 v0, v0, 0x7

    .line 508
    goto :goto_1

    .line 509
    :cond_1
    iget-object v1, p0, Lokhttp3/internal/framed/ab;->g:Lokio/Buffer;

    invoke-virtual {v1, v0}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    goto :goto_0
.end method

.method private a(Lokio/ByteString;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    move-result v0

    const/16 v1, 0x7f

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lokhttp3/internal/framed/ab;->a(III)V

    .line 514
    iget-object v0, p0, Lokhttp3/internal/framed/ab;->g:Lokio/Buffer;

    invoke-virtual {v0, p1}, Lokio/Buffer;->write(Lokio/ByteString;)Lokio/Buffer;

    .line 515
    return-void
.end method

.method private b(I)I
    .locals 6

    .prologue
    .line 410
    const/4 v1, 0x0

    .line 411
    if-lez p1, :cond_1

    .line 413
    iget-object v0, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iget v2, p0, Lokhttp3/internal/framed/ab;->d:I

    if-lt v0, v2, :cond_0

    if-lez p1, :cond_0

    .line 414
    iget-object v2, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    aget-object v2, v2, v0

    iget v2, v2, Lokhttp3/internal/framed/x;->j:I

    sub-int/2addr p1, v2

    .line 415
    iget v2, p0, Lokhttp3/internal/framed/ab;->f:I

    iget-object v3, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    aget-object v3, v3, v0

    iget v3, v3, Lokhttp3/internal/framed/x;->j:I

    sub-int/2addr v2, v3

    iput v2, p0, Lokhttp3/internal/framed/ab;->f:I

    .line 416
    iget v2, p0, Lokhttp3/internal/framed/ab;->e:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lokhttp3/internal/framed/ab;->e:I

    .line 417
    add-int/lit8 v1, v1, 0x1

    .line 413
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 419
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    iget v2, p0, Lokhttp3/internal/framed/ab;->d:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    iget v4, p0, Lokhttp3/internal/framed/ab;->d:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    iget v5, p0, Lokhttp3/internal/framed/ab;->e:I

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    iget-object v0, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    iget v2, p0, Lokhttp3/internal/framed/ab;->d:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lokhttp3/internal/framed/ab;->d:I

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v1

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 422
    iget v0, p0, Lokhttp3/internal/framed/ab;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/framed/ab;->d:I

    .line 424
    :cond_1
    return v1
.end method


# virtual methods
.method final a(I)V
    .locals 2

    .prologue
    .line 518
    iput p1, p0, Lokhttp3/internal/framed/ab;->a:I

    .line 519
    const/16 v0, 0x4000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 522
    iget v1, p0, Lokhttp3/internal/framed/ab;->b:I

    if-ne v1, v0, :cond_1

    .line 1536
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    iget v1, p0, Lokhttp3/internal/framed/ab;->b:I

    if-ge v0, v1, :cond_2

    .line 525
    iget v1, p0, Lokhttp3/internal/framed/ab;->h:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lokhttp3/internal/framed/ab;->h:I

    .line 528
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lokhttp3/internal/framed/ab;->i:Z

    .line 529
    iput v0, p0, Lokhttp3/internal/framed/ab;->b:I

    .line 1534
    iget v0, p0, Lokhttp3/internal/framed/ab;->b:I

    iget v1, p0, Lokhttp3/internal/framed/ab;->f:I

    if-ge v0, v1, :cond_0

    .line 1535
    iget v0, p0, Lokhttp3/internal/framed/ab;->b:I

    if-nez v0, :cond_3

    .line 1536
    invoke-direct {p0}, Lokhttp3/internal/framed/ab;->a()V

    goto :goto_0

    .line 1538
    :cond_3
    iget v0, p0, Lokhttp3/internal/framed/ab;->f:I

    iget v1, p0, Lokhttp3/internal/framed/ab;->b:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lokhttp3/internal/framed/ab;->b(I)I

    goto :goto_0
.end method

.method final a(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lokhttp3/internal/framed/x;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x20

    const/16 v2, 0x1f

    const/4 v3, 0x0

    .line 455
    iget-boolean v0, p0, Lokhttp3/internal/framed/ab;->i:Z

    if-eqz v0, :cond_1

    .line 456
    iget v0, p0, Lokhttp3/internal/framed/ab;->h:I

    iget v1, p0, Lokhttp3/internal/framed/ab;->b:I

    if-ge v0, v1, :cond_0

    .line 458
    iget v0, p0, Lokhttp3/internal/framed/ab;->h:I

    invoke-direct {p0, v0, v2, v4}, Lokhttp3/internal/framed/ab;->a(III)V

    .line 460
    :cond_0
    iput-boolean v3, p0, Lokhttp3/internal/framed/ab;->i:Z

    .line 461
    const v0, 0x7fffffff

    iput v0, p0, Lokhttp3/internal/framed/ab;->h:I

    .line 462
    iget v0, p0, Lokhttp3/internal/framed/ab;->b:I

    invoke-direct {p0, v0, v2, v4}, Lokhttp3/internal/framed/ab;->a(III)V

    .line 465
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_6

    .line 466
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/framed/x;

    .line 467
    iget-object v1, v0, Lokhttp3/internal/framed/x;->h:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    move-result-object v5

    .line 468
    iget-object v6, v0, Lokhttp3/internal/framed/x;->i:Lokio/ByteString;

    .line 469
    invoke-static {}, Lokhttp3/internal/framed/z;->b()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 470
    if-eqz v1, :cond_2

    .line 472
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0xf

    invoke-direct {p0, v0, v1, v3}, Lokhttp3/internal/framed/ab;->a(III)V

    .line 473
    invoke-direct {p0, v6}, Lokhttp3/internal/framed/ab;->a(Lokio/ByteString;)V

    .line 465
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 475
    :cond_2
    iget-object v1, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    invoke-static {v1, v0}, Lokhttp3/internal/c;->a([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    .line 476
    const/4 v7, -0x1

    if-eq v1, v7, :cond_3

    .line 478
    iget v0, p0, Lokhttp3/internal/framed/ab;->d:I

    sub-int v0, v1, v0

    invoke-static {}, Lokhttp3/internal/framed/z;->a()[Lokhttp3/internal/framed/x;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    const/16 v1, 0x7f

    const/16 v5, 0x80

    invoke-direct {p0, v0, v1, v5}, Lokhttp3/internal/framed/ab;->a(III)V

    goto :goto_1

    .line 482
    :cond_3
    iget-object v1, p0, Lokhttp3/internal/framed/ab;->g:Lokio/Buffer;

    const/16 v7, 0x40

    invoke-virtual {v1, v7}, Lokio/Buffer;->writeByte(I)Lokio/Buffer;

    .line 483
    invoke-direct {p0, v5}, Lokhttp3/internal/framed/ab;->a(Lokio/ByteString;)V

    .line 484
    invoke-direct {p0, v6}, Lokhttp3/internal/framed/ab;->a(Lokio/ByteString;)V

    .line 1428
    iget v1, v0, Lokhttp3/internal/framed/x;->j:I

    .line 1431
    iget v5, p0, Lokhttp3/internal/framed/ab;->b:I

    if-le v1, v5, :cond_4

    .line 1432
    invoke-direct {p0}, Lokhttp3/internal/framed/ab;->a()V

    goto :goto_1

    .line 1437
    :cond_4
    iget v5, p0, Lokhttp3/internal/framed/ab;->f:I

    add-int/2addr v5, v1

    iget v6, p0, Lokhttp3/internal/framed/ab;->b:I

    sub-int/2addr v5, v6

    .line 1438
    invoke-direct {p0, v5}, Lokhttp3/internal/framed/ab;->b(I)I

    .line 1440
    iget v5, p0, Lokhttp3/internal/framed/ab;->e:I

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    array-length v6, v6

    if-le v5, v6, :cond_5

    .line 1441
    iget-object v5, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [Lokhttp3/internal/framed/x;

    .line 1442
    iget-object v6, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    iget-object v7, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    array-length v7, v7

    iget-object v8, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    array-length v8, v8

    invoke-static {v6, v3, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1443
    iget-object v6, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lokhttp3/internal/framed/ab;->d:I

    .line 1444
    iput-object v5, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    .line 1446
    :cond_5
    iget v5, p0, Lokhttp3/internal/framed/ab;->d:I

    add-int/lit8 v6, v5, -0x1

    iput v6, p0, Lokhttp3/internal/framed/ab;->d:I

    .line 1447
    iget-object v6, p0, Lokhttp3/internal/framed/ab;->c:[Lokhttp3/internal/framed/x;

    aput-object v0, v6, v5

    .line 1448
    iget v0, p0, Lokhttp3/internal/framed/ab;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lokhttp3/internal/framed/ab;->e:I

    .line 1449
    iget v0, p0, Lokhttp3/internal/framed/ab;->f:I

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/framed/ab;->f:I

    goto :goto_1

    .line 489
    :cond_6
    return-void
.end method
