.class final Lorg/threeten/bp/format/o;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/format/l;


# static fields
.field static final a:[I


# instance fields
.field final b:Lorg/threeten/bp/temporal/q;

.field final c:I

.field final d:I

.field final e:Lorg/threeten/bp/format/ad;

.field final f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2274
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/threeten/bp/format/o;->a:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
    .end array-data
.end method

.method constructor <init>(Lorg/threeten/bp/temporal/q;IILorg/threeten/bp/format/ad;)V
    .locals 1

    .prologue
    .line 2301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2303
    iput-object p1, p0, Lorg/threeten/bp/format/o;->b:Lorg/threeten/bp/temporal/q;

    .line 2304
    iput p2, p0, Lorg/threeten/bp/format/o;->c:I

    .line 2305
    iput p3, p0, Lorg/threeten/bp/format/o;->d:I

    .line 2306
    iput-object p4, p0, Lorg/threeten/bp/format/o;->e:Lorg/threeten/bp/format/ad;

    .line 2307
    const/4 v0, 0x0

    iput v0, p0, Lorg/threeten/bp/format/o;->f:I

    .line 2308
    return-void
.end method

.method constructor <init>(Lorg/threeten/bp/temporal/q;IILorg/threeten/bp/format/ad;I)V
    .locals 0

    .prologue
    .line 2320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2322
    iput-object p1, p0, Lorg/threeten/bp/format/o;->b:Lorg/threeten/bp/temporal/q;

    .line 2323
    iput p2, p0, Lorg/threeten/bp/format/o;->c:I

    .line 2324
    iput p3, p0, Lorg/threeten/bp/format/o;->d:I

    .line 2325
    iput-object p4, p0, Lorg/threeten/bp/format/o;->e:Lorg/threeten/bp/format/ad;

    .line 2326
    iput p5, p0, Lorg/threeten/bp/format/o;->f:I

    .line 2327
    return-void
.end method

.method private a(Lorg/threeten/bp/format/w;JII)I
    .locals 6

    .prologue
    .line 2526
    iget-object v1, p0, Lorg/threeten/bp/format/o;->b:Lorg/threeten/bp/temporal/q;

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/threeten/bp/format/w;->a(Lorg/threeten/bp/temporal/q;JII)I

    move-result v0

    return v0
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 2410
    iget v0, p0, Lorg/threeten/bp/format/o;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/threeten/bp/format/o;->f:I

    if-lez v0, :cond_1

    iget v0, p0, Lorg/threeten/bp/format/o;->c:I

    iget v1, p0, Lorg/threeten/bp/format/o;->d:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/threeten/bp/format/o;->e:Lorg/threeten/bp/format/ad;

    sget-object v1, Lorg/threeten/bp/format/ad;->d:Lorg/threeten/bp/format/ad;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lorg/threeten/bp/format/w;Ljava/lang/CharSequence;I)I
    .locals 20

    .prologue
    .line 2416
    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v12

    .line 2417
    move/from16 v0, p3

    if-ne v0, v12, :cond_0

    .line 2418
    xor-int/lit8 v2, p3, -0x1

    .line 2513
    :goto_0
    return v2

    .line 2420
    :cond_0
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 2421
    const/4 v4, 0x0

    .line 2422
    const/4 v3, 0x0

    .line 8161
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/threeten/bp/format/w;->b:Lorg/threeten/bp/format/ab;

    .line 8194
    iget-char v5, v5, Lorg/threeten/bp/format/ab;->c:C

    .line 2423
    if-ne v2, v5, :cond_4

    .line 2424
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/threeten/bp/format/o;->e:Lorg/threeten/bp/format/ad;

    const/4 v5, 0x1

    .line 8272
    move-object/from16 v0, p1

    iget-boolean v6, v0, Lorg/threeten/bp/format/w;->f:Z

    .line 2424
    move-object/from16 v0, p0

    iget v2, v0, Lorg/threeten/bp/format/o;->c:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/threeten/bp/format/o;->d:I

    if-ne v2, v7, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v3, v5, v6, v2}, Lorg/threeten/bp/format/ad;->a(ZZZ)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2425
    xor-int/lit8 v2, p3, -0x1

    goto :goto_0

    .line 2424
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 2427
    :cond_2
    const/4 v2, 0x1

    .line 2428
    add-int/lit8 p3, p3, 0x1

    move v3, v4

    move/from16 v6, p3

    .line 11272
    :goto_2
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/threeten/bp/format/w;->f:Z

    .line 2440
    if-nez v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/threeten/bp/format/o;->b()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lorg/threeten/bp/format/o;->c:I

    move v11, v4

    .line 2441
    :goto_3
    add-int v13, v6, v11

    .line 2442
    if-le v13, v12, :cond_9

    .line 2443
    xor-int/lit8 v2, v6, -0x1

    goto :goto_0

    .line 9161
    :cond_4
    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/threeten/bp/format/w;->b:Lorg/threeten/bp/format/ab;

    .line 9223
    iget-char v5, v5, Lorg/threeten/bp/format/ab;->d:C

    .line 2429
    if-ne v2, v5, :cond_7

    .line 2430
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/threeten/bp/format/o;->e:Lorg/threeten/bp/format/ad;

    const/4 v5, 0x0

    .line 9272
    move-object/from16 v0, p1

    iget-boolean v6, v0, Lorg/threeten/bp/format/w;->f:Z

    .line 2430
    move-object/from16 v0, p0

    iget v2, v0, Lorg/threeten/bp/format/o;->c:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/threeten/bp/format/o;->d:I

    if-ne v2, v7, :cond_5

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {v4, v5, v6, v2}, Lorg/threeten/bp/format/ad;->a(ZZZ)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2431
    xor-int/lit8 v2, p3, -0x1

    goto :goto_0

    .line 2430
    :cond_5
    const/4 v2, 0x0

    goto :goto_4

    .line 2433
    :cond_6
    const/4 v2, 0x1

    .line 2434
    add-int/lit8 p3, p3, 0x1

    move/from16 v6, p3

    move/from16 v18, v2

    move v2, v3

    move/from16 v3, v18

    goto :goto_2

    .line 2436
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/threeten/bp/format/o;->e:Lorg/threeten/bp/format/ad;

    sget-object v5, Lorg/threeten/bp/format/ad;->b:Lorg/threeten/bp/format/ad;

    if-ne v2, v5, :cond_1a

    .line 10272
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lorg/threeten/bp/format/w;->f:Z

    .line 2436
    if-eqz v2, :cond_1a

    .line 2437
    xor-int/lit8 v2, p3, -0x1

    goto/16 :goto_0

    .line 2440
    :cond_8
    const/4 v4, 0x1

    move v11, v4

    goto :goto_3

    .line 12272
    :cond_9
    move-object/from16 v0, p1

    iget-boolean v4, v0, Lorg/threeten/bp/format/w;->f:Z

    .line 2445
    if-nez v4, :cond_a

    invoke-direct/range {p0 .. p0}, Lorg/threeten/bp/format/o;->b()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget v4, v0, Lorg/threeten/bp/format/o;->d:I

    :goto_5
    move-object/from16 v0, p0

    iget v5, v0, Lorg/threeten/bp/format/o;->f:I

    const/4 v7, 0x0

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int v7, v4, v5

    .line 2446
    const-wide/16 v8, 0x0

    .line 2447
    const/4 v5, 0x0

    .line 2449
    const/4 v4, 0x0

    move v10, v4

    move-object v4, v5

    move v5, v6

    :goto_6
    const/4 v14, 0x2

    if-ge v10, v14, :cond_19

    .line 2450
    add-int/2addr v7, v5

    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 2451
    :goto_7
    if-ge v5, v14, :cond_f

    .line 2452
    add-int/lit8 v7, v5, 0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    .line 13161
    move-object/from16 v0, p1

    iget-object v15, v0, Lorg/threeten/bp/format/w;->b:Lorg/threeten/bp/format/ab;

    .line 2453
    invoke-virtual {v15, v5}, Lorg/threeten/bp/format/ab;->a(C)I

    move-result v5

    .line 2454
    if-gez v5, :cond_c

    .line 2455
    add-int/lit8 v5, v7, -0x1

    .line 2456
    if-ge v5, v13, :cond_f

    .line 2457
    xor-int/lit8 v2, v6, -0x1

    goto/16 :goto_0

    .line 2445
    :cond_b
    const/16 v4, 0x9

    goto :goto_5

    .line 2461
    :cond_c
    sub-int v15, v7, v6

    const/16 v16, 0x12

    move/from16 v0, v16

    if-le v15, v0, :cond_e

    .line 2462
    if-nez v4, :cond_d

    .line 2463
    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    .line 2465
    :cond_d
    sget-object v15, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v4, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    int-to-long v0, v5

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move v5, v7

    goto :goto_7

    .line 2467
    :cond_e
    const-wide/16 v16, 0xa

    mul-long v8, v8, v16

    int-to-long v0, v5

    move-wide/from16 v16, v0

    add-long v8, v8, v16

    move v5, v7

    .line 2469
    goto :goto_7

    .line 2470
    :cond_f
    move-object/from16 v0, p0

    iget v7, v0, Lorg/threeten/bp/format/o;->f:I

    if-lez v7, :cond_10

    if-nez v10, :cond_10

    .line 2472
    sub-int v4, v5, v6

    .line 2473
    move-object/from16 v0, p0

    iget v5, v0, Lorg/threeten/bp/format/o;->f:I

    sub-int/2addr v4, v5

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2475
    const-wide/16 v8, 0x0

    .line 2476
    const/4 v5, 0x0

    .line 2449
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move-object v4, v5

    move v5, v6

    goto :goto_6

    :cond_10
    move v7, v5

    move-wide/from16 v18, v8

    move-object v8, v4

    move-wide/from16 v4, v18

    .line 2481
    :goto_8
    if-eqz v3, :cond_15

    .line 2482
    if-eqz v8, :cond_13

    .line 2483
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 13272
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lorg/threeten/bp/format/w;->f:Z

    .line 2483
    if-eqz v2, :cond_11

    .line 2484
    add-int/lit8 v2, v6, -0x1

    xor-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 2486
    :cond_11
    invoke-virtual {v8}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    .line 2505
    :goto_9
    if-eqz v2, :cond_17

    .line 2506
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0x3f

    if-le v3, v4, :cond_12

    .line 2508
    sget-object v3, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 2509
    add-int/lit8 v7, v7, -0x1

    .line 2511
    :cond_12
    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/threeten/bp/format/o;->a(Lorg/threeten/bp/format/w;JII)I

    move-result v2

    goto/16 :goto_0

    .line 2488
    :cond_13
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-nez v2, :cond_14

    .line 14272
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lorg/threeten/bp/format/w;->f:Z

    .line 2488
    if-eqz v2, :cond_14

    .line 2489
    add-int/lit8 v2, v6, -0x1

    xor-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 2491
    :cond_14
    neg-long v4, v4

    move-object v2, v8

    goto :goto_9

    .line 2493
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/threeten/bp/format/o;->e:Lorg/threeten/bp/format/ad;

    sget-object v9, Lorg/threeten/bp/format/ad;->e:Lorg/threeten/bp/format/ad;

    if-ne v3, v9, :cond_18

    .line 15272
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lorg/threeten/bp/format/w;->f:Z

    .line 2493
    if-eqz v3, :cond_18

    .line 2494
    sub-int v3, v7, v6

    .line 2495
    if-eqz v2, :cond_16

    .line 2496
    move-object/from16 v0, p0

    iget v2, v0, Lorg/threeten/bp/format/o;->c:I

    if-gt v3, v2, :cond_18

    .line 2497
    add-int/lit8 v2, v6, -0x1

    xor-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 2500
    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lorg/threeten/bp/format/o;->c:I

    if-le v3, v2, :cond_18

    .line 2501
    xor-int/lit8 v2, v6, -0x1

    goto/16 :goto_0

    :cond_17
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 2513
    invoke-direct/range {v2 .. v7}, Lorg/threeten/bp/format/o;->a(Lorg/threeten/bp/format/w;JII)I

    move-result v2

    goto/16 :goto_0

    :cond_18
    move-object v2, v8

    goto :goto_9

    :cond_19
    move v7, v5

    move-wide/from16 v18, v8

    move-object v8, v4

    move-wide/from16 v4, v18

    goto/16 :goto_8

    :cond_1a
    move v2, v3

    move/from16 v6, p3

    move v3, v4

    goto/16 :goto_2
