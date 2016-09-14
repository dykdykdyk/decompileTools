.class final Landroid/support/v7/widget/ew;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:I

.field b:I

.field c:Landroid/support/v4/widget/ScrollerCompat;

.field final synthetic d:Landroid/support/v7/widget/RecyclerView;

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4378
    iput-object p1, p0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4369
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->i()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ew;->e:Landroid/view/animation/Interpolator;

    .line 4373
    iput-boolean v1, p0, Landroid/support/v7/widget/ew;->f:Z

    .line 4376
    iput-boolean v1, p0, Landroid/support/v7/widget/ew;->g:Z

    .line 4379
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->i()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ew;->c:Landroid/support/v4/widget/ScrollerCompat;

    .line 4380
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 4508
    iget-boolean v0, p0, Landroid/support/v7/widget/ew;->f:Z

    if-eqz v0, :cond_0

    .line 4509
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ew;->g:Z

    .line 4514
    :goto_0
    return-void

    .line 4511
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4512
    iget-object v0, p0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    .line 4525
    .line 12539
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 12540
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 12541
    if-le v2, v3, :cond_0

    const/4 v0, 0x1

    .line 12542
    :goto_0
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 12543
    mul-int v1, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v1, v5

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 12544
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    .line 12545
    :goto_1
    div-int/lit8 v6, v1, 0x2

    .line 12546
    int-to-float v5, v5

    mul-float/2addr v5, v12

    int-to-float v7, v1

    div-float/2addr v5, v7

    invoke-static {v12, v5}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 12547
    int-to-float v7, v6

    int-to-float v6, v6

    .line 13533
    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v5, v8

    .line 13534
    float-to-double v8, v5

    const-wide v10, 0x3fde28c7460698c7L    # 0.4712389167638204

    mul-double/2addr v8, v10

    double-to-float v5, v8

    .line 13535
    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v5, v8

    .line 12548
    mul-float/2addr v5, v6

    add-float/2addr v5, v7

    .line 12551
    if-lez v4, :cond_2

    .line 12552
    const/high16 v0, 0x447a0000    # 1000.0f

    int-to-float v1, v4

    div-float v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    .line 12557
    :goto_2
    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 12529
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v7/widget/ew;->a(III)V

    .line 4526
    return-void

    .line 12541
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 12544
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    goto :goto_1

    .line 12554
    :cond_2
    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    int-to-float v0, v0

    .line 12555
    int-to-float v1, v1

    div-float/2addr v0, v1

    add-float/2addr v0, v12

    const/high16 v1, 0x43960000    # 300.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_2

    :cond_3
    move v0, v3

    .line 12554
    goto :goto_3
.end method

.method public final a(III)V
    .locals 1

    .prologue
    .line 4561
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->i()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/ew;->a(IIILandroid/view/animation/Interpolator;)V

    .line 4562
    return-void
.end method

.method public final a(IIILandroid/view/animation/Interpolator;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 4565
    iget-object v0, p0, Landroid/support/v7/widget/ew;->e:Landroid/view/animation/Interpolator;

    if-eq v0, p4, :cond_0

    .line 4566
    iput-object p4, p0, Landroid/support/v7/widget/ew;->e:Landroid/view/animation/Interpolator;

    .line 4567
    iget-object v0, p0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p4}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/ew;->c:Landroid/support/v4/widget/ScrollerCompat;

    .line 4569
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4570
    iput v1, p0, Landroid/support/v7/widget/ew;->b:I

    iput v1, p0, Landroid/support/v7/widget/ew;->a:I

    .line 4571
    iget-object v0, p0, Landroid/support/v7/widget/ew;->c:Landroid/support/v4/widget/ScrollerCompat;

    move v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 4572
    invoke-virtual {p0}, Landroid/support/v7/widget/ew;->a()V

    .line 4573
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 4576
    iget-object v0, p0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4577
    iget-object v0, p0, Landroid/support/v7/widget/ew;->c:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 4578
    return-void
.end method

