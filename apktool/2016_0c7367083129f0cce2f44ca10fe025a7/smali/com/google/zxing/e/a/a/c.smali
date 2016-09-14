.class public final Lcom/google/zxing/e/a/a/c;
.super Lcom/google/zxing/e/a/a;
.source "RSSExpandedReader.java"


# static fields
.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[[I

.field private static final k:[[I

.field private static final l:[[I


# instance fields
.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/e/a/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/e/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final o:[I

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/16 v3, 0x8

    .line 54
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/e/a/a/c;->g:[I

    .line 55
    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/e/a/a/c;->h:[I

    .line 56
    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/e/a/a/c;->i:[I

    .line 58
    const/4 v0, 0x6

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v4, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_5

    aput-object v1, v0, v6

    new-array v1, v4, [I

    fill-array-data v1, :array_6

    aput-object v1, v0, v7

    new-array v1, v4, [I

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    new-array v1, v4, [I

    fill-array-data v1, :array_8

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/zxing/e/a/a/c;->j:[[I

    .line 67
    const/16 v0, 0x17

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_11

    aput-object v1, v0, v3

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/e/a/a/c;->k:[[I

    .line 100
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v6, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v7, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_22

    aput-object v1, v0, v6

    new-array v1, v5, [I

    fill-array-data v1, :array_23

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_24

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_25

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    new-array v2, v2, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_28

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const/16 v2, 0xb

    new-array v2, v2, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/zxing/e/a/a/c;->l:[[I

    return-void

    .line 54
    :array_0
    .array-data 4
        0x7
        0x5
        0x4
        0x3
        0x1
    .end array-data

    .line 55
    :array_1
    .array-data 4
        0x4
        0x14
        0x34
        0x68
        0xcc
    .end array-data

    .line 56
    :array_2
    .array-data 4
        0x0
        0x15c
        0x56c
        0xb84
        0xf94
    .end array-data

    .line 58
    :array_3
    .array-data 4
        0x1
        0x8
        0x4
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x6
        0x4
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x3
        0x4
        0x6
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x2
        0x8
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x2
        0x6
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x2
        0x2
        0x9
        0x1
    .end array-data

    .line 67
    :array_9
    .array-data 4
        0x1
        0x3
        0x9
        0x1b
        0x51
        0x20
        0x60
        0x4d
    .end array-data

    :array_a
    .array-data 4
        0x14
        0x3c
        0xb4
        0x76
        0x8f
        0x7
        0x15
        0x3f
    .end array-data

    :array_b
    .array-data 4
        0xbd
        0x91
        0xd
        0x27
        0x75
        0x8c
        0xd1
        0xcd
    .end array-data

    :array_c
    .array-data 4
        0xc1
        0x9d
        0x31
        0x93
        0x13
        0x39
        0xab
        0x5b
    .end array-data

    :array_d
    .array-data 4
        0x3e
        0xba
        0x88
        0xc5
        0xa9
        0x55
        0x2c
        0x84
    .end array-data

    :array_e
    .array-data 4
        0xb9
        0x85
        0xbc
        0x8e
        0x4
        0xc
        0x24
        0x6c
    .end array-data

    :array_f
    .array-data 4
        0x71
        0x80
        0xad
        0x61
        0x50
        0x1d
        0x57
        0x32
    .end array-data

    :array_10
    .array-data 4
        0x96
        0x1c
        0x54
        0x29
        0x7b
        0x9e
        0x34
        0x9c
    .end array-data

    :array_11
    .array-data 4
        0x2e
        0x8a
        0xcb
        0xbb
        0x8b
        0xce
        0xc4
        0xa6
    .end array-data

    :array_12
    .array-data 4
        0x4c
        0x11
        0x33
        0x99
        0x25
        0x6f
        0x7a
        0x9b
    .end array-data

    :array_13
    .array-data 4
        0x2b
        0x81
        0xb0
        0x6a
        0x6b
        0x6e
        0x77
        0x92
    .end array-data

    :array_14
    .array-data 4
        0x10
        0x30
        0x90
        0xa
        0x1e
        0x5a
        0x3b
        0xb1
    .end array-data

    :array_15
    .array-data 4
        0x6d
        0x74
        0x89
        0xc8
        0xb2
        0x70
        0x7d
        0xa4
    .end array-data

    :array_16
    .array-data 4
        0x46
        0xd2
        0xd0
        0xca
        0xb8
        0x82
        0xb3
        0x73
    .end array-data

    :array_17
    .array-data 4
        0x86
        0xbf
        0x97
        0x1f
        0x5d
        0x44
        0xcc
        0xbe
    .end array-data

    :array_18
    .array-data 4
        0x94
        0x16
        0x42
        0xc6
        0xac
        0x5e
        0x47
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x6
        0x12
        0x36
        0xa2
        0x40
        0xc0
        0x9a
        0x28
    .end array-data

    :array_1a
    .array-data 4
        0x78
        0x95
        0x19
        0x4b
        0xe
        0x2a
        0x7e
        0xa7
    .end array-data

    :array_1b
    .array-data 4
        0x4f
        0x1a
        0x4e
        0x17
        0x45
        0xcf
        0xc7
        0xaf
    .end array-data

    :array_1c
    .array-data 4
        0x67
        0x62
        0x53
        0x26
        0x72
        0x83
        0xb6
        0x7c
    .end array-data

    :array_1d
    .array-data 4
        0xa1
        0x3d
        0xb7
        0x7f
        0xaa
        0x58
        0x35
        0x9f
    .end array-data

    :array_1e
    .array-data 4
        0x37
        0xa5
        0x49
        0x8
        0x18
        0x48
        0x5
        0xf
    .end array-data

    :array_1f
    .array-data 4
        0x2d
        0x87
        0xc2
        0xa0
        0x3a
        0xae
        0x64
        0x59
    .end array-data

    .line 100
    :array_20
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_21
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x2
        0x1
        0x3
    .end array-data

    :array_23
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x2
    .end array-data

    :array_24
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x3
        0x5
    .end array-data

    :array_25
    .array-data 4
        0x0
        0x4
        0x1
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_26
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
    .end array-data

    :array_27
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x4
    .end array-data

    :array_28
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x4
        0x5
        0x5
    .end array-data

    :array_29
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/zxing/e/a/a;-><init>()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/e/a/a/c;->n:Ljava/util/List;

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/e/a/a/c;->o:[I

    return-void
.end method

.method private a(Lcom/google/zxing/common/a;Ljava/util/List;I)Lcom/google/zxing/e/a/a/a;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/a;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/e/a/a/a;",
            ">;I)",
            "Lcom/google/zxing/e/a/a/a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 425
    :goto_0
    iget-boolean v2, p0, Lcom/google/zxing/e/a/a/c;->p:Z

    if-eqz v2, :cond_15

    .line 426
    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    move v2, v1

    .line 431
    :goto_2
    const/4 v3, 0x1

    .line 432
    const/4 v1, -0x1

    move v4, v3

    move v3, v1

    .line 23047
    :goto_3
    iget-object v9, p0, Lcom/google/zxing/e/a/a;->a:[I

    .line 22465
    const/4 v1, 0x0

    const/4 v5, 0x0

    aput v5, v9, v1

    .line 22466
    const/4 v1, 0x1

    const/4 v5, 0x0

    aput v5, v9, v1

    .line 22467
    const/4 v1, 0x2

    const/4 v5, 0x0

    aput v5, v9, v1

    .line 22468
    const/4 v1, 0x3

    const/4 v5, 0x0

    aput v5, v9, v1

    .line 23048
    iget v10, p1, Lcom/google/zxing/common/a;->b:I

    .line 22473
    if-gez v3, :cond_14

    .line 22475
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22476
    const/4 v1, 0x0

    .line 22481
    :goto_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    .line 22482
    :goto_5
    iget-boolean v6, p0, Lcom/google/zxing/e/a/a/c;->p:Z

    if-eqz v6, :cond_0

    .line 22483
    if-nez v5, :cond_5

    const/4 v5, 0x1

    .line 22486
    :cond_0
    :goto_6
    const/4 v6, 0x0

    move v13, v6

    move v6, v1

    move v1, v13

    .line 22487
    :goto_7
    if-ge v6, v10, :cond_7

    .line 22488
    invoke-virtual {p1, v6}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    .line 22489
    :goto_8
    if-eqz v1, :cond_7

    .line 22492
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 424
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 426
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 22478
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/e/a/a/a;

    .line 23065
    iget-object v1, v1, Lcom/google/zxing/e/a/a/a;->c:Lcom/google/zxing/e/a/c;

    .line 24041
    iget-object v1, v1, Lcom/google/zxing/e/a/c;->b:[I

    .line 22479
    const/4 v5, 0x1

    aget v1, v1, v5

    goto :goto_4

    .line 22481
    :cond_4
    const/4 v5, 0x0

    goto :goto_5

    .line 22483
    :cond_5
    const/4 v5, 0x0

    goto :goto_6

    .line 22488
    :cond_6
    const/4 v1, 0x0

    goto :goto_8

    .line 22495
    :cond_7
    const/4 v7, 0x0

    move v8, v6

    move v13, v7

    move v7, v1

    move v1, v6

    move v6, v13

    .line 22497
    :goto_9
    if-ge v8, v10, :cond_e

    .line 22498
    invoke-virtual {p1, v8}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v11

    xor-int/2addr v11, v7

    if-eqz v11, :cond_8

    .line 22499
    aget v11, v9, v6

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v6

    .line 22497
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 22501
    :cond_8
    const/4 v11, 0x3

    if-ne v6, v11, :cond_c

    .line 22502
    if-eqz v5, :cond_9

    .line 22503
    invoke-static {v9}, Lcom/google/zxing/e/a/a/c;->c([I)V

    .line 22506
    :cond_9
    invoke-static {v9}, Lcom/google/zxing/e/a/a/c;->b([I)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 22507
    iget-object v5, p0, Lcom/google/zxing/e/a/a/c;->o:[I

    const/4 v6, 0x0

    aput v1, v5, v6

    .line 22508
    iget-object v1, p0, Lcom/google/zxing/e/a/a/c;->o:[I

    const/4 v5, 0x1

    aput v8, v1, v5

    .line 435
    move/from16 v0, p3

    invoke-direct {p0, p1, v0, v2}, Lcom/google/zxing/e/a/a/c;->a(Lcom/google/zxing/common/a;IZ)Lcom/google/zxing/e/a/c;

    move-result-object v5

    .line 436
    if-nez v5, :cond_10

    .line 437
    iget-object v1, p0, Lcom/google/zxing/e/a/a/c;->o:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    .line 24411
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 24412
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/a;->d(I)I

    move-result v1

    .line 24413
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/a;->c(I)I

    move-result v1

    :goto_b
    move v3, v4

    .line 441
    :goto_c
    if-nez v3, :cond_13

    .line 446
    const/4 v1, 0x1

    invoke-direct {p0, p1, v5, v2, v1}, Lcom/google/zxing/e/a/a/c;->a(Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/c;ZZ)Lcom/google/zxing/e/a/b;

    move-result-object v3

    .line 448
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/e/a/a/a;

    .line 25069
    iget-object v1, v1, Lcom/google/zxing/e/a/a/a;->b:Lcom/google/zxing/e/a/b;

    if-nez v1, :cond_11

    const/4 v1, 0x1

    .line 448
    :goto_d
    if-eqz v1, :cond_12

    .line 449
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 22512
    :cond_a
    if-eqz v5, :cond_b

    .line 22513
    invoke-static {v9}, Lcom/google/zxing/e/a/a/c;->c([I)V

    .line 22516
    :cond_b
    const/4 v11, 0x0

    aget v11, v9, v11

    const/4 v12, 0x1

    aget v12, v9, v12

    add-int/2addr v11, v12

    add-int/2addr v1, v11

    .line 22517
    const/4 v11, 0x0

    const/4 v12, 0x2

    aget v12, v9, v12

    aput v12, v9, v11

    .line 22518
    const/4 v11, 0x1

    const/4 v12, 0x3

    aget v12, v9, v12

    aput v12, v9, v11

    .line 22519
    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v9, v11

    .line 22520
    const/4 v11, 0x3

    const/4 v12, 0x0

    aput v12, v9, v11

    .line 22521
    add-int/lit8 v6, v6, -0x1

    .line 22525
    :goto_e
    const/4 v11, 0x1

    aput v11, v9, v6

    .line 22526
    if-nez v7, :cond_d

    const/4 v7, 0x1

    goto/16 :goto_a

    .line 22523
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 22526
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 22529
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    .line 24415
    :cond_f
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/a;->c(I)I

    move-result v1

    .line 24416
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/a;->d(I)I

    move-result v1

    goto :goto_b

    .line 439
    :cond_10
    const/4 v4, 0x0

    move v1, v3

    move v3, v4

    goto :goto_c

    .line 25069
    :cond_11
    const/4 v1, 0x0

    goto :goto_d

    .line 454
    :cond_12
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v5, v2, v1}, Lcom/google/zxing/e/a/a/c;->a(Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/c;ZZ)Lcom/google/zxing/e/a/b;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 459
    :goto_f
    new-instance v2, Lcom/google/zxing/e/a/a/a;

    invoke-direct {v2, v3, v1, v5}, Lcom/google/zxing/e/a/a/a;-><init>(Lcom/google/zxing/e/a/b;Lcom/google/zxing/e/a/b;Lcom/google/zxing/e/a/c;)V

    return-object v2

    .line 456
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_f

    :cond_13
    move v4, v3

    move v3, v1

    goto/16 :goto_3

    :cond_14
    move v1, v3

    goto/16 :goto_4

    :cond_15
    move v2, v1

    goto/16 :goto_2
.end method

.method private a(Lcom/google/zxing/common/a;Lcom/google/zxing/e/a/c;ZZ)Lcom/google/zxing/e/a/b;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 588
    .line 26051
    iget-object v2, p0, Lcom/google/zxing/e/a/a;->b:[I

    .line 589
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 590
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 591
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 592
    const/4 v0, 0x3

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 593
    const/4 v0, 0x4

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 594
    const/4 v0, 0x5

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 595
    const/4 v0, 0x6

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 596
    const/4 v0, 0x7

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 598
    if-eqz p4, :cond_1

    .line 27041
    iget-object v0, p2, Lcom/google/zxing/e/a/c;->b:[I

    .line 599
    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {p1, v0, v2}, Lcom/google/zxing/e/a/a/c;->b(Lcom/google/zxing/common/a;I[I)V

    .line 611
    :cond_0
    invoke-static {v2}, Lcom/google/zxing/e/a/a/c;->a([I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41880000    # 17.0f

    div-float v3, v0, v1

    .line 29041
    iget-object v0, p2, Lcom/google/zxing/e/a/c;->b:[I

    .line 614
    const/4 v1, 0x1

    aget v0, v0, v1

    .line 30041
    iget-object v1, p2, Lcom/google/zxing/e/a/c;->b:[I

    .line 614
    const/4 v4, 0x0

    aget v1, v1, v4

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x41700000    # 15.0f

    div-float/2addr v0, v1

    .line 615
    sub-float v1, v3, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v0, v1, v0

    const v1, 0x3e99999a    # 0.3f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 616
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 28041
    :cond_1
    iget-object v0, p2, Lcom/google/zxing/e/a/c;->b:[I

    .line 601
    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {p1, v0, v2}, Lcom/google/zxing/e/a/a/c;->a(Lcom/google/zxing/common/a;I[I)V

    .line 603
    const/4 v1, 0x0

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ge v1, v0, :cond_0

    .line 604
    aget v3, v2, v1

    .line 605
    aget v4, v2, v0

    aput v4, v2, v1

    .line 606
    aput v3, v2, v0

    .line 603
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 30063
    :cond_2
    iget-object v6, p0, Lcom/google/zxing/e/a/a;->e:[I

    .line 30067
    iget-object v7, p0, Lcom/google/zxing/e/a/a;->f:[I

    .line 31055
    iget-object v4, p0, Lcom/google/zxing/e/a/a;->c:[F

    .line 31059
    iget-object v5, p0, Lcom/google/zxing/e/a/a;->d:[F

    .line 624
    const/4 v0, 0x0

    :goto_1
    array-length v1, v2

    if-ge v0, v1, :cond_8

    .line 625
    const/high16 v1, 0x3f800000    # 1.0f

    aget v8, v2, v0

    int-to-float v8, v8

    mul-float/2addr v1, v8

    div-float v8, v1, v3

    .line 626
    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v1, v8

    float-to-int v1, v1

    .line 627
    if-gtz v1, :cond_5

    .line 628
    const v1, 0x3e99999a    # 0.3f

    cmpg-float v1, v8, v1

    if-gez v1, :cond_3

    .line 629
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 631
    :cond_3
    const/4 v1, 0x1

    .line 638
    :cond_4
    :goto_2
    div-int/lit8 v9, v0, 0x2

    .line 639
    and-int/lit8 v10, v0, 0x1

    if-nez v10, :cond_7

    .line 640
    aput v1, v6, v9

    .line 641
    int-to-float v1, v1

    sub-float v1, v8, v1

    aput v1, v4, v9

    .line 624
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 632
    :cond_5
    const/16 v9, 0x8

    if-le v1, v9, :cond_4

    .line 633
    const v1, 0x410b3333    # 8.7f

    cmpl-float v1, v8, v1

    if-lez v1, :cond_6

    .line 634
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 636
    :cond_6
    const/16 v1, 0x8

    goto :goto_2

    .line 643
    :cond_7
    aput v1, v7, v9

    .line 644
    int-to-float v1, v1

    sub-float v1, v8, v1

    aput v1, v5, v9

    goto :goto_3

    .line 32063
    :cond_8
    iget-object v0, p0, Lcom/google/zxing/e/a/a;->e:[I

    .line 31695
    invoke-static {v0}, Lcom/google/zxing/e/a/a/c;->a([I)I

    move-result v8

    .line 32067
    iget-object v0, p0, Lcom/google/zxing/e/a/a;->f:[I

    .line 31696
    invoke-static {v0}, Lcom/google/zxing/e/a/a/c;->a([I)I

    move-result v9

    .line 31697
    add-int v0, v8, v9

    add-int/lit8 v10, v0, -0x11

    .line 31698
    and-int/lit8 v0, v8, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    move v5, v0

    .line 31699
    :goto_4
    and-int/lit8 v0, v9, 0x1

    if-nez v0, :cond_c

    const/4 v0, 0x1

    move v4, v0

    .line 31701
    :goto_5
    const/4 v3, 0x0

    .line 31702
    const/4 v2, 0x0

    .line 31704
    const/16 v0, 0xd

    if-le v8, v0, :cond_d

    .line 31705
    const/4 v2, 0x1

    .line 31709
    :cond_9
    :goto_6
    const/4 v1, 0x0

    .line 31710
    const/4 v0, 0x0

    .line 31711
    const/16 v11, 0xd

    if-le v9, v11, :cond_e

    .line 31712
    const/4 v0, 0x1

    .line 31717
    :cond_a
    :goto_7
    const/4 v11, 0x1

    if-ne v10, v11, :cond_13

    .line 31718
    if-eqz v5, :cond_11

    .line 31719
    if-eqz v4, :cond_f

    .line 31720
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 31698
    :cond_b
    const/4 v0, 0x0

    move v5, v0

    goto :goto_4

    .line 31699
    :cond_c
    const/4 v0, 0x0

    move v4, v0

    goto :goto_5

    .line 31706
    :cond_d
    const/4 v0, 0x4

    if-ge v8, v0, :cond_9

    .line 31707
    const/4 v3, 0x1

    goto :goto_6

    .line 31713
    :cond_e
    const/4 v11, 0x4

    if-ge v9, v11, :cond_a

    .line 31714
    const/4 v1, 0x1

    goto :goto_7

    .line 31722
    :cond_f
    const/4 v2, 0x1

    .line 31764
    :cond_10
    :goto_8
    if-eqz v3, :cond_1d

    .line 31765
    if-eqz v2, :cond_1c

    .line 31766
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 31724
    :cond_11
    if-nez v4, :cond_12

    .line 31725
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 31727
    :cond_12
    const/4 v0, 0x1

    goto :goto_8

    .line 31729
    :cond_13
    const/4 v11, -0x1

    if-ne v10, v11, :cond_17

    .line 31730
    if-eqz v5, :cond_15

    .line 31731
    if-eqz v4, :cond_14

    .line 31732
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 31734
    :cond_14
    const/4 v3, 0x1

    goto :goto_8

    .line 31736
    :cond_15
    if-nez v4, :cond_16

    .line 31737
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 31739
    :cond_16
    const/4 v1, 0x1

    goto :goto_8

    .line 31741
    :cond_17
    if-nez v10, :cond_1b

    .line 31742
    if-eqz v5, :cond_1a

    .line 31743
    if-nez v4, :cond_18

    .line 31744
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 31747
    :cond_18
    if-ge v8, v9, :cond_19

    .line 31748
    const/4 v3, 0x1

    .line 31749
    const/4 v0, 0x1

    goto :goto_8

    .line 31751
    :cond_19
    const/4 v2, 0x1

    .line 31752
    const/4 v1, 0x1

    goto :goto_8

    .line 31755
    :cond_1a
    if-eqz v4, :cond_10

    .line 31756
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 31761
    :cond_1b
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 33063
    :cond_1c
    iget-object v3, p0, Lcom/google/zxing/e/a/a;->e:[I

    .line 34055
    iget-object v4, p0, Lcom/google/zxing/e/a/a;->c:[F

    .line 31768
    invoke-static {v3, v4}, Lcom/google/zxing/e/a/a/c;->a([I[F)V

    .line 31770
    :cond_1d
    if-eqz v2, :cond_1e

    .line 34063
    iget-object v2, p0, Lcom/google/zxing/e/a/a;->e:[I

    .line 35055
    iget-object v3, p0, Lcom/google/zxing/e/a/a;->c:[F

    .line 31771
    invoke-static {v2, v3}, Lcom/google/zxing/e/a/a/c;->b([I[F)V

    .line 31773
    :cond_1e
    if-eqz v1, :cond_20

    .line 31774
    if-eqz v0, :cond_1f

    .line 31775
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 35067
    :cond_1f
    iget-object v1, p0, Lcom/google/zxing/e/a/a;->f:[I

    .line 36055
    iget-object v2, p0, Lcom/google/zxing/e/a/a;->c:[F

    .line 31777
    invoke-static {v1, v2}, Lcom/google/zxing/e/a/a/c;->a([I[F)V

    .line 31779
    :cond_20
    if-eqz v0, :cond_21

    .line 36067
    iget-object v0, p0, Lcom/google/zxing/e/a/a;->f:[I

    .line 37059
    iget-object v1, p0, Lcom/google/zxing/e/a/a;->d:[F

    .line 31780
    invoke-static {v0, v1}, Lcom/google/zxing/e/a/a/c;->b([I[F)V

    .line 38037
    :cond_21
    iget v0, p2, Lcom/google/zxing/e/a/c;->a:I

    .line 650
    mul-int/lit8 v1, v0, 0x4

    if-eqz p3, :cond_23

    const/4 v0, 0x0

    :goto_9
    add-int/2addr v1, v0

    if-eqz p4, :cond_24

    const/4 v0, 0x0

    :goto_a
    add-int/2addr v0, v1

    add-int/lit8 v4, v0, -0x1

    .line 652
    const/4 v2, 0x0

    .line 653
    const/4 v1, 0x0

    .line 654
    array-length v0, v6

    add-int/lit8 v0, v0, -0x1

    move v3, v2

    move v12, v1

    move v1, v0

    move v0, v12

    :goto_b
    if-ltz v1, :cond_25

    .line 655
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/e/a/a/c;->a(Lcom/google/zxing/e/a/c;ZZ)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 656
    sget-object v2, Lcom/google/zxing/e/a/a/c;->k:[[I

    aget-object v2, v2, v4

    mul-int/lit8 v5, v1, 0x2

    aget v2, v2, v5

    .line 657
    aget v5, v6, v1

    mul-int/2addr v2, v5

    add-int/2addr v0, v2

    .line 659
    :cond_22
    aget v2, v6, v1

    add-int/2addr v2, v3

    .line 654
    add-int/lit8 v1, v1, -0x1

    move v3, v2

    goto :goto_b

    .line 650
    :cond_23
    const/4 v0, 0x2

    goto :goto_9

    :cond_24
    const/4 v0, 0x1

    goto :goto_a

    .line 661
    :cond_25
    const/4 v1, 0x0

    .line 663
    array-length v2, v7

    add-int/lit8 v2, v2, -0x1

    :goto_c
    if-ltz v2, :cond_27

    .line 664
    invoke-static/range {p2 .. p4}, Lcom/google/zxing/e/a/a/c;->a(Lcom/google/zxing/e/a/c;ZZ)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 665
    sget-object v5, Lcom/google/zxing/e/a/a/c;->k:[[I

    aget-object v5, v5, v4

    mul-int/lit8 v8, v2, 0x2

    add-int/lit8 v8, v8, 0x1

    aget v5, v5, v8

    .line 666
    aget v8, v7, v2

    mul-int/2addr v5, v8

    add-int/2addr v1, v5

    .line 663
    :cond_26
    add-int/lit8 v2, v2, -0x1

    goto :goto_c

    .line 670
    :cond_27
    add-int/2addr v0, v1

    .line 672
    and-int/lit8 v1, v3, 0x1

    if-nez v1, :cond_28

    const/16 v1, 0xd

    if-gt v3, v1, :cond_28

    const/4 v1, 0x4

    if-ge v3, v1, :cond_29

    .line 673
    :cond_28
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    .line 676
    :cond_29
    rsub-int/lit8 v1, v3, 0xd

    div-int/lit8 v1, v1, 0x2

    .line 677
    sget-object v2, Lcom/google/zxing/e/a/a/c;->g:[I

    aget v2, v2, v1

    .line 678
    rsub-int/lit8 v3, v2, 0x9

    .line 679
    const/4 v4, 0x1

    invoke-static {v6, v2, v4}, Lcom/google/zxing/e/a/f;->a([IIZ)I

    move-result v2

    .line 680
    const/4 v4, 0x0

    invoke-static {v7, v3, v4}, Lcom/google/zxing/e/a/f;->a([IIZ)I

    move-result v3

    .line 681
    sget-object v4, Lcom/google/zxing/e/a/a/c;->h:[I

    aget v4, v4, v1

    .line 682
    sget-object v5, Lcom/google/zxing/e/a/a/c;->i:[I

    aget v1, v5, v1

    .line 683
    mul-int/2addr v2, v4

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 685
    new-instance v2, Lcom/google/zxing/e/a/b;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/e/a/b;-><init>(II)V

    return-object v2
.end method

.method private a(Lcom/google/zxing/common/a;IZ)Lcom/google/zxing/e/a/c;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 547
    if-eqz p3, :cond_1

    .line 550
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->o:[I

    aget v0, v0, v5

    add-int/lit8 v0, v0, -0x1

    .line 552
    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 553
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 556
    :cond_0
    add-int/lit8 v3, v0, 0x1

    .line 557
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->o:[I

    aget v0, v0, v5

    sub-int/2addr v0, v3

    .line 559
    iget-object v1, p0, Lcom/google/zxing/e/a/a/c;->o:[I

    aget v4, v1, v6

    .line 26047
    :goto_1
    iget-object v1, p0, Lcom/google/zxing/e/a/a;->a:[I

    .line 572
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v5, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    aput v0, v1, v5

    .line 577
    :try_start_0
    sget-object v0, Lcom/google/zxing/e/a/a/c;->j:[[I

    invoke-static {v1, v0}, Lcom/google/zxing/e/a/a/c;->a([I[[I)I
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 581
    new-instance v0, Lcom/google/zxing/e/a/c;

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v5

    aput v4, v2, v6

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/zxing/e/a/c;-><init>(I[IIII)V

    :goto_2
    return-object v0

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->o:[I

    aget v3, v0, v5

    .line 566
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->o:[I

    aget v0, v0, v6

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/zxing/common/a;->d(I)I

    move-result v4

    .line 567
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->o:[I

    aget v0, v0, v6

    sub-int v0, v4, v0

    goto :goto_1

    .line 579
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_2
.end method

.method private static a(Ljava/util/List;)Lcom/google/zxing/m;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/e/a/a/a;",
            ">;)",
            "Lcom/google/zxing/m;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x2

    const/16 v4, 0xb

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 363
    .line 9043
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, -0x1

    .line 9044
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/a/a/a;

    .line 10061
    iget-object v0, v0, Lcom/google/zxing/e/a/a/a;->b:Lcom/google/zxing/e/a/b;

    .line 9044
    if-nez v0, :cond_a

    .line 9045
    add-int/lit8 v0, v1, -0x1

    .line 9048
    :goto_0
    mul-int/lit8 v0, v0, 0xc

    .line 9050
    new-instance v8, Lcom/google/zxing/common/a;

    invoke-direct {v8, v0}, Lcom/google/zxing/common/a;-><init>(I)V

    .line 9053
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/a/a/a;

    .line 11061
    iget-object v0, v0, Lcom/google/zxing/e/a/a/a;->b:Lcom/google/zxing/e/a/b;

    .line 12030
    iget v5, v0, Lcom/google/zxing/e/a/b;->a:I

    move v1, v4

    move v0, v7

    .line 9055
    :goto_1
    if-ltz v1, :cond_1

    .line 9056
    shl-int v2, v3, v1

    and-int/2addr v2, v5

    if-eqz v2, :cond_0

    .line 9057
    invoke-virtual {v8, v0}, Lcom/google/zxing/common/a;->b(I)V

    .line 9059
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .line 9055
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_1
    move v2, v3

    move v1, v0

    .line 9062
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    .line 9063
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/a/a/a;

    .line 12057
    iget-object v5, v0, Lcom/google/zxing/e/a/a/a;->a:Lcom/google/zxing/e/a/b;

    .line 13030
    iget v9, v5, Lcom/google/zxing/e/a/b;->a:I

    move v5, v4

    .line 9066
    :goto_3
    if-ltz v5, :cond_3

    .line 9067
    shl-int v6, v3, v5

    and-int/2addr v6, v9

    if-eqz v6, :cond_2

    .line 9068
    invoke-virtual {v8, v1}, Lcom/google/zxing/common/a;->b(I)V

    .line 9070
    :cond_2
    add-int/lit8 v6, v1, 0x1

    .line 9066
    add-int/lit8 v1, v5, -0x1

    move v5, v1

    move v1, v6

    goto :goto_3

    .line 13061
    :cond_3
    iget-object v5, v0, Lcom/google/zxing/e/a/a/a;->b:Lcom/google/zxing/e/a/b;

    .line 9073
    if-eqz v5, :cond_5

    .line 14061
    iget-object v0, v0, Lcom/google/zxing/e/a/a/a;->b:Lcom/google/zxing/e/a/b;

    .line 15030
    iget v6, v0, Lcom/google/zxing/e/a/b;->a:I

    move v0, v1

    move v1, v4

    .line 9075
    :goto_4
    if-ltz v1, :cond_6

    .line 9076
    shl-int v5, v3, v1

    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 9077
    invoke-virtual {v8, v0}, Lcom/google/zxing/common/a;->b(I)V

    .line 9079
    :cond_4
    add-int/lit8 v5, v0, 0x1

    .line 9075
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move v0, v5

    goto :goto_4

    :cond_5
    move v0, v1

    .line 9062
    :cond_6
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_2

    .line 15058
    :cond_7
    invoke-virtual {v8, v3}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 15059
    new-instance v0, Lcom/google/zxing/e/a/a/a/g;

    invoke-direct {v0, v8}, Lcom/google/zxing/e/a/a/a/g;-><init>(Lcom/google/zxing/common/a;)V

    .line 366
    :goto_5
    invoke-virtual {v0}, Lcom/google/zxing/e/a/a/a/j;->a()Ljava/lang/String;

    move-result-object v1

    .line 368
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/a/a/a;

    .line 16065
    iget-object v0, v0, Lcom/google/zxing/e/a/a/a;->c:Lcom/google/zxing/e/a/c;

    .line 17045
    iget-object v2, v0, Lcom/google/zxing/e/a/c;->c:[Lcom/google/zxing/o;

    .line 369
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/a/a/a;

    .line 17065
    iget-object v0, v0, Lcom/google/zxing/e/a/a/a;->c:Lcom/google/zxing/e/a/c;

    .line 18045
    iget-object v0, v0, Lcom/google/zxing/e/a/c;->c:[Lcom/google/zxing/o;

    .line 371
    new-instance v4, Lcom/google/zxing/m;

    const/4 v5, 0x0

    new-array v6, v11, [Lcom/google/zxing/o;

    aget-object v8, v2, v7

    aput-object v8, v6, v7

    aget-object v2, v2, v3

    aput-object v2, v6, v3

    aget-object v2, v0, v7

    aput-object v2, v6, v10

    const/4 v2, 0x3

    aget-object v0, v0, v3

    aput-object v0, v6, v2

    sget-object v0, Lcom/google/zxing/a;->n:Lcom/google/zxing/a;

    invoke-direct {v4, v1, v5, v6, v0}, Lcom/google/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;)V

    return-object v4

    .line 15061
    :cond_8
    invoke-virtual {v8, v10}, Lcom/google/zxing/common/a;->a(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 15062
    new-instance v0, Lcom/google/zxing/e/a/a/a/k;

    invoke-direct {v0, v8}, Lcom/google/zxing/e/a/a/a/k;-><init>(Lcom/google/zxing/common/a;)V

    goto :goto_5

    .line 15065
    :cond_9
    invoke-static {v8, v3, v11}, Lcom/google/zxing/e/a/a/a/t;->a(Lcom/google/zxing/common/a;II)I

    move-result v0

    .line 15067
    packed-switch v0, :pswitch_data_0

    .line 15072
    const/4 v0, 0x5

    invoke-static {v8, v3, v0}, Lcom/google/zxing/e/a/a/a/t;->a(Lcom/google/zxing/common/a;II)I

    move-result v0

    .line 15073
    packed-switch v0, :pswitch_data_1

    .line 15078
    const/4 v0, 0x7

    invoke-static {v8, v3, v0}, Lcom/google/zxing/e/a/a/a/t;->a(Lcom/google/zxing/common/a;II)I

    move-result v0

    .line 15079
    packed-switch v0, :pswitch_data_2

    .line 15090
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown decoder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15068
    :pswitch_0
    new-instance v0, Lcom/google/zxing/e/a/a/a/a;

    invoke-direct {v0, v8}, Lcom/google/zxing/e/a/a/a/a;-><init>(Lcom/google/zxing/common/a;)V

    goto :goto_5

    .line 15069
    :pswitch_1
    new-instance v0, Lcom/google/zxing/e/a/a/a/b;

    invoke-direct {v0, v8}, Lcom/google/zxing/e/a/a/a/b;-><init>(Lcom/google/zxing/common/a;)V

    goto :goto_5

    .line 15074
    :pswitch_2
    new-instance v0, Lcom/google/zxing/e/a/a/a/c;

    invoke-direct {v0, v8}, Lcom/google/zxing/e/a/a/a/c;-><init>(Lcom/google/zxing/common/a;)V

    goto/16 :goto_5

    .line 15075
    :pswitch_3
    new-instance v0, Lcom/google/zxing/e/a/a/a/d;

    invoke-direct {v0, v8}, Lcom/google/zxing/e/a/a/a/d;-><init>(Lcom/google/zxing/common/a;)V

    goto/16 :goto_5

    .line 15080
    :pswitch_4
    new-instance v0, Lcom/google/zxing/e/a/a/a/e;

    const-string v1, "310"

    const-string v2, "11"

    invoke-direct {v0, v8, v1, v2}, Lcom/google/zxing/e/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 15081
    :pswitch_5
    new-instance v0, Lcom/google/zxing/e/a/a/a/e;

    const-string v1, "320"

    const-string v2, "11"

    invoke-direct {v0, v8, v1, v2}, Lcom/google/zxing/e/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 15082
    :pswitch_6
    new-instance v0, Lcom/google/zxing/e/a/a/a/e;

    const-string v1, "310"

    const-string v2, "13"

    invoke-direct {v0, v8, v1, v2}, Lcom/google/zxing/e/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 15083
    :pswitch_7
    new-instance v0, Lcom/google/zxing/e/a/a/a/e;

    const-string v1, "320"

    const-string v2, "13"

    invoke-direct {v0, v8, v1, v2}, Lcom/google/zxing/e/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 15084
    :pswitch_8
    new-instance v0, Lcom/google/zxing/e/a/a/a/e;

    const-string v1, "310"

    const-string v2, "15"

    invoke-direct {v0, v8, v1, v2}, Lcom/google/zxing/e/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 15085
    :pswitch_9
    new-instance v0, Lcom/google/zxing/e/a/a/a/e;

    const-string v1, "320"

    const-string v2, "15"

    invoke-direct {v0, v8, v1, v2}, Lcom/google/zxing/e/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 15086
    :pswitch_a
    new-instance v0, Lcom/google/zxing/e/a/a/a/e;

    const-string v1, "310"

    const-string v2, "17"

    invoke-direct {v0, v8, v1, v2}, Lcom/google/zxing/e/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 15087
    :pswitch_b
    new-instance v0, Lcom/google/zxing/e/a/a/a/e;

    const-string v1, "320"

    const-string v2, "17"

    invoke-direct {v0, v8, v1, v2}, Lcom/google/zxing/e/a/a/a/e;-><init>(Lcom/google/zxing/common/a;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    move v0, v1

    goto/16 :goto_0

    .line 15067
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 15073
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 15079
    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private a(ILcom/google/zxing/common/a;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/a;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/e/a/a/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 151
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    invoke-direct {p0, p2, v0, p1}, Lcom/google/zxing/e/a/a/c;->a(Lcom/google/zxing/common/a;Ljava/util/List;I)Lcom/google/zxing/e/a/a/a;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    iget-object v1, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    throw v0

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/google/zxing/e/a/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    .line 178
    :cond_1
    return-object v0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    move v3, v4

    :goto_1
    move v1, v5

    move v6, v5

    .line 1276
    :goto_2
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_13

    .line 1277
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->n:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/a/a/b;

    .line 2043
    iget v2, v0, Lcom/google/zxing/e/a/a/b;->b:I

    .line 1278
    if-le v2, p1, :cond_6

    .line 1279
    iget-object v2, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/google/zxing/e/a/a/b;->a(Ljava/util/List;)Z

    move-result v0

    .line 1285
    :goto_3
    if-nez v0, :cond_3

    if-eqz v1, :cond_7

    .line 169
    :cond_3
    if-eqz v3, :cond_4

    .line 172
    invoke-direct {p0, v5}, Lcom/google/zxing/e/a/a/c;->a(Z)Ljava/util/List;

    move-result-object v0

    .line 173
    if-nez v0, :cond_1

    .line 176
    invoke-direct {p0, v4}, Lcom/google/zxing/e/a/a/c;->a(Z)Ljava/util/List;

    move-result-object v0

    .line 177
    if-nez v0, :cond_1

    .line 182
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_5
    move v3, v5

    .line 166
    goto :goto_1

    .line 1282
    :cond_6
    iget-object v1, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/google/zxing/e/a/a/b;->a(Ljava/util/List;)Z

    move-result v0

    .line 1283
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    move v1, v0

    .line 1284
    goto :goto_2

    .line 1294
    :cond_7
    iget-object v7, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->n:Ljava/util/List;

    .line 2333
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/zxing/e/a/a/b;

    .line 2335
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_9
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/a/a/a;

    .line 3039
    iget-object v1, v2, Lcom/google/zxing/e/a/a/b;->a:Ljava/util/List;

    .line 2337
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/e/a/a/a;

    .line 2338
    invoke-virtual {v0, v1}, Lcom/google/zxing/e/a/a/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move v0, v4

    .line 2343
    :goto_4
    if-nez v0, :cond_9

    move v0, v5

    .line 2348
    :goto_5
    if-eqz v0, :cond_8

    move v0, v4

    .line 1294
    :goto_6
    if-nez v0, :cond_3

    .line 1298
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->n:Ljava/util/List;

    new-instance v1, Lcom/google/zxing/e/a/a/b;

    iget-object v2, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    invoke-direct {v1, v2, p1}, Lcom/google/zxing/e/a/a/b;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v6, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1300
    iget-object v2, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->n:Ljava/util/List;

    .line 3305
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3306
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/a/a/b;

    .line 4039
    iget-object v1, v0, Lcom/google/zxing/e/a/a/b;->a:Ljava/util/List;

    .line 3307
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-eq v1, v7, :cond_b

    .line 5039
    iget-object v0, v0, Lcom/google/zxing/e/a/a/b;->a:Ljava/util/List;

    .line 3311
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/a/a/a;

    .line 3313
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_d
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/e/a/a/a;

    .line 3314
    invoke-virtual {v0, v1}, Lcom/google/zxing/e/a/a/a;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v0, v4

    .line 3319
    :goto_8
    if-nez v0, :cond_c

    move v0, v5

    .line 3324
    :goto_9
    if-eqz v0, :cond_b

    .line 3326
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    :cond_e
    move v0, v5

    .line 2353
    goto :goto_6

    :cond_f
    move v0, v5

    goto :goto_8

    :cond_10
    move v0, v4

    goto :goto_9

    :cond_11
    move v0, v5

    goto :goto_4

    :cond_12
    move v0, v4

    goto :goto_5

    :cond_13
    move v0, v5

    goto/16 :goto_3
.end method

.method private a(Ljava/util/List;I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/e/a/a/b;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/e/a/a/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_6

    .line 217
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->n:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/a/a/b;

    .line 218
    iget-object v1, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 219
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move v2, v3

    .line 220
    :goto_1
    if-ge v2, v5, :cond_0

    .line 221
    iget-object v6, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/e/a/a/b;

    .line 6039
    iget-object v1, v1, Lcom/google/zxing/e/a/a/b;->a:Ljava/util/List;

    .line 221
    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    .line 7039
    iget-object v2, v0, Lcom/google/zxing/e/a/a/b;->a:Ljava/util/List;

    .line 223
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    iget-object v6, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    .line 7250
    sget-object v7, Lcom/google/zxing/e/a/a/c;->l:[[I

    array-length v8, v7

    move v5, v3

    :goto_2
    if-ge v5, v8, :cond_3

    aget-object v9, v7, v5

    .line 7251
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    array-length v2, v9

    if-gt v1, v2, :cond_2

    move v2, v3

    .line 7256
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_7

    .line 7257
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/e/a/a/a;

    .line 8065
    iget-object v1, v1, Lcom/google/zxing/e/a/a/a;->c:Lcom/google/zxing/e/a/c;

    .line 9037
    iget v1, v1, Lcom/google/zxing/e/a/c;->a:I

    .line 7257
    aget v10, v9, v2

    if-eq v1, v10, :cond_1

    move v1, v3

    .line 7263
    :goto_4
    if-eqz v1, :cond_2

    move v1, v4

    .line 225
    :goto_5
    if-eqz v1, :cond_5

    .line 229
    invoke-direct {p0}, Lcom/google/zxing/e/a/a/c;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 230
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    .line 238
    :goto_6
    return-object v0

    .line 7256
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    .line 7250
    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_3
    move v1, v3

    .line 7268
    goto :goto_5

    .line 233
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 235
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    add-int/lit8 v0, p2, 0x1

    :try_start_0
    invoke-direct {p0, v1, v0}, Lcom/google/zxing/e/a/a/c;->a(Ljava/util/List;I)Ljava/util/List;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 216
    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 244
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->a()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_7
    move v1, v4

    goto :goto_4
.end method

.method private a(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/e/a/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 189
    iget-object v1, p0, Lcom/google/zxing/e/a/a/c;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_1

    .line 190
    iget-object v1, p0, Lcom/google/zxing/e/a/a/c;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 210
    :cond_0
    :goto_0
    return-object v0

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 195
    if-eqz p1, :cond_2

    .line 196
    iget-object v1, p0, Lcom/google/zxing/e/a/a/c;->n:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 201
    :cond_2
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/zxing/e/a/a/c;->a(Ljava/util/List;I)Ljava/util/List;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 206
    :goto_1
    if-eqz p1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/google/zxing/e/a/a/c;->n:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private static a(Lcom/google/zxing/e/a/c;ZZ)Z
    .locals 1

    .prologue
    .line 690
    .line 39037
    iget v0, p0, Lcom/google/zxing/e/a/c;->a:I

    .line 690
    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 380
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/a/a/a;

    .line 18057
    iget-object v6, v0, Lcom/google/zxing/e/a/a/a;->a:Lcom/google/zxing/e/a/b;

    .line 18061
    iget-object v0, v0, Lcom/google/zxing/e/a/a/a;->b:Lcom/google/zxing/e/a/b;

    .line 384
    if-nez v0, :cond_1

    move v2, v5

    .line 406
    :cond_0
    :goto_0
    return v2

    .line 19034
    :cond_1
    iget v1, v0, Lcom/google/zxing/e/a/b;->b:I

    .line 389
    const/4 v0, 0x2

    move v3, v0

    move v4, v1

    move v1, v2

    .line 391
    :goto_1
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 392
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/e/a/a/a;

    .line 19057
    iget-object v7, v0, Lcom/google/zxing/e/a/a/a;->a:Lcom/google/zxing/e/a/b;

    .line 20034
    iget v7, v7, Lcom/google/zxing/e/a/b;->b:I

    .line 393
    add-int/2addr v4, v7

    .line 394
    add-int/lit8 v3, v3, 0x1

    .line 20061
    iget-object v0, v0, Lcom/google/zxing/e/a/a/a;->b:Lcom/google/zxing/e/a/b;

    .line 396
    if-eqz v0, :cond_2

    .line 21034
    iget v0, v0, Lcom/google/zxing/e/a/b;->b:I

    .line 397
    add-int/2addr v4, v0

    .line 398
    add-int/lit8 v3, v3, 0x1

    .line 391
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 402
    :cond_3
    rem-int/lit16 v0, v4, 0xd3

    .line 404
    add-int/lit8 v1, v3, -0x4

    mul-int/lit16 v1, v1, 0xd3

    add-int/2addr v0, v1

    .line 22030
    iget v1, v6, Lcom/google/zxing/e/a/b;->a:I

    .line 406
    if-eq v0, v1, :cond_0

    move v2, v5

    goto :goto_0
.end method

.method private static c([I)V
    .locals 4

    .prologue
    .line 533
    array-length v1, p0

    .line 534
    const/4 v0, 0x0

    :goto_0
    div-int/lit8 v2, v1, 0x2

    if-ge v0, v2, :cond_0

    .line 535
    aget v2, p0, v0

    .line 536
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aget v3, p0, v3

    aput v3, p0, v0

    .line 537
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aput v2, p0, v3

    .line 534
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 539
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILcom/google/zxing/common/a;Ljava/util/Map;)Lcom/google/zxing/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/a;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/d;",
            "*>;)",
            "Lcom/google/zxing/m;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/zxing/e/a/a/c;->p:Z

    .line 129
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/e/a/a/c;->a(ILcom/google/zxing/common/a;)Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/google/zxing/e/a/a/c;->a(Ljava/util/List;)Lcom/google/zxing/m;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 135
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/zxing/e/a/a/c;->p:Z

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/google/zxing/e/a/a/c;->a(ILcom/google/zxing/common/a;)Ljava/util/List;

    move-result-object v0

    .line 138
    invoke-static {v0}, Lcom/google/zxing/e/a/a/c;->a(Ljava/util/List;)Lcom/google/zxing/m;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    iget-object v0, p0, Lcom/google/zxing/e/a/a/c;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    return-void
.end method