.end method

.method final a()Lorg/threeten/bp/format/o;
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 2335
    iget v0, p0, Lorg/threeten/bp/format/o;->f:I

    if-ne v0, v5, :cond_0

    .line 2338
    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Lorg/threeten/bp/format/o;

    iget-object v1, p0, Lorg/threeten/bp/format/o;->b:Lorg/threeten/bp/temporal/q;

    iget v2, p0, Lorg/threeten/bp/format/o;->c:I

    iget v3, p0, Lorg/threeten/bp/format/o;->d:I

    iget-object v4, p0, Lorg/threeten/bp/format/o;->e:Lorg/threeten/bp/format/ad;

    invoke-direct/range {v0 .. v5}, Lorg/threeten/bp/format/o;-><init>(Lorg/threeten/bp/temporal/q;IILorg/threeten/bp/format/ad;I)V

    move-object p0, v0

    goto :goto_0
.end method

.method public final a(Lorg/threeten/bp/format/y;Ljava/lang/StringBuilder;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 2353
    iget-object v0, p0, Lorg/threeten/bp/format/o;->b:Lorg/threeten/bp/temporal/q;

    invoke-virtual {p1, v0}, Lorg/threeten/bp/format/y;->a(Lorg/threeten/bp/temporal/q;)Ljava/lang/Long;

    move-result-object v0

    .line 2354
    if-nez v0, :cond_0

    .line 2395
    :goto_0
    return v1

    .line 2357
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 4230
    iget-object v4, p1, Lorg/threeten/bp/format/y;->c:Lorg/threeten/bp/format/ab;

    .line 2359
    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v0, v2, v6

    if-nez v0, :cond_1

    const-string v0, "9223372036854775808"

    .line 2360
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Lorg/threeten/bp/format/o;->d:I

    if-le v5, v6, :cond_2

    .line 2361
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Field "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/threeten/bp/format/o;->b:Lorg/threeten/bp/temporal/q;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " cannot be printed as the value "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exceeds the maximum print width of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/threeten/bp/format/o;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2359
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2365
    :cond_2
    invoke-virtual {v4, v0}, Lorg/threeten/bp/format/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2367
    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-ltz v0, :cond_4

    .line 2368
    sget-object v0, Lorg/threeten/bp/format/i;->a:[I

    iget-object v6, p0, Lorg/threeten/bp/format/o;->e:Lorg/threeten/bp/format/ad;

    invoke-virtual {v6}, Lorg/threeten/bp/format/ad;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_2
    move v0, v1

    .line 2391
    :goto_3
    iget v1, p0, Lorg/threeten/bp/format/o;->c:I

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_5

    .line 7164
    iget-char v1, v4, Lorg/threeten/bp/format/ab;->b:C

    .line 2392
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2391
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2370
    :pswitch_0
    iget v0, p0, Lorg/threeten/bp/format/o;->c:I

    const/16 v6, 0x13

    if-ge v0, v6, :cond_3

    sget-object v0, Lorg/threeten/bp/format/o;->a:[I

    iget v6, p0, Lorg/threeten/bp/format/o;->c:I

    aget v0, v0, v6

    int-to-long v6, v0

    cmp-long v0, v2, v6

    if-ltz v0, :cond_3

    .line 5194
    iget-char v0, v4, Lorg/threeten/bp/format/ab;->c:C

    .line 2371
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 6194
    :pswitch_1
    iget-char v0, v4, Lorg/threeten/bp/format/ab;->c:C

    .line 2375
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2379
    :cond_4
    sget-object v0, Lorg/threeten/bp/format/i;->a:[I

    iget-object v6, p0, Lorg/threeten/bp/format/o;->e:Lorg/threeten/bp/format/ad;

    invoke-virtual {v6}, Lorg/threeten/bp/format/ad;->ordinal()I

    move-result v6

    aget v0, v0, v6

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    .line 6223
    :pswitch_2
    iget-char v0, v4, Lorg/threeten/bp/format/ab;->d:C

    .line 2383
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 2386
    :pswitch_3
    new-instance v0, Lorg/threeten/bp/DateTimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Field "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/threeten/bp/format/o;->b:Lorg/threeten/bp/temporal/q;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " cannot be printed as the value "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be negative according to the SignStyle"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/threeten/bp/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2394
    :cond_5
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2395
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 2368
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 2379
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2531
    iget v0, p0, Lorg/threeten/bp/format/o;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/threeten/bp/format/o;->d:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/threeten/bp/format/o;->e:Lorg/threeten/bp/format/ad;

    sget-object v1, Lorg/threeten/bp/format/ad;->a:Lorg/threeten/bp/format/ad;

    if-ne v0, v1, :cond_0

    .line 2532
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/threeten/bp/format/o;->b:Lorg/threeten/bp/temporal/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2537
    :goto_0
    return-object v0

    .line 2534
    :cond_0
    iget v0, p0, Lorg/threeten/bp/format/o;->c:I

    iget v1, p0, Lorg/threeten/bp/format/o;->d:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/threeten/bp/format/o;->e:Lorg/threeten/bp/format/ad;

    sget-object v1, Lorg/threeten/bp/format/ad;->d:Lorg/threeten/bp/format/ad;

    if-ne v0, v1, :cond_1

    .line 2535
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/threeten/bp/format/o;->b:Lorg/threeten/bp/temporal/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/threeten/bp/format/o;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2537
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Value("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/threeten/bp/format/o;->b:Lorg/threeten/bp/temporal/q;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/threeten/bp/format/o;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/threeten/bp/format/o;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/threeten/bp/format/o;->e:Lorg/threeten/bp/format/ad;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
