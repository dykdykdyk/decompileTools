.class public final Lcom/bingerz/android/pathcontainspoint/b;
.super Ljava/lang/Object;
.source "RayCasting.java"


# instance fields
.field public a:Lcom/bingerz/android/pathcontainspoint/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;DZ)I
    .locals 13

    .prologue
    .line 60
    invoke-static {p2, p1}, Lcom/bingerz/android/pathcontainspoint/b;->a(Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;)Lcom/bingerz/android/pathcontainspoint/c;

    move-result-object v2

    move-object/from16 v0, p4

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/bingerz/android/pathcontainspoint/b;->a(Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;)Lcom/bingerz/android/pathcontainspoint/c;

    move-result-object v3

    .line 61
    invoke-static {v3, v2}, Lcom/bingerz/android/pathcontainspoint/b;->b(Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;)D

    move-result-wide v4

    .line 62
    const-wide/16 v6, 0x0

    cmpl-double v6, v4, v6

    if-nez v6, :cond_0

    .line 63
    const/4 v2, 0x0

    .line 82
    :goto_0
    return v2

    .line 65
    :cond_0
    invoke-static {p1, v2}, Lcom/bingerz/android/pathcontainspoint/b;->b(Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;)D

    move-result-wide v6

    move-object/from16 v0, p3

    invoke-static {v0, v2}, Lcom/bingerz/android/pathcontainspoint/b;->b(Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;)D

    move-result-wide v8

    sub-double/2addr v6, v8

    div-double/2addr v6, v4

    .line 66
    if-eqz p7, :cond_1

    .line 1044
    new-instance v2, Lcom/bingerz/android/pathcontainspoint/c;

    invoke-direct {v2}, Lcom/bingerz/android/pathcontainspoint/c;-><init>()V

    .line 1045
    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    iget-wide v10, v3, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    iput-wide v8, v2, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    .line 1046
    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    iget-wide v10, v3, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    mul-double/2addr v10, v6

    add-double/2addr v8, v10

    iput-wide v8, v2, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    .line 67
    iput-object v2, p0, Lcom/bingerz/android/pathcontainspoint/b;->a:Lcom/bingerz/android/pathcontainspoint/c;

    .line 70
    :cond_1
    move-wide/from16 v0, p5

    neg-double v8, v0

    cmpg-double v2, v6, v8

    if-ltz v2, :cond_2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    add-double v8, v8, p5

    cmpl-double v2, v6, v8

    if-lez v2, :cond_3

    .line 71
    :cond_2
    const/4 v2, -0x1

    goto :goto_0

    .line 73
    :cond_3
    cmpg-double v2, v6, p5

    if-ltz v2, :cond_4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v8, v8, p5

    cmpl-double v2, v6, v8

    if-lez v2, :cond_5

    .line 74
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 77
    :cond_5
    invoke-static {p1, v3}, Lcom/bingerz/android/pathcontainspoint/b;->b(Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;)D

    move-result-wide v6

    move-object/from16 v0, p3

    invoke-static {v0, v3}, Lcom/bingerz/android/pathcontainspoint/b;->b(Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;)D

    move-result-wide v2

    sub-double v2, v6, v2

    div-double/2addr v2, v4

    .line 78
    const-wide/16 v4, 0x0

    cmpg-double v4, v2, v4

    if-ltz v4, :cond_6

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_7

    .line 79
    :cond_6
    const/4 v2, -0x1

    goto :goto_0

    .line 82
    :cond_7
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static a(Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;)Lcom/bingerz/android/pathcontainspoint/c;
    .locals 6

    .prologue
    .line 21
    new-instance v0, Lcom/bingerz/android/pathcontainspoint/c;

    invoke-direct {v0}, Lcom/bingerz/android/pathcontainspoint/c;-><init>()V

    .line 22
    iget-wide v2, p0, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    iget-wide v4, p1, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    .line 23
    iget-wide v2, p0, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    iget-wide v4, p1, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    sub-double/2addr v2, v4

    iput-wide v2, v0, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    .line 24
    return-object v0
.end method

