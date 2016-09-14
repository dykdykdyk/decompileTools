.class public final Lcom/nut/blehunter/ble/ae;
.super Ljava/lang/Object;
.source "RssiFilter.java"


# instance fields
.field a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, 0x7

    iput-wide v0, p0, Lcom/nut/blehunter/ble/ae;->b:J

    .line 18
    const/4 v0, 0x5

    iput v0, p0, Lcom/nut/blehunter/ble/ae;->c:I

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ble/ae;->d:Ljava/util/Map;

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ble/ae;->a:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ble/ae;->e:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ble/ae;->f:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/util/List;J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 75
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)J
    .locals 16

    .prologue
    .line 89
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const-wide/16 v4, 0x0

    .line 147
    :goto_0
    return-wide v4

    .line 92
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 93
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    .line 94
    const/4 v3, 0x0

    .line 97
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nut/blehunter/ble/ae;->a:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nut/blehunter/ble/ae;->a:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 100
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nut/blehunter/ble/ae;->d:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 101
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nut/blehunter/ble/ae;->d:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 103
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nut/blehunter/ble/ae;->f:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nut/blehunter/ble/ae;->f:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v2

    .line 106
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nut/blehunter/ble/ae;->e:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nut/blehunter/ble/ae;->e:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :goto_1
    move-object v3, v8

    .line 113
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nut/blehunter/ble/ae;->c:I

    if-ge v8, v9, :cond_5

    .line 114
    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v6, v0, Lcom/nut/blehunter/ble/ae;->c:I

    if-ge v2, v6, :cond_4

    .line 115
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v2, v8

    :goto_4
    move v14, v3

    move-object v3, v2

    move v2, v14

    goto :goto_2

    .line 117
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nut/blehunter/ble/ae;->f:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 120
    :cond_5
    if-eqz v2, :cond_a

    .line 121
    cmp-long v8, p2, v6

    if-gez v8, :cond_6

    cmp-long v8, v6, v4

    if-gtz v8, :cond_7

    :cond_6
    cmp-long v8, p2, v6

    if-lez v8, :cond_9

    cmp-long v8, v6, v4

    if-gez v8, :cond_9

    .line 123
    :cond_7
    sub-long v4, v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/nut/blehunter/ble/ae;->b:J

    cmp-long v4, v4, v8

    if-gez v4, :cond_8

    .line 124
    move-wide/from16 v0, p2

    invoke-static {v3, v0, v1}, Lcom/nut/blehunter/ble/ae;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v3

    .line 125
    const/4 v2, 0x0

    move-object v4, v3

    move v3, v2

    .line 1080
    :goto_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x5

    if-eq v2, v5, :cond_c

    .line 1081
    const-wide/16 v8, 0x0

    .line 143
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nut/blehunter/ble/ae;->a:Ljava/util/Map;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nut/blehunter/ble/ae;->d:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nut/blehunter/ble/ae;->f:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nut/blehunter/ble/ae;->e:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v4, v8

    .line 147
    goto/16 :goto_0

    :cond_8
    move-wide/from16 v6, p2

    move-object v4, v3

    move v3, v2

    .line 127
    goto :goto_5

    .line 130
    :cond_9
    invoke-static {v3, v6, v7}, Lcom/nut/blehunter/ble/ae;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v2

    .line 131
    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Lcom/nut/blehunter/ble/ae;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v3

    .line 132
    const/4 v2, 0x0

    move-object v4, v3

    move v3, v2

    goto :goto_5

    .line 135
    :cond_a
    sub-long v4, v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/nut/blehunter/ble/ae;->b:J

    cmp-long v4, v4, v8

    if-gez v4, :cond_b

    .line 136
    move-wide/from16 v0, p2

    invoke-static {v3, v0, v1}, Lcom/nut/blehunter/ble/ae;->a(Ljava/util/List;J)Ljava/util/List;

    move-result-object v3

    move-object v4, v3

    move v3, v2

    goto :goto_5

    .line 139
    :cond_b
    const/4 v2, 0x1

    move-wide/from16 v6, p2

    move-object v4, v3

    move v3, v2

    goto :goto_5

    .line 1083
    :cond_c
    const/4 v2, 0x0

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v10, 0x5

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x64

    div-long/2addr v8, v10

    const/4 v2, 0x1

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0xa

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x64

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    const/4 v2, 0x2

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0xf

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x64

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    const/4 v2, 0x3

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x14

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x64

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    const/4 v2, 0x4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x32

    mul-long/2addr v10, v12

    const-wide/16 v12, 0x64

    div-long/2addr v10, v12

    add-long/2addr v8, v10

    goto/16 :goto_6

    :catch_1
    move-exception v2

    move-object v2, v8

    goto/16 :goto_4

    :cond_d
    move v2, v3

    goto/16 :goto_1
.end method
