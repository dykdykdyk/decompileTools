.class final Lorg/threeten/bp/zone/b;
.super Lorg/threeten/bp/zone/i;
.source "StandardZoneRules.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field final a:[J

.field final b:[Lorg/threeten/bp/af;

.field final c:[J

.field final d:[Lorg/threeten/bp/af;

.field final e:[Lorg/threeten/bp/zone/f;

.field private final f:[Lorg/threeten/bp/m;

.field private final g:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Lorg/threeten/bp/zone/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([J[Lorg/threeten/bp/af;[J[Lorg/threeten/bp/af;[Lorg/threeten/bp/zone/f;)V
    .locals 8

    .prologue
    .line 175
    invoke-direct {p0}, Lorg/threeten/bp/zone/i;-><init>()V

    .line 101
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/threeten/bp/zone/b;->g:Ljava/util/concurrent/ConcurrentMap;

    .line 177
    iput-object p1, p0, Lorg/threeten/bp/zone/b;->a:[J

    .line 178
    iput-object p2, p0, Lorg/threeten/bp/zone/b;->b:[Lorg/threeten/bp/af;

    .line 179
    iput-object p3, p0, Lorg/threeten/bp/zone/b;->c:[J

    .line 180
    iput-object p4, p0, Lorg/threeten/bp/zone/b;->d:[Lorg/threeten/bp/af;

    .line 181
    iput-object p5, p0, Lorg/threeten/bp/zone/b;->e:[Lorg/threeten/bp/zone/f;

    .line 184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    const/4 v0, 0x0

    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_1

    .line 186
    aget-object v2, p4, v0

    .line 187
    add-int/lit8 v3, v0, 0x1

    aget-object v3, p4, v3

    .line 188
    new-instance v4, Lorg/threeten/bp/zone/e;

    aget-wide v6, p3, v0

    invoke-direct {v4, v6, v7, v2, v3}, Lorg/threeten/bp/zone/e;-><init>(JLorg/threeten/bp/af;Lorg/threeten/bp/af;)V

    .line 189
    invoke-virtual {v4}, Lorg/threeten/bp/zone/e;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1218
    iget-object v2, v4, Lorg/threeten/bp/zone/e;->a:Lorg/threeten/bp/m;

    .line 190
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    invoke-virtual {v4}, Lorg/threeten/bp/zone/e;->b()Lorg/threeten/bp/m;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_0
    invoke-virtual {v4}, Lorg/threeten/bp/zone/e;->b()Lorg/threeten/bp/m;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2218
    iget-object v2, v4, Lorg/threeten/bp/zone/e;->a:Lorg/threeten/bp/m;

    .line 194
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/threeten/bp/m;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/m;

    iput-object v0, p0, Lorg/threeten/bp/zone/b;->f:[Lorg/threeten/bp/m;

    .line 198
    return-void
.end method

.method private a(I)[Lorg/threeten/bp/zone/e;
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 423
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 424
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v4}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/threeten/bp/zone/e;

    .line 425
    if-eqz v0, :cond_0

    .line 436
    :goto_0
    return-object v0

    .line 428
    :cond_0
    iget-object v5, p0, Lorg/threeten/bp/zone/b;->e:[Lorg/threeten/bp/zone/f;

    .line 429
    array-length v0, v5

    new-array v3, v0, [Lorg/threeten/bp/zone/e;

    move v0, v1

    .line 430
    :goto_1
    array-length v2, v5

    if-ge v0, v2, :cond_4

    .line 431
    aget-object v6, v5, v0

    .line 12401
    iget-byte v2, v6, Lorg/threeten/bp/zone/f;->b:B

    if-gez v2, :cond_3

    .line 12402
    iget-object v2, v6, Lorg/threeten/bp/zone/f;->a:Lorg/threeten/bp/s;

    iget-object v7, v6, Lorg/threeten/bp/zone/f;->a:Lorg/threeten/bp/s;

    sget-object v8, Lorg/threeten/bp/a/p;->b:Lorg/threeten/bp/a/p;

    int-to-long v10, p1

    invoke-virtual {v8, v10, v11}, Lorg/threeten/bp/a/p;->a(J)Z

    move-result v8

    invoke-virtual {v7, v8}, Lorg/threeten/bp/s;->a(Z)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    iget-byte v8, v6, Lorg/threeten/bp/zone/f;->b:B

    add-int/2addr v7, v8

    invoke-static {p1, v2, v7}, Lorg/threeten/bp/j;->a(ILorg/threeten/bp/s;I)Lorg/threeten/bp/j;

    move-result-object v2

    .line 12403
    iget-object v7, v6, Lorg/threeten/bp/zone/f;->c:Lorg/threeten/bp/d;

    if-eqz v7, :cond_1

    .line 12404
    iget-object v7, v6, Lorg/threeten/bp/zone/f;->c:Lorg/threeten/bp/d;

    .line 12437
    new-instance v8, Lorg/threeten/bp/temporal/o;

    const/4 v9, 0x1

    invoke-direct {v8, v9, v7, v1}, Lorg/threeten/bp/temporal/o;-><init>(ILorg/threeten/bp/d;B)V

    .line 12404
    invoke-virtual {v2, v8}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/j;

    move-result-object v2

    .line 12412
    :cond_1
    :goto_2
    iget-boolean v7, v6, Lorg/threeten/bp/zone/f;->e:Z

    if-eqz v7, :cond_2

    .line 12413
    const-wide/16 v8, 0x1

    invoke-virtual {v2, v8, v9}, Lorg/threeten/bp/j;->e(J)Lorg/threeten/bp/j;

    move-result-object v2

    .line 12415
    :cond_2
    iget-object v7, v6, Lorg/threeten/bp/zone/f;->d:Lorg/threeten/bp/p;

    invoke-static {v2, v7}, Lorg/threeten/bp/m;->a(Lorg/threeten/bp/j;Lorg/threeten/bp/p;)Lorg/threeten/bp/m;

    move-result-object v2

    .line 12416
    iget-object v7, v6, Lorg/threeten/bp/zone/f;->f:Lorg/threeten/bp/zone/h;

    iget-object v8, v6, Lorg/threeten/bp/zone/f;->g:Lorg/threeten/bp/af;

    iget-object v9, v6, Lorg/threeten/bp/zone/f;->h:Lorg/threeten/bp/af;

    .line 12529
    sget-object v10, Lorg/threeten/bp/zone/g;->a:[I

    invoke-virtual {v7}, Lorg/threeten/bp/zone/h;->ordinal()I

    move-result v7

    aget v7, v10, v7

    packed-switch v7, :pswitch_data_0

    .line 12417
    :goto_3
    new-instance v7, Lorg/threeten/bp/zone/e;

    iget-object v8, v6, Lorg/threeten/bp/zone/f;->h:Lorg/threeten/bp/af;

    iget-object v6, v6, Lorg/threeten/bp/zone/f;->i:Lorg/threeten/bp/af;

    invoke-direct {v7, v2, v8, v6}, Lorg/threeten/bp/zone/e;-><init>(Lorg/threeten/bp/m;Lorg/threeten/bp/af;Lorg/threeten/bp/af;)V

    .line 431
    aput-object v7, v3, v0

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 12407
    :cond_3
    iget-object v2, v6, Lorg/threeten/bp/zone/f;->a:Lorg/threeten/bp/s;

    iget-byte v7, v6, Lorg/threeten/bp/zone/f;->b:B

    invoke-static {p1, v2, v7}, Lorg/threeten/bp/j;->a(ILorg/threeten/bp/s;I)Lorg/threeten/bp/j;

    move-result-object v2

    .line 12408
    iget-object v7, v6, Lorg/threeten/bp/zone/f;->c:Lorg/threeten/bp/d;

    if-eqz v7, :cond_1

    .line 12409
    iget-object v7, v6, Lorg/threeten/bp/zone/f;->c:Lorg/threeten/bp/d;

    invoke-static {v7}, Lorg/threeten/bp/temporal/n;->a(Lorg/threeten/bp/d;)Lorg/threeten/bp/temporal/m;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/threeten/bp/j;->b(Lorg/threeten/bp/temporal/m;)Lorg/threeten/bp/j;

    move-result-object v2

    goto :goto_2

    .line 13449
    :pswitch_0
    iget v7, v9, Lorg/threeten/bp/af;->g:I

    .line 12531
    sget-object v8, Lorg/threeten/bp/af;->d:Lorg/threeten/bp/af;

    .line 14449
    iget v8, v8, Lorg/threeten/bp/af;->g:I

    .line 12531
    sub-int/2addr v7, v8

    .line 12532
    int-to-long v8, v7

    invoke-virtual {v2, v8, v9}, Lorg/threeten/bp/m;->b(J)Lorg/threeten/bp/m;

    move-result-object v2

    goto :goto_3

    .line 15449
    :pswitch_1
    iget v7, v9, Lorg/threeten/bp/af;->g:I

    .line 16449
    iget v8, v8, Lorg/threeten/bp/af;->g:I

    .line 12535
    sub-int/2addr v7, v8

    .line 12536
    int-to-long v8, v7

    invoke-virtual {v2, v8, v9}, Lorg/threeten/bp/m;->b(J)Lorg/threeten/bp/m;

    move-result-object v2

    goto :goto_3

    .line 433
    :cond_4
    const/16 v0, 0x834

    if-ge p1, v0, :cond_5

    .line 434
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->g:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v4, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object v0, v3

    .line 436
    goto/16 :goto_0

    .line 12529
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(Lorg/threeten/bp/m;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->e:[Lorg/threeten/bp/zone/f;

    array-length v0, v0

    if-lez v0, :cond_6

    iget-object v0, p0, Lorg/threeten/bp/zone/b;->f:[Lorg/threeten/bp/m;

    iget-object v2, p0, Lorg/threeten/bp/zone/b;->f:[Lorg/threeten/bp/m;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Lorg/threeten/bp/m;->b(Lorg/threeten/bp/a/c;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5645
    iget-object v0, p1, Lorg/threeten/bp/m;->d:Lorg/threeten/bp/j;

    .line 5650
    iget v0, v0, Lorg/threeten/bp/j;->d:I

    .line 336
    invoke-direct {p0, v0}, Lorg/threeten/bp/zone/b;->a(I)[Lorg/threeten/bp/zone/e;

    move-result-object v3

    .line 337
    const/4 v0, 0x0

    .line 338
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v3, v2

    .line 7218
    iget-object v0, v1, Lorg/threeten/bp/zone/e;->a:Lorg/threeten/bp/m;

    .line 6389
    invoke-virtual {v1}, Lorg/threeten/bp/zone/e;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6390
    invoke-virtual {p1, v0}, Lorg/threeten/bp/m;->c(Lorg/threeten/bp/a/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7243
    iget-object v0, v1, Lorg/threeten/bp/zone/e;->b:Lorg/threeten/bp/af;

    .line 340
    :goto_1
    instance-of v5, v0, Lorg/threeten/bp/zone/e;

    if-nez v5, :cond_0

    .line 10243
    iget-object v1, v1, Lorg/threeten/bp/zone/e;->b:Lorg/threeten/bp/af;

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 376
    :cond_0
    :goto_2
    return-object v0

    .line 6393
    :cond_1
    invoke-virtual {v1}, Lorg/threeten/bp/zone/e;->b()Lorg/threeten/bp/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/threeten/bp/m;->c(Lorg/threeten/bp/a/c;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7254
    iget-object v0, v1, Lorg/threeten/bp/zone/e;->c:Lorg/threeten/bp/af;

    goto :goto_1

    .line 6399
    :cond_2
    invoke-virtual {p1, v0}, Lorg/threeten/bp/m;->c(Lorg/threeten/bp/a/c;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 8254
    iget-object v0, v1, Lorg/threeten/bp/zone/e;->c:Lorg/threeten/bp/af;

    goto :goto_1

    .line 6402
    :cond_3
    invoke-virtual {v1}, Lorg/threeten/bp/zone/e;->b()Lorg/threeten/bp/m;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/threeten/bp/m;->c(Lorg/threeten/bp/a/c;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9243
    iget-object v0, v1, Lorg/threeten/bp/zone/e;->b:Lorg/threeten/bp/af;

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 6405
    goto :goto_1

    .line 338
    :cond_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 348
    :cond_6
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->f:[Lorg/threeten/bp/m;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 349
    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 351
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->d:[Lorg/threeten/bp/af;

    aget-object v0, v0, v1

    goto :goto_2

    .line 353
    :cond_7
    if-gez v0, :cond_9

    .line 355
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    .line 361
    :cond_8
    :goto_3
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_b

    .line 363
    iget-object v1, p0, Lorg/threeten/bp/zone/b;->f:[Lorg/threeten/bp/m;

    aget-object v1, v1, v0

    .line 364
    iget-object v2, p0, Lorg/threeten/bp/zone/b;->f:[Lorg/threeten/bp/m;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    .line 365
    iget-object v3, p0, Lorg/threeten/bp/zone/b;->d:[Lorg/threeten/bp/af;

    div-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    .line 366
    iget-object v4, p0, Lorg/threeten/bp/zone/b;->d:[Lorg/threeten/bp/af;

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-object v4, v4, v0

    .line 10449
    iget v0, v4, Lorg/threeten/bp/af;->g:I

    .line 11449
    iget v5, v3, Lorg/threeten/bp/af;->g:I

    .line 367
    if-le v0, v5, :cond_a

    .line 369
    new-instance v0, Lorg/threeten/bp/zone/e;

    invoke-direct {v0, v1, v3, v4}, Lorg/threeten/bp/zone/e;-><init>(Lorg/threeten/bp/m;Lorg/threeten/bp/af;Lorg/threeten/bp/af;)V

    goto :goto_2

    .line 356
    :cond_9
    iget-object v1, p0, Lorg/threeten/bp/zone/b;->f:[Lorg/threeten/bp/m;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lorg/threeten/bp/zone/b;->f:[Lorg/threeten/bp/m;

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/threeten/bp/zone/b;->f:[Lorg/threeten/bp/m;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Lorg/threeten/bp/m;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 372
    :cond_a
    new-instance v0, Lorg/threeten/bp/zone/e;

    invoke-direct {v0, v2, v3, v4}, Lorg/threeten/bp/zone/e;-><init>(Lorg/threeten/bp/m;Lorg/threeten/bp/af;Lorg/threeten/bp/af;)V

    goto/16 :goto_2

    .line 376
    :cond_b
    iget-object v1, p0, Lorg/threeten/bp/zone/b;->d:[Lorg/threeten/bp/af;

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    goto/16 :goto_2
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/m;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/threeten/bp/m;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/threeten/bp/af;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/b;->c(Lorg/threeten/bp/m;)Ljava/lang/Object;

    move-result-object v0

    .line 320
    instance-of v1, v0, Lorg/threeten/bp/zone/e;

    if-eqz v1, :cond_1

    .line 321
    check-cast v0, Lorg/threeten/bp/zone/e;

    .line 4327
    invoke-virtual {v0}, Lorg/threeten/bp/zone/e;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4328
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    .line 4330
    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/threeten/bp/af;

    const/4 v2, 0x0

    .line 5243
    iget-object v3, v0, Lorg/threeten/bp/zone/e;->b:Lorg/threeten/bp/af;

    .line 4330
    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 5254
    iget-object v0, v0, Lorg/threeten/bp/zone/e;->c:Lorg/threeten/bp/af;

    .line 4330
    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 323
    :cond_1
    check-cast v0, Lorg/threeten/bp/af;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/g;)Lorg/threeten/bp/af;
    .locals 8

    .prologue
    .line 280
    .line 2546
    iget-wide v2, p1, Lorg/threeten/bp/g;->e:J

    .line 283
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->e:[Lorg/threeten/bp/zone/f;

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/threeten/bp/zone/b;->c:[J

    iget-object v1, p0, Lorg/threeten/bp/zone/b;->c:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    cmp-long v0, v2, v0

    if-lez v0, :cond_2

    .line 285
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->d:[Lorg/threeten/bp/af;

    iget-object v1, p0, Lorg/threeten/bp/zone/b;->d:[Lorg/threeten/bp/af;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 3449
    iget v0, v0, Lorg/threeten/bp/af;->g:I

    .line 2548
    int-to-long v0, v0

    add-long/2addr v0, v2

    .line 2549
    const-wide/32 v4, 0x15180

    invoke-static {v0, v1, v4, v5}, Lorg/threeten/bp/b/c;->e(JJ)J

    move-result-wide v0

    .line 2550
    invoke-static {v0, v1}, Lorg/threeten/bp/j;->a(J)Lorg/threeten/bp/j;

    move-result-object v0

    .line 3650
    iget v0, v0, Lorg/threeten/bp/j;->d:I

    .line 286
    invoke-direct {p0, v0}, Lorg/threeten/bp/zone/b;->a(I)[Lorg/threeten/bp/zone/e;

    move-result-object v4

    .line 287
    const/4 v1, 0x0

    .line 288
    const/4 v0, 0x0

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 289
    aget-object v1, v4, v0

    .line 290
    invoke-virtual {v1}, Lorg/threeten/bp/zone/e;->a()J

    move-result-wide v6

    cmp-long v5, v2, v6

    if-gez v5, :cond_0

    .line 4243
    iget-object v0, v1, Lorg/threeten/bp/zone/e;->b:Lorg/threeten/bp/af;

    .line 303
    :goto_1
    return-object v0

    .line 288
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4254
    :cond_1
    iget-object v0, v1, Lorg/threeten/bp/zone/e;->c:Lorg/threeten/bp/af;

    goto :goto_1

    .line 298
    :cond_2
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->c:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 299
    if-gez v0, :cond_3

    .line 301
    neg-int v0, v0

    add-int/lit8 v0, v0, -0x2

    .line 303
    :cond_3
    iget-object v1, p0, Lorg/threeten/bp/zone/b;->d:[Lorg/threeten/bp/af;

    add-int/lit8 v0, v0, 0x1

    aget-object v0, v1, v0

    goto :goto_1
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->c:[J

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/m;Lorg/threeten/bp/af;)Z
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0, p1}, Lorg/threeten/bp/zone/b;->a(Lorg/threeten/bp/m;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final b(Lorg/threeten/bp/m;)Lorg/threeten/bp/zone/e;
    .locals 2

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lorg/threeten/bp/zone/b;->c(Lorg/threeten/bp/m;)Ljava/lang/Object;

    move-result-object v0

    .line 329
    instance-of v1, v0, Lorg/threeten/bp/zone/e;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/threeten/bp/zone/e;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 571
    if-ne p0, p1, :cond_1

    .line 585
    :cond_0
    :goto_0
    return v0

    .line 574
    :cond_1
    instance-of v2, p1, Lorg/threeten/bp/zone/b;

    if-eqz v2, :cond_3

    .line 575
    check-cast p1, Lorg/threeten/bp/zone/b;

    .line 576
    iget-object v2, p0, Lorg/threeten/bp/zone/b;->a:[J

    iget-object v3, p1, Lorg/threeten/bp/zone/b;->a:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/threeten/bp/zone/b;->b:[Lorg/threeten/bp/af;

    iget-object v3, p1, Lorg/threeten/bp/zone/b;->b:[Lorg/threeten/bp/af;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/threeten/bp/zone/b;->c:[J

    iget-object v3, p1, Lorg/threeten/bp/zone/b;->c:[J

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/threeten/bp/zone/b;->d:[Lorg/threeten/bp/af;

    iget-object v3, p1, Lorg/threeten/bp/zone/b;->d:[Lorg/threeten/bp/af;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/threeten/bp/zone/b;->e:[Lorg/threeten/bp/zone/f;

    iget-object v3, p1, Lorg/threeten/bp/zone/b;->e:[Lorg/threeten/bp/zone/f;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 582
    :cond_3
    instance-of v2, p1, Lorg/threeten/bp/zone/j;

    if-eqz v2, :cond_5

    .line 583
    invoke-virtual {p0}, Lorg/threeten/bp/zone/b;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lorg/threeten/bp/g;->a:Lorg/threeten/bp/g;

    invoke-virtual {p0, v2}, Lorg/threeten/bp/zone/b;->a(Lorg/threeten/bp/g;)Lorg/threeten/bp/af;

    move-result-object v2

    check-cast p1, Lorg/threeten/bp/zone/j;

    sget-object v3, Lorg/threeten/bp/g;->a:Lorg/threeten/bp/g;

    .line 17425
    iget-object v3, p1, Lorg/threeten/bp/zone/j;->a:Lorg/threeten/bp/af;

    .line 583
    invoke-virtual {v2, v3}, Lorg/threeten/bp/af;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    move v0, v1

    .line 585
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lorg/threeten/bp/zone/b;->a:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    iget-object v1, p0, Lorg/threeten/bp/zone/b;->b:[Lorg/threeten/bp/af;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/threeten/bp/zone/b;->c:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/threeten/bp/zone/b;->d:[Lorg/threeten/bp/af;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/threeten/bp/zone/b;->e:[Lorg/threeten/bp/zone/f;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StandardZoneRules[currentStandardOffset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/threeten/bp/zone/b;->b:[Lorg/threeten/bp/af;

    iget-object v2, p0, Lorg/threeten/bp/zone/b;->b:[Lorg/threeten/bp/af;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
