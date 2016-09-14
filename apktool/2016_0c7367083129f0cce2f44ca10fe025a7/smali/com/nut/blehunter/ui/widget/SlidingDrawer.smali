.class public Lcom/nut/blehunter/ui/widget/SlidingDrawer;
.super Landroid/view/ViewGroup;
.source "SlidingDrawer.java"


# instance fields
.field private A:Z

.field private B:Z

.field private final C:I

.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private final H:I

.field a:Landroid/view/View;

.field b:Z

.field c:Z

.field private final d:I

.field private final e:I

.field private f:Landroid/view/View;

.field private final g:Landroid/graphics/Rect;

.field private final h:Landroid/graphics/Rect;

.field private i:Z

.field private j:Z

.field private k:Landroid/view/VelocityTracker;

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/nut/blehunter/ui/widget/u;

.field private q:Lcom/nut/blehunter/ui/widget/t;

.field private r:Lcom/nut/blehunter/ui/widget/v;

.field private final s:Landroid/os/Handler;

.field private t:F

.field private u:F

.field private v:F

.field private w:J

.field private x:J

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 162
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    .line 174
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->g:Landroid/graphics/Rect;

    .line 84
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->h:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Lcom/nut/blehunter/ui/widget/w;

    invoke-direct {v0, p0, v2}, Lcom/nut/blehunter/ui/widget/w;-><init>(Lcom/nut/blehunter/ui/widget/SlidingDrawer;B)V

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->s:Landroid/os/Handler;

    .line 175
    sget-object v0, Lcom/nut/blehunter/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 178
    const/4 v0, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 179
    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b:Z

    .line 180
    const/4 v0, 0x4

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->l:I

    .line 181
    const/4 v0, 0x3

    invoke-virtual {v3, v0, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    .line 182
    const/4 v0, 0x5

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->A:Z

    .line 183
    const/4 v0, 0x6

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->B:Z

    .line 185
    invoke-virtual {v3, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 186
    if-nez v0, :cond_1

    .line 187
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    .line 179
    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 192
    if-nez v1, :cond_2

    .line 193
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is required and must refer to a valid child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_2
    if-ne v0, v1, :cond_3

    .line 198
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content and handle attributes must refer to different children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_3
    iput v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->d:I

    .line 203
    iput v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->e:I

    .line 205
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 206
    const/high16 v1, 0x40c00000    # 6.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->C:I

    .line 207
    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->D:I

    .line 208
    const/high16 v1, 0x43160000    # 150.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->E:I

    .line 209
    const/high16 v1, 0x43480000    # 200.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->F:I

    .line 210
    const/high16 v1, 0x44fa0000    # 2000.0f

    mul-float/2addr v1, v0

    add-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->G:I

    .line 211
    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    float-to-int v0, v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->H:I

    .line 213
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 215
    invoke-virtual {p0, v2}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 216
    return-void
.end method

.method private a(IFZ)V
    .locals 6

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 472
    int-to-float v0, p1

    iput v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->v:F

    .line 473
    iput p2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->u:F

    .line 475
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c:Z

    if-eqz v0, :cond_5

    .line 476
    if-nez p3, :cond_0

    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->F:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_0

    iget v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->n:I

    :goto_0
    add-int/2addr v0, v1

    if-le p1, v0, :cond_4

    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->F:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    .line 481
    :cond_0
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->G:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->t:F

    .line 482
    cmpg-float v0, p2, v2

    if-gez v0, :cond_1

    .line 483
    iput v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->u:F

    .line 511
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 512
    iput-wide v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->w:J

    .line 513
    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->x:J

    .line 514
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->z:Z

    .line 515
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->s:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 516
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->s:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->x:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 1647
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1648
    iput-boolean v4, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->i:Z

    .line 1654
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->k:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_2

    .line 1655
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->k:Landroid/view/VelocityTracker;

    .line 518
    :cond_2
    return-void

    .line 476
    :cond_3
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->o:I

    goto :goto_0

    .line 487
    :cond_4
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->G:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->t:F

    .line 488
    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    .line 489
    iput v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->u:F

    goto :goto_1

    .line 493
    :cond_5
    if-nez p3, :cond_8

    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->F:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_6

    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getHeight()I

    move-result v0

    :goto_2
    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_8

    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->F:I

    neg-int v0, v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_8

    .line 497
    :cond_6
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->G:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->t:F

    .line 498
    cmpg-float v0, p2, v2

    if-gez v0, :cond_1

    .line 499
    iput v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->u:F

    goto :goto_1

    .line 493
    :cond_7
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_2

    .line 504
    :cond_8
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->G:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->t:F

    .line 505
    cmpl-float v0, p2, v2

    if-lez v0, :cond_1

    .line 506
    iput v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->u:F

    goto :goto_1
.end method

.method static synthetic a(Lcom/nut/blehunter/ui/widget/SlidingDrawer;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/nut/blehunter/ui/widget/SlidingDrawer;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->B:Z

    return v0
.end method

.method private c(I)V
    .locals 6

    .prologue
    const/16 v4, 0x3e8

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 521
    iput-boolean v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->i:Z

    .line 522
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->k:Landroid/view/VelocityTracker;

    .line 523
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 524
    :goto_0
    if-eqz v0, :cond_2

    .line 525
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->G:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->t:F

    .line 526
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->F:I

    int-to-float v0, v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->u:F

    .line 527
    iget v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->l:I

    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->n:I

    sub-int/2addr v0, v3

    :goto_1
    add-int/2addr v0, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->v:F

    .line 529
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->v:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->d(I)V

    .line 530
    iput-boolean v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->z:Z

    .line 531
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->s:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 533
    iput-wide v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->w:J

    .line 534
    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->x:J

    .line 535
    iput-boolean v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->z:Z

    .line 543
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 523
    goto :goto_0

    .line 527
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->o:I

    sub-int/2addr v0, v3

    goto :goto_1

    .line 537
    :cond_2
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->z:Z

    if-eqz v0, :cond_3

    .line 538
    iput-boolean v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->z:Z

    .line 539
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->s:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    :cond_3
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->d(I)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/nut/blehunter/ui/widget/SlidingDrawer;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 61
    .line 1661
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->z:Z

    if-eqz v0, :cond_0

    .line 1679
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1680
    iget-wide v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->w:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    .line 1681
    iget v3, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->v:F

    .line 1682
    iget v4, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->u:F

    .line 1683
    iget v5, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->t:F

    .line 1684
    mul-float v6, v4, v2

    add-float/2addr v3, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v6, v5

    mul-float/2addr v6, v2

    mul-float/2addr v6, v2

    add-float/2addr v3, v6

    iput v3, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->v:F

    .line 1685
    mul-float/2addr v2, v5

    add-float/2addr v2, v4

    iput v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->u:F

    .line 1686
    iput-wide v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->w:J

    .line 1663
    iget v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->v:F

    iget v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->l:I

    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getHeight()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    .line 1664
    iput-boolean v7, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->z:Z

    .line 1665
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b()V

    .line 1668
    :cond_0
    :goto_1
    return-void

    .line 1663
    :cond_1
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_0

    .line 1666
    :cond_2
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->v:F

    iget v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 1667
    iput-boolean v7, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->z:Z

    .line 1668
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c()V

    goto :goto_1

    .line 1670
    :cond_3
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->v:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->d(I)V

    .line 1671
    iget-wide v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->x:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->x:J

    .line 1672
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->s:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->s:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->x:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private d(I)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v3, -0x2711

    const/16 v2, -0x2712

    .line 546
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    .line 548
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b:Z

    if-eqz v0, :cond_4

    .line 549
    if-ne p1, v3, :cond_0

    .line 550
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 551
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->invalidate()V

    .line 609
    :goto_0
    return-void

    .line 552
    :cond_0
    if-ne p1, v2, :cond_1

    .line 553
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->l:I

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getBottom()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->n:I

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 555
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->invalidate()V

    goto :goto_0

    .line 557
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 558
    sub-int v0, p1, v2

    .line 559
    iget v3, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    if-ge p1, v3, :cond_3

    .line 560
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    sub-int/2addr v0, v2

    .line 564
    :cond_2
    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 566
    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->g:Landroid/graphics/Rect;

    .line 567
    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->h:Landroid/graphics/Rect;

    .line 569
    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 570
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 572
    iget v1, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v0

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v0

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 573
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getWidth()I

    move-result v4

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v3, v7, v1, v4, v0}, Landroid/graphics/Rect;->union(IIII)V

    .line 576
    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 561
    :cond_3
    iget v3, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->l:I

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->n:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    if-le v0, v3, :cond_2

    .line 562
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->l:I

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getBottom()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getTop()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->n:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    goto :goto_1

    .line 579
    :cond_4
    if-ne p1, v3, :cond_5

    .line 580
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 581
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 582
    :cond_5
    if-ne p1, v2, :cond_6

    .line 583
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->l:I

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getRight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->o:I

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 585
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 587
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 588
    sub-int v0, p1, v2

    .line 589
    iget v3, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    if-ge p1, v3, :cond_8

    .line 590
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    sub-int/2addr v0, v2

    .line 594
    :cond_7
    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 596
    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->g:Landroid/graphics/Rect;

    .line 597
    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->h:Landroid/graphics/Rect;

    .line 599
    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 600
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 602
    iget v1, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    iget v4, v2, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v0

    iget v6, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 603
    iget v1, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getHeight()I

    move-result v2

    invoke-virtual {v3, v1, v7, v0, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 606
    invoke-virtual {p0, v3}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 591
    :cond_8
    iget v3, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->l:I

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getRight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->o:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v2

    if-le v0, v3, :cond_7

    .line 592
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->l:I

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getRight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->o:I

    sub-int/2addr v0, v3

    sub-int/2addr v0, v2

    goto :goto_2
.end method


# virtual methods
.method final a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    .line 612
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->z:Z

    if-eqz v0, :cond_0

    .line 644
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->f:Landroid/view/View;

    .line 619
    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 620
    iget-boolean v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b:Z

    if-eqz v1, :cond_3

    .line 621
    iget v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->n:I

    .line 622
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    sub-int/2addr v2, v3

    .line 623
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/view/View;->measure(II)V

    .line 626
    iget v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    add-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v4, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    add-int/2addr v1, v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    .line 640
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 641
    invoke-virtual {v0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->buildDrawingCache()V

    .line 643
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 629
    :cond_3
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 630
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    sub-int/2addr v2, v3

    .line 631
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 633
    iget v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    add-int/2addr v2, v1

    iget v3, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v2, v6, v1, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method final a(I)V
    .locals 2

    .prologue
    .line 462
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c(I)V

    .line 463
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->G:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a(IFZ)V

    .line 464
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 812
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->d(I)V

    .line 813
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 814
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 816
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c:Z

    if-nez v0, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c:Z

    .line 821
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->q:Lcom/nut/blehunter/ui/widget/t;

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->q:Lcom/nut/blehunter/ui/widget/t;

    invoke-interface {v0}, Lcom/nut/blehunter/ui/widget/t;->a()V

    goto :goto_0
.end method

.method final b(I)V
    .locals 2

    .prologue
    .line 467
    invoke-direct {p0, p1}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c(I)V

    .line 468
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->G:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a(IFZ)V

    .line 469
    return-void
.end method

.method final c()V
    .locals 2

    .prologue
    .line 827
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->d(I)V

    .line 828
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->f:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 830
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c:Z

    if-eqz v0, :cond_1

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 834
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c:Z

    .line 836
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->p:Lcom/nut/blehunter/ui/widget/u;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->p:Lcom/nut/blehunter/ui/widget/u;

    invoke-interface {v0}, Lcom/nut/blehunter/ui/widget/u;->a()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getDrawingTime()J

    move-result-wide v2

    .line 268
    iget-object v4, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    .line 269
    iget-boolean v5, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b:Z

    .line 271
    invoke-virtual {p0, p1, v4, v2, v3}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 273
    iget-boolean v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->i:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->z:Z

    if-eqz v1, :cond_6

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->f:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_3

    .line 276
    if-eqz v5, :cond_2

    .line 277
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v0, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 291
    :cond_1
    :goto_0
    return-void

    .line 279
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2, v0, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 282
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 283
    if-eqz v5, :cond_5

    move v1, v0

    :goto_1
    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    iget v4, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    sub-int/2addr v0, v4

    int-to-float v0, v0

    :cond_4
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 285
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->f:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 286
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 283
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v6, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    sub-int/2addr v1, v6

    int-to-float v1, v1

    goto :goto_1

    .line 288
    :cond_6
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c:Z

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->f:Landroid/view/View;

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->f:Landroid/view/View;

    return-object v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 878
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 220
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 221
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->d:I

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    .line 222
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    new-instance v1, Lcom/nut/blehunter/ui/widget/s;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/nut/blehunter/ui/widget/s;-><init>(Lcom/nut/blehunter/ui/widget/SlidingDrawer;B)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->e:I

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->f:Landroid/view/View;

    .line 229
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->f:Landroid/view/View;

    if-nez v0, :cond_1

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 234
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 801
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 802
    const-class v0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 803
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .prologue
    .line 807
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 808
    const-class v0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 809
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 334
    iget-boolean v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->j:Z

    if-eqz v2, :cond_1

    .line 375
    :cond_0
    :goto_0
    return v0

    .line 338
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 343
    iget-object v5, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->g:Landroid/graphics/Rect;

    .line 344
    iget-object v6, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    .line 346
    invoke-virtual {v6, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 347
    iget-boolean v7, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->i:Z

    if-nez v7, :cond_2

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-virtual {v5, v7, v8}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 351
    :cond_2
    if-nez v2, :cond_3

    .line 352
    iput-boolean v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->i:Z

    .line 354
    invoke-virtual {v6, v1}, Landroid/view/View;->setPressed(Z)V

    .line 356
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a()V

    .line 363
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b:Z

    if-eqz v0, :cond_4

    .line 364
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 365
    float-to-int v2, v4

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->y:I

    .line 366
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c(I)V

    .line 372
    :goto_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_3
    move v0, v1

    .line 375
    goto :goto_0

    .line 368
    :cond_4
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 369
    float-to-int v2, v3

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->y:I

    .line 370
    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 12

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->i:Z

    if-eqz v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 299
    :cond_0
    sub-int v0, p4, p2

    .line 300
    sub-int v2, p5, p3

    .line 302
    iget-object v3, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    .line 304
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 305
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 310
    iget-object v6, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->f:Landroid/view/View;

    .line 312
    iget-boolean v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b:Z

    if-eqz v1, :cond_2

    .line 313
    sub-int/2addr v0, v4

    div-int/lit8 v1, v0, 0x2

    .line 314
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    .line 316
    :goto_1
    const/4 v2, 0x0

    iget v7, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    add-int/2addr v7, v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    iget v9, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    add-int/2addr v9, v5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 327
    :goto_2
    add-int v2, v1, v4

    add-int v4, v0, v5

    invoke-virtual {v3, v1, v0, v2, v4}, Landroid/view/View;->layout(IIII)V

    .line 328
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->n:I

    .line 329
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->o:I

    goto :goto_0

    .line 314
    :cond_1
    sub-int v0, v2, v5

    iget v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->l:I

    add-int/2addr v0, v2

    goto :goto_1

    .line 319
    :cond_2
    iget-boolean v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c:Z

    if-eqz v1, :cond_3

    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    .line 320
    :goto_3
    sub-int v1, v2, v5

    div-int/lit8 v1, v1, 0x2

    .line 322
    iget v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    add-int/2addr v2, v4

    const/4 v7, 0x0

    iget v8, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    add-int/2addr v8, v4

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v6, v2, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    move v11, v1

    move v1, v0

    move v0, v11

    goto :goto_2

    .line 319
    :cond_3
    sub-int/2addr v0, v4

    iget v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->l:I

    add-int/2addr v0, v1

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 238
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 239
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 241
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 242
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 244
    if-eqz v0, :cond_0

    if-nez v2, :cond_1

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    .line 249
    invoke-virtual {p0, v0, p1, p2}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 251
    iget-boolean v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b:Z

    if-eqz v2, :cond_2

    .line 252
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sub-int v0, v3, v0

    iget v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    sub-int/2addr v0, v2

    .line 253
    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->f:Landroid/view/View;

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v2, v4, v0}, Landroid/view/View;->measure(II)V

    .line 262
    :goto_0
    invoke-virtual {p0, v1, v3}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->setMeasuredDimension(II)V

    .line 263
    return-void

    .line 257
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int v0, v1, v0

    iget v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    sub-int/2addr v0, v2

    .line 258
    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->f:Landroid/view/View;

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v0, v4}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 380
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->j:Z

    if-eqz v0, :cond_0

    move v0, v3

    .line 458
    :goto_0
    return v0

    .line 384
    :cond_0
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->i:Z

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->k:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 386
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 387
    packed-switch v0, :pswitch_data_0

    .line 458
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->i:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->z:Z

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_2
    move v0, v3

    goto :goto_0

    .line 389
    :pswitch_0
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_2
    float-to-int v0, v0

    iget v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->y:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->d(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_2

    .line 393
    :pswitch_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->k:Landroid/view/VelocityTracker;

    .line 394
    iget v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->H:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 396
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 397
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 400
    iget-boolean v5, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b:Z

    .line 401
    if-eqz v5, :cond_8

    .line 402
    cmpg-float v2, v1, v6

    if-gez v2, :cond_7

    move v2, v3

    .line 403
    :goto_3
    cmpg-float v6, v0, v6

    if-gez v6, :cond_4

    .line 404
    neg-float v0, v0

    .line 406
    :cond_4
    iget v6, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->E:I

    int-to-float v6, v6

    cmpl-float v6, v0, v6

    if-lez v6, :cond_18

    .line 407
    iget v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->E:I

    int-to-float v0, v0

    move v10, v2

    move v2, v0

    move v0, v10

    .line 419
    :goto_4
    float-to-double v6, v2

    float-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    double-to-float v1, v6

    .line 420
    if-eqz v0, :cond_17

    .line 421
    neg-float v0, v1

    .line 424
    :goto_5
    iget-object v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 425
    iget-object v2, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 427
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->D:I

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_14

    .line 428
    if-eqz v5, :cond_b

    iget-boolean v6, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->C:I

    iget v7, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    add-int/2addr v6, v7

    if-lt v1, v6, :cond_6

    :cond_5
    iget-boolean v6, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c:Z

    if-nez v6, :cond_d

    iget v6, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->l:I

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->n:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->C:I

    sub-int/2addr v6, v7

    if-le v1, v6, :cond_d

    .line 435
    :cond_6
    iget-boolean v6, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->A:Z

    if-eqz v6, :cond_11

    .line 436
    invoke-virtual {p0, v4}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->playSoundEffect(I)V

    .line 438
    iget-boolean v0, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c:Z

    if-eqz v0, :cond_f

    .line 439
    if-eqz v5, :cond_e

    move v0, v1

    :goto_6
    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a(I)V

    goto/16 :goto_1

    :cond_7
    move v2, v4

    .line 402
    goto :goto_3

    .line 410
    :cond_8
    cmpg-float v2, v0, v6

    if-gez v2, :cond_a

    move v2, v3

    .line 411
    :goto_7
    cmpg-float v6, v1, v6

    if-gez v6, :cond_9

    .line 412
    neg-float v1, v1

    .line 414
    :cond_9
    iget v6, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->E:I

    int-to-float v6, v6

    cmpl-float v6, v1, v6

    if-lez v6, :cond_18

    .line 415
    iget v1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->E:I

    int-to-float v1, v1

    move v10, v2

    move v2, v0

    move v0, v10

    goto :goto_4

    :cond_a
    move v2, v4

    .line 410
    goto :goto_7

    .line 428
    :cond_b
    iget-boolean v6, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c:Z

    if-eqz v6, :cond_c

    iget v6, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->C:I

    iget v7, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->m:I

    add-int/2addr v6, v7

    if-lt v2, v6, :cond_6

    :cond_c
    iget-boolean v6, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->c:Z

    if-nez v6, :cond_d

    iget v6, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->l:I

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->getLeft()I

    move-result v7

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->o:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->C:I

    sub-int/2addr v6, v7

    if-gt v2, v6, :cond_6

    .line 448
    :cond_d
    if-eqz v5, :cond_13

    :goto_8
    invoke-direct {p0, v1, v0, v4}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a(IFZ)V

    goto/16 :goto_1

    :cond_e
    move v0, v2

    .line 439
    goto :goto_6

    .line 441
    :cond_f
    if-eqz v5, :cond_10

    :goto_9
    invoke-virtual {p0, v1}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->b(I)V

    goto/16 :goto_1

    :cond_10
    move v1, v2

    goto :goto_9

    .line 444
    :cond_11
    if-eqz v5, :cond_12

    :goto_a
    invoke-direct {p0, v1, v0, v4}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a(IFZ)V

    goto/16 :goto_1

    :cond_12
    move v1, v2

    goto :goto_a

    :cond_13
    move v1, v2

    .line 448
    goto :goto_8

    .line 451
    :cond_14
    if-eqz v5, :cond_15

    :goto_b
    invoke-direct {p0, v1, v0, v4}, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->a(IFZ)V

    goto/16 :goto_1

    :cond_15
    move v1, v2

    goto :goto_b

    :cond_16
    move v0, v4

    .line 458
    goto/16 :goto_0

    :cond_17
    move v0, v1

    goto/16 :goto_5

    :cond_18
    move v10, v2

    move v2, v0

    move v0, v10

    goto/16 :goto_4

    .line 387
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnDrawerCloseListener(Lcom/nut/blehunter/ui/widget/t;)V
    .locals 0

    .prologue
    .line 856
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->q:Lcom/nut/blehunter/ui/widget/t;

    .line 857
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/nut/blehunter/ui/widget/u;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->p:Lcom/nut/blehunter/ui/widget/u;

    .line 848
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/nut/blehunter/ui/widget/v;)V
    .locals 0

    .prologue
    .line 868
    iput-object p1, p0, Lcom/nut/blehunter/ui/widget/SlidingDrawer;->r:Lcom/nut/blehunter/ui/widget/v;

    .line 869
    return-void
.end method
