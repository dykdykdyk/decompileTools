.class final Lcom/amap/api/mapcore2d/ap;
.super Ljava/lang/Object;
.source "MapController.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private a:F

.field private b:F

.field private c:Lcom/amap/api/mapcore2d/ay;

.field private d:Z

.field private e:Lcom/amap/api/mapcore2d/ap$b;

.field private f:Lcom/amap/api/mapcore2d/ap$a;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore2d/ay;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput v0, p0, Lcom/amap/api/mapcore2d/ap;->a:F

    .line 34
    iput v0, p0, Lcom/amap/api/mapcore2d/ap;->b:F

    .line 37
    iput-object p1, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ap;->d:Z

    .line 39
    new-instance v0, Lcom/amap/api/mapcore2d/ap$b;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore2d/ap$b;-><init>(Lcom/amap/api/mapcore2d/ap;Lcom/amap/api/mapcore2d/ap$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ap;->e:Lcom/amap/api/mapcore2d/ap$b;

    .line 40
    new-instance v0, Lcom/amap/api/mapcore2d/ap$a;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore2d/ap$a;-><init>(Lcom/amap/api/mapcore2d/ap;Lcom/amap/api/mapcore2d/ap$1;)V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/ap;->f:Lcom/amap/api/mapcore2d/ap$a;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore2d/ap;)Lcom/amap/api/mapcore2d/ay;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    return-object v0
.end method

.method private a(IIZZ)Z
    .locals 6

    .prologue
    .line 403
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/ap;->a(IIZZI)Z

    move-result v0

    return v0
.end method

.method private a(IIZZI)Z
    .locals 7

    .prologue
    .line 379
    const-string v6, "zoomWithAnimation"

    .line 380
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->M()V

    .line 381
    const/4 v1, 0x0

    .line 382
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->e()F

    move-result v0

    int-to-float v2, p5

    add-float/2addr v0, v2

    .line 386
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v2}, Lcom/amap/api/mapcore2d/ay$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore2d/b;->a(F)F

    move-result v3

    .line 387
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->e()F

    move-result v0

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 388
    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/ap;->a(IIFZZ)V

    .line 389
    const/4 v0, 0x1

    move v1, v0

    .line 392
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->h:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->q()Lcom/amap/api/mapcore2d/ak;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->h:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->N()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_1
    :goto_1
    return v1

    .line 382
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 383
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->e()F

    move-result v0

    int-to-float v2, p5

    sub-float/2addr v0, v2

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    const-string v2, "MapController"

    invoke-static {v0, v2, v6}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private b(Lcom/amap/api/mapcore2d/u;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 96
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-nez v1, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ay$d;->f()Lcom/amap/api/mapcore2d/u;

    move-result-object v1

    .line 101
    if-eqz v1, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/u;->b()I

    move-result v2

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/u;->b()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 105
    invoke-virtual {p1}, Lcom/amap/api/mapcore2d/u;->a()I

    move-result v2

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/u;->a()I

    move-result v1

    if-eq v2, v1, :cond_0

    .line 108
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Lcom/amap/api/mapcore2d/u;)V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->h:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->M()V

    .line 122
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/ay$d;->a(Lcom/amap/api/mapcore2d/u;)V

    .line 124
    return-void
.end method

.method private e(F)F
    .locals 4

    .prologue
    .line 135
    const-string v1, "setZoom"

    .line 136
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 137
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->g()Lcom/amap/api/mapcore2d/b;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->M()V

    .line 139
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore2d/b;->a(F)F

    move-result v2

    .line 140
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore2d/ay$d;->a(F)V

    .line 142
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->h:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->q()Lcom/amap/api/mapcore2d/ak;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/api/mapcore2d/ak;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->h:Lcom/amap/api/mapcore2d/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/b;->N()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return v2

    .line 146
    :catch_0
    move-exception v0

    const-string v3, "MapController"

    invoke-static {v0, v3, v1}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private f(F)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 152
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-nez v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v1, v1, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v1}, Lcom/amap/api/mapcore2d/ay$d;->e()F

    move-result v1

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    .line 158
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/amap/api/mapcore2d/ap;->a:F

    return v0
.end method

.method public final a(F)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lcom/amap/api/mapcore2d/ap;->a:F

    .line 57
    return-void
.end method

.method public final a(FF)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 161
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/ap;->a(FFIII)V

    .line 162
    return-void
.end method