.method public final run()V
    .locals 17

    .prologue
    .line 4384
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-nez v1, :cond_1

    .line 4385
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ew;->b()V

    .line 4493
    :cond_0
    :goto_0
    return-void

    .line 10496
    :cond_1
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v7/widget/ew;->g:Z

    .line 10497
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v7/widget/ew;->f:Z

    .line 4389
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)V

    .line 4392
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v7/widget/ew;->c:Landroid/support/v4/widget/ScrollerCompat;

    .line 4393
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v9, v1, Landroid/support/v7/widget/eg;->s:Landroid/support/v7/widget/es;

    .line 4394
    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4395
    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v10

    .line 4396
    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v11

    .line 4397
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/ew;->a:I

    sub-int v12, v10, v1

    .line 4398
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/ew;->b:I

    sub-int v13, v11, v1

    .line 4399
    const/4 v4, 0x0

    .line 4400
    const/4 v2, 0x0

    .line 4401
    move-object/from16 v0, p0

    iput v10, v0, Landroid/support/v7/widget/ew;->a:I

    .line 4402
    move-object/from16 v0, p0

    iput v11, v0, Landroid/support/v7/widget/ew;->b:I

    .line 4403
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 4404
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v5

    if-eqz v5, :cond_1a

    .line 4405
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->a()V

    .line 4406
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->i(Landroid/support/v7/widget/RecyclerView;)V

    .line 4407
    const-string v5, "RV Scroll"

    invoke-static {v5}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 4408
    if-eqz v12, :cond_2

    .line 4409
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v3, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v3, v12, v4, v5}, Landroid/support/v7/widget/eg;->a(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v4

    .line 4410
    sub-int v3, v12, v4

    .line 4412
    :cond_2
    if-eqz v13, :cond_3

    .line 4413
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v1, v13, v2, v5}, Landroid/support/v7/widget/eg;->b(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v2

    .line 4414
    sub-int v1, v13, v2

    .line 4416
    :cond_3
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 4417
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->j(Landroid/support/v7/widget/RecyclerView;)V

    .line 4419
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->k(Landroid/support/v7/widget/RecyclerView;)V

    .line 4420
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->a(Z)V

    .line 4422
    if-eqz v9, :cond_1a

    .line 11092
    iget-boolean v5, v9, Landroid/support/v7/widget/es;->b:Z

    .line 4422
    if-nez v5, :cond_1a

    .line 11100
    iget-boolean v5, v9, Landroid/support/v7/widget/es;->c:Z

    .line 4423
    if-eqz v5, :cond_1a

    .line 4424
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v5}, Landroid/support/v7/widget/eu;->a()I

    move-result v5

    .line 4425
    if-nez v5, :cond_18

    .line 4426
    invoke-virtual {v9}, Landroid/support/v7/widget/es;->a()V

    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    .line 4435
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5}, Landroid/support/v7/widget/RecyclerView;->l(Landroid/support/v7/widget/RecyclerView;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 4436
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4438
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    .line 4439
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v5, v12, v13}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;II)V

    .line 4441
    :cond_5
    if-nez v2, :cond_6

    if-eqz v1, :cond_e

    .line 4442
    :cond_6
    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v5

    float-to-int v6, v5

    .line 4444
    const/4 v5, 0x0

    .line 4445
    if-eq v2, v10, :cond_25

    .line 4446
    if-gez v2, :cond_1b

    neg-int v5, v6

    :goto_2
    move v7, v5

    .line 4449
    :goto_3
    const/4 v5, 0x0

    .line 4450
    if-eq v1, v11, :cond_24

    .line 4451
    if-gez v1, :cond_1d

    neg-int v6, v6

    .line 4454
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v5

    const/4 v14, 0x2

    if-eq v5, v14, :cond_b

    .line 4455
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    .line 12055
    if-gez v7, :cond_1e

    .line 12056
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->b()V

    .line 12057
    iget-object v14, v5, Landroid/support/v7/widget/RecyclerView;->n:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v15, v7

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 12063
    :cond_8
    :goto_5
    if-gez v6, :cond_1f

    .line 12064
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->d()V

    .line 12065
    iget-object v14, v5, Landroid/support/v7/widget/RecyclerView;->o:Landroid/support/v4/widget/EdgeEffectCompat;

    neg-int v15, v6

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 12071
    :cond_9
    :goto_6
    if-nez v7, :cond_a

    if-eqz v6, :cond_b

    .line 12072
    :cond_a
    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 4457
    :cond_b
    if-nez v7, :cond_c

    if-eq v2, v10, :cond_c

    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getFinalX()I

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    if-nez v6, :cond_d

    if-eq v1, v11, :cond_d

    .line 4458
    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->getFinalY()I

    move-result v1

    if-nez v1, :cond_e

    .line 4459
    :cond_d
    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 4462
    :cond_e
    if-nez v4, :cond_f

    if-eqz v3, :cond_10

    .line 4463
    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->h()V

    .line 4466
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->m(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 4467
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 4470
    :cond_11
    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v1}, Landroid/support/v7/widget/eg;->f()Z

    move-result v1

    if-eqz v1, :cond_20

    if-ne v3, v13, :cond_20

    const/4 v1, 0x1

    move v2, v1

    .line 4472
    :goto_7
    if-eqz v12, :cond_21

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    invoke-virtual {v1}, Landroid/support/v7/widget/eg;->e()Z

    move-result v1

    if-eqz v1, :cond_21

    if-ne v4, v12, :cond_21

    const/4 v1, 0x1

    .line 4474
    :goto_8
    if-nez v12, :cond_12

    if-eqz v13, :cond_13

    :cond_12
    if-nez v1, :cond_13

    if-eqz v2, :cond_22

    :cond_13
    const/4 v1, 0x1

    .line 4477
    :goto_9
    invoke-virtual {v8}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_14

    if-nez v1, :cond_23

    .line 4478
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ew;->d:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;I)V

    .line 4484
    :cond_15
    :goto_a
    if-eqz v9, :cond_17

    .line 12092
    iget-boolean v1, v9, Landroid/support/v7/widget/es;->b:Z

    .line 4485
    if-eqz v1, :cond_16

    .line 4486
    invoke-static {v9}, Landroid/support/v7/widget/es;->a(Landroid/support/v7/widget/es;)V

    .line 4488
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/widget/ew;->g:Z

    if-nez v1, :cond_17

    .line 4489
    invoke-virtual {v9}, Landroid/support/v7/widget/es;->a()V

    .line 12501
    :cond_17
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/support/v7/widget/ew;->f:Z

    .line 12502
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v7/widget/ew;->g:Z

    if-eqz v1, :cond_0

    .line 12503
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ew;->a()V

    goto/16 :goto_0

    .line 11110
    :cond_18
    iget v6, v9, Landroid/support/v7/widget/es;->a:I

    .line 4427
    if-lt v6, v5, :cond_19

    .line 4428
    add-int/lit8 v5, v5, -0x1

    .line 12049
    iput v5, v9, Landroid/support/v7/widget/es;->a:I

    .line 4431
    :cond_19
    invoke-static {v9}, Landroid/support/v7/widget/es;->a(Landroid/support/v7/widget/es;)V

    :cond_1a
    move/from16 v16, v3

    move v3, v2

    move/from16 v2, v16

    goto/16 :goto_1

    .line 4446
    :cond_1b
    if-lez v2, :cond_1c

    move v5, v6

    goto/16 :goto_2

    :cond_1c
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 4451
    :cond_1d
    if-gtz v1, :cond_7

    const/4 v6, 0x0

    goto/16 :goto_4

    .line 12058
    :cond_1e
    if-lez v7, :cond_8

    .line 12059
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->c()V

    .line 12060
    iget-object v14, v5, Landroid/support/v7/widget/RecyclerView;->p:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v14, v7}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto/16 :goto_5

    .line 12066
    :cond_1f
    if-lez v6, :cond_9

    .line 12067
    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->e()V

    .line 12068
    iget-object v14, v5, Landroid/support/v7/widget/RecyclerView;->q:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v14, v6}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto/16 :goto_6

    .line 4470
    :cond_20
    const/4 v1, 0x0

    move v2, v1

    goto/16 :goto_7

    .line 4472
    :cond_21
    const/4 v1, 0x0

    goto :goto_8

    .line 4474
    :cond_22
    const/4 v1, 0x0

    goto :goto_9

    .line 4480
    :cond_23
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/ew;->a()V

    goto :goto_a

    :cond_24
    move v6, v5

    goto/16 :goto_4

    :cond_25
    move v7, v5

    goto/16 :goto_3
.end method