.method private static b(Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;)D
    .locals 6

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    iget-wide v2, p1, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    iget-wide v4, p1, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public final a(Lcom/bingerz/android/pathcontainspoint/c;Ljava/util/ArrayList;D)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bingerz/android/pathcontainspoint/c;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bingerz/android/pathcontainspoint/c;",
            ">;D)I"
        }
    .end annotation

    .prologue
    .line 110
    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 111
    add-int/lit8 v3, v2, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    .line 112
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bingerz/android/pathcontainspoint/c;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bingerz/android/pathcontainspoint/c;

    .line 1090
    invoke-static {v7, v6}, Lcom/bingerz/android/pathcontainspoint/b;->a(Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;)Lcom/bingerz/android/pathcontainspoint/c;

    move-result-object v3

    .line 1091
    new-instance v5, Lcom/bingerz/android/pathcontainspoint/c;

    invoke-direct {v5}, Lcom/bingerz/android/pathcontainspoint/c;-><init>()V

    .line 1094
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    iget-wide v10, v3, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    add-double/2addr v8, v10

    iput-wide v8, v5, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    .line 1095
    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    iget-wide v10, v3, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    sub-double/2addr v8, v10

    iput-wide v8, v5, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    .line 1096
    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v10}, Lcom/bingerz/android/pathcontainspoint/b;->a(Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;DZ)I

    move-result v3

    .line 1097
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 1098
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 113
    :goto_1
    cmpg-double v3, v4, p3

    if-gez v3, :cond_1

    .line 114
    const/4 v2, 0x0

    .line 168
    :goto_2
    return v2

    .line 1100
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bingerz/android/pathcontainspoint/b;->a:Lcom/bingerz/android/pathcontainspoint/c;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Lcom/bingerz/android/pathcontainspoint/b;->a(Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;)Lcom/bingerz/android/pathcontainspoint/c;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/bingerz/android/pathcontainspoint/b;->a:Lcom/bingerz/android/pathcontainspoint/c;

    .line 1101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/bingerz/android/pathcontainspoint/b;->a:Lcom/bingerz/android/pathcontainspoint/c;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/bingerz/android/pathcontainspoint/b;->a:Lcom/bingerz/android/pathcontainspoint/c;

    .line 2035
    iget-wide v6, v3, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    iget-wide v8, v4, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    mul-double/2addr v6, v8

    iget-wide v8, v3, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    iget-wide v4, v4, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    mul-double/2addr v4, v8

    add-double/2addr v4, v6

    .line 1101
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    goto :goto_1

    .line 110
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 118
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bingerz/android/pathcontainspoint/c;

    iget-wide v4, v2, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    .line 119
    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bingerz/android/pathcontainspoint/c;

    iget-wide v2, v2, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    .line 122
    const/4 v6, 0x0

    move-wide v8, v4

    move-wide v10, v4

    move v12, v6

    move-wide v6, v2

    move-wide v4, v2

    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_6

    .line 123
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bingerz/android/pathcontainspoint/c;

    .line 124
    iget-wide v14, v2, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    cmpl-double v3, v14, v8

    if-lez v3, :cond_3

    .line 125
    iget-wide v8, v2, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    .line 127
    :cond_3
    iget-wide v14, v2, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    cmpg-double v3, v14, v10

    if-gez v3, :cond_4

    .line 128
    iget-wide v10, v2, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    .line 130
    :cond_4
    iget-wide v14, v2, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    cmpl-double v3, v14, v4

    if-lez v3, :cond_5

    .line 131
    iget-wide v4, v2, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    .line 133
    :cond_5
    iget-wide v14, v2, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    cmpg-double v3, v14, v6

    if-gez v3, :cond_d

    .line 134
    iget-wide v2, v2, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    .line 122
    :goto_4
    add-int/lit8 v6, v12, 0x1

    move v12, v6

    move-wide v6, v2

    goto :goto_3

    .line 137
    :cond_6
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    cmpg-double v2, v2, v10

    if-ltz v2, :cond_7

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    cmpl-double v2, v2, v8

    if-gtz v2, :cond_7

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    cmpg-double v2, v2, v6

    if-ltz v2, :cond_7

    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_8

    .line 138
    :cond_7
    const/4 v2, -0x1

    goto/16 :goto_2

    .line 141
    :cond_8
    sub-double v2, v8, v10

    .line 142
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v8

    .line 143
    sub-double/2addr v4, v6

    .line 144
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v6

    .line 145
    add-double v12, v2, v4

    .line 147
    new-instance v5, Lcom/bingerz/android/pathcontainspoint/c;

    invoke-direct {v5}, Lcom/bingerz/android/pathcontainspoint/c;-><init>()V

    .line 149
    :cond_9
    const/4 v2, 0x0

    .line 151
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v14

    add-double/2addr v8, v10

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/bingerz/android/pathcontainspoint/c;->a:D

    .line 152
    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v14

    add-double/2addr v8, v10

    mul-double/2addr v8, v12

    add-double/2addr v6, v8

    iput-wide v6, v5, Lcom/bingerz/android/pathcontainspoint/c;->b:D

    .line 153
    const/4 v3, 0x0

    move v11, v3

    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v11, v3, :cond_b

    .line 154
    add-int/lit8 v3, v11, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    rem-int/2addr v3, v4

    .line 155
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bingerz/android/pathcontainspoint/c;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bingerz/android/pathcontainspoint/c;

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v8, p3

    invoke-direct/range {v3 .. v10}, Lcom/bingerz/android/pathcontainspoint/b;->a(Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;Lcom/bingerz/android/pathcontainspoint/c;DZ)I

    move-result v3

    .line 157
    if-eqz v3, :cond_a

    .line 160
    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 161
    add-int/lit8 v2, v2, 0x1

    .line 153
    :cond_a
    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_5

    .line 164
    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v11, v3, :cond_9

    .line 168
    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_c
    const/4 v2, -0x1

    goto/16 :goto_2

    :cond_d
    move-wide v2, v6

    goto/16 :goto_4
.end method