.method public final a(FFIII)V
    .locals 19

    .prologue
    .line 164
    const-string v8, "zoomToSpan"

    .line 165
    const/4 v4, 0x0

    cmpg-float v4, p1, v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-gtz v4, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v4, v4, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v4, v4, Lcom/amap/api/mapcore2d/ay;->b:Lcom/amap/api/mapcore2d/ay$e;

    if-eqz v4, :cond_0

    .line 172
    const/4 v5, 0x0

    .line 174
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v4, v4, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v4}, Lcom/amap/api/mapcore2d/ay$d;->e()F

    move-result v6

    .line 175
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v4, v4, Lcom/amap/api/mapcore2d/ay;->b:Lcom/amap/api/mapcore2d/ay$e;

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v4, v0, v1, v2}, Lcom/amap/api/mapcore2d/ay$e;->b(III)I

    move-result v4

    .line 176
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v7, v7, Lcom/amap/api/mapcore2d/ay;->b:Lcom/amap/api/mapcore2d/ay$e;

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v7, v0, v1, v2}, Lcom/amap/api/mapcore2d/ay$e;->a(III)I

    move-result v7

    .line 179
    if-nez v4, :cond_3

    if-nez v7, :cond_3

    .line 180
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amap/api/mapcore2d/ap;->a:F

    .line 181
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amap/api/mapcore2d/ap;->b:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v4

    move-object/from16 v18, v4

    move v4, v5

    move-object/from16 v5, v18

    :goto_1
    const-string v6, "MapController"

    invoke-static {v5, v6, v8}, Lcom/amap/api/mapcore2d/ck;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    :cond_2
    :goto_2
    const-string v5, "MapController"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "zoom:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/amap/api/mapcore2d/ap;->c(F)F

    goto :goto_0

    .line 186
    :cond_3
    int-to-float v5, v7

    div-float v5, v5, p1

    float-to-double v10, v5

    .line 188
    int-to-float v4, v4

    div-float v4, v4, p2

    float-to-double v4, v4

    .line 190
    :try_start_1
    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 194
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v7, v7, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-wide v10, v7, Lcom/amap/api/mapcore2d/au;->k:D

    .line 195
    div-double/2addr v10, v4

    .line 196
    const/4 v7, 0x0

    .line 199
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v4, v4, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-wide v4, v4, Lcom/amap/api/mapcore2d/au;->d:D

    .line 200
    :goto_3
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v12

    cmpl-double v9, v4, v10

    if-lez v9, :cond_4

    .line 201
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 206
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v4, v4, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-wide v4, v4, Lcom/amap/api/mapcore2d/au;->d:D

    const/4 v9, 0x1

    shl-int/2addr v9, v7

    int-to-double v12, v9

    div-double/2addr v4, v12

    div-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v10

    div-double/2addr v4, v10

    .line 207
    int-to-double v6, v7

    add-double/2addr v4, v6

    double-to-float v5, v4

    .line 208
    :try_start_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/amap/api/mapcore2d/ap;->d(F)F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    .line 209
    float-to-int v5, v4

    .line 211
    int-to-float v6, v5

    sub-float v6, v4, v6

    .line 213
    float-to-double v10, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    :try_start_3
    sget-wide v16, Lcom/amap/api/mapcore2d/ay;->a:D

    sub-double v14, v14, v16

    const-wide v16, 0x3fd999999999999aL    # 0.4

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    cmpl-double v7, v10, v12

    if-lez v7, :cond_5

    .line 215
    sget-wide v6, Lcom/amap/api/mapcore2d/ay;->a:D

    double-to-float v4, v6

    .line 216
    int-to-float v5, v5

    add-float/2addr v4, v5

    goto/16 :goto_2

    .line 217
    :cond_5
    float-to-double v10, v6

    sget-wide v12, Lcom/amap/api/mapcore2d/ay;->a:D

    cmpl-double v7, v10, v12

    if-lez v7, :cond_6

    .line 218
    sget-wide v6, Lcom/amap/api/mapcore2d/ay;->a:D

    const-wide v8, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    sub-double/2addr v6, v8

    double-to-float v4, v6

    .line 219
    int-to-float v5, v5

    add-float/2addr v4, v5

    goto/16 :goto_2

    .line 220
    :cond_6
    sget-wide v10, Lcom/amap/api/mapcore2d/ay;->a:D

    const-wide v12, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    sub-double/2addr v10, v12

    double-to-float v7, v10

    cmpl-float v6, v6, v7

    if-nez v6, :cond_2

    .line 221
    sget-wide v6, Lcom/amap/api/mapcore2d/ay;->a:D
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const-wide v8, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    sub-double/2addr v6, v8

    double-to-float v4, v6

    .line 222
    int-to-float v5, v5

    add-float/2addr v4, v5

    goto/16 :goto_2

    .line 238
    :catch_1
    move-exception v4

    move-object v5, v4

    move v4, v6

    goto/16 :goto_1

    :catch_2
    move-exception v5

    goto/16 :goto_1
.end method

.method public final a(IIFZZ)V
    .locals 6

    .prologue
    .line 374
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->e:Lcom/amap/api/mapcore2d/ap$b;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/amap/api/mapcore2d/ap$b;->a(IIFZZ)V

    .line 375
    return-void
.end method

.method public final a(Lcom/amap/api/mapcore2d/u;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ap;->b(Lcom/amap/api/mapcore2d/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ap;->c(Lcom/amap/api/mapcore2d/u;)V

    .line 93
    :cond_0
    return-void
.end method

.method public final a(Lcom/amap/api/mapcore2d/u;F)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ap;->b(Lcom/amap/api/mapcore2d/u;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/ap;->f(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ap;->c(Lcom/amap/api/mapcore2d/u;)V

    .line 116
    invoke-direct {p0, p2}, Lcom/amap/api/mapcore2d/ap;->e(F)F

    goto :goto_0
.end method

.method public final a(Lcom/amap/api/mapcore2d/u;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 331
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->f:Lcom/amap/api/mapcore2d/ap$a;

    invoke-virtual {v0, p1, v1, v1, p2}, Lcom/amap/api/mapcore2d/ap$a;->a(Lcom/amap/api/mapcore2d/u;Landroid/os/Message;Ljava/lang/Runnable;I)V

    .line 332
    return-void
.end method

.method public final a(Z)V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->e:Lcom/amap/api/mapcore2d/ap$b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap$b;->a()V

    .line 344
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->f:Lcom/amap/api/mapcore2d/ap$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap$a;->b()V

    .line 345
    return-void
.end method

.method final a(I)Z
    .locals 6

    .prologue
    .line 306
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->c()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 307
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->d()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p1

    .line 306
    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/ap;->a(IIZZI)Z

    move-result v0

    return v0
.end method

.method public final a(II)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 320
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/amap/api/mapcore2d/ap;->a(IIZZ)Z

    move-result v0

    return v0
.end method

.method public final b()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/amap/api/mapcore2d/ap;->b:F

    return v0
.end method

.method public final b(F)V
    .locals 0

    .prologue
    .line 60
    iput p1, p0, Lcom/amap/api/mapcore2d/ap;->b:F

    .line 61
    return-void
.end method

.method public final b(II)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 348
    iget-boolean v0, p0, Lcom/amap/api/mapcore2d/ap;->d:Z

    if-eqz v0, :cond_1

    .line 349
    iput-boolean v4, p0, Lcom/amap/api/mapcore2d/ap;->d:Z

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 356
    :cond_2
    sget-boolean v0, Lcom/amap/api/mapcore2d/p;->q:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 357
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 358
    new-instance v1, Landroid/graphics/PointF;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 359
    iget-object v2, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v2, v2, Lcom/amap/api/mapcore2d/ay;->i:Lcom/amap/api/mapcore2d/au;

    iget-object v3, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v3, v3, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 360
    invoke-virtual {v3}, Lcom/amap/api/mapcore2d/ay$d;->e()F

    move-result v3

    .line 359
    invoke-virtual {v2, v0, v1, v3}, Lcom/amap/api/mapcore2d/au;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    .line 364
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0, v4, v4}, Lcom/amap/api/mapcore2d/ay$d;->a(ZZ)V

    goto :goto_0
.end method

.method final b(I)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 311
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->c()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    .line 312
    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->d()I

    move-result v0

    div-int/lit8 v2, v0, 0x2

    move-object v0, p0

    move v4, v3

    move v5, p1

    .line 311
    invoke-direct/range {v0 .. v5}, Lcom/amap/api/mapcore2d/ap;->a(IIZZI)Z

    move-result v0

    return v0
.end method

.method public final c(F)F
    .locals 1

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ap;->f(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    :goto_0
    return p1

    .line 130
    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore2d/ap;->e(F)F

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/ap;->a(I)Z

    move-result v0

    return v0
.end method

.method public final d(F)F
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->b()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->b()I

    move-result v0

    int-to-float p1, v0

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->a()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->c:Lcom/amap/api/mapcore2d/ay;

    iget-object v0, v0, Lcom/amap/api/mapcore2d/ay;->c:Lcom/amap/api/mapcore2d/ay$d;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ay$d;->a()I

    move-result v0

    int-to-float p1, v0

    .line 252
    :cond_1
    return p1
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 316
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore2d/ap;->b(I)Z

    move-result v0

    return v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore2d/ap;->d:Z

    .line 370
    return-void
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->f:Lcom/amap/api/mapcore2d/ap$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap$a;->a()Z

    move-result v0

    return v0
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/amap/api/mapcore2d/ap;->f:Lcom/amap/api/mapcore2d/ap$a;

    invoke-virtual {v0}, Lcom/amap/api/mapcore2d/ap$a;->b()V

    .line 425
    return-void
.end method

.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/16 v2, -0xa

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return v1

    .line 68
    :cond_0
    const/4 v0, 0x1

    .line 69
    packed-switch p2, :pswitch_data_0

    move v0, v1

    :goto_1
    move v1, v0

    .line 86
    goto :goto_0

    .line 71
    :pswitch_0
    invoke-virtual {p0, v2, v1}, Lcom/amap/api/mapcore2d/ap;->b(II)V

    goto :goto_1

    .line 74
    :pswitch_1
    invoke-virtual {p0, v3, v1}, Lcom/amap/api/mapcore2d/ap;->b(II)V

    goto :goto_1

    .line 77
    :pswitch_2
    invoke-virtual {p0, v1, v2}, Lcom/amap/api/mapcore2d/ap;->b(II)V

    goto :goto_1

    .line 80
    :pswitch_3
    invoke-virtual {p0, v1, v3}, Lcom/amap/api/mapcore2d/ap;->b(II)V

    goto :goto_1

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
