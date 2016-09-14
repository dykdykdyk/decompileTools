.class public Landroid/support/v7/widget/StaggeredGridLayoutManager;
.super Landroid/support/v7/widget/eg;
.source "StaggeredGridLayoutManager.java"


# instance fields
.field private B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

.field private C:I

.field private final D:Landroid/graphics/Rect;

.field private final E:Landroid/support/v7/widget/fp;

.field private F:Z

.field private G:Z

.field private final H:Ljava/lang/Runnable;

.field a:Landroid/support/v7/widget/do;

.field b:Landroid/support/v7/widget/do;

.field c:Z

.field d:I

.field e:I

.field f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

.field private g:I

.field private h:[Landroid/support/v7/widget/ft;

.field private i:I

.field private j:I

.field private final k:Landroid/support/v7/widget/cs;

.field private l:Z

.field private m:Ljava/util/BitSet;

.field private n:I

.field private o:Z

.field private p:Z


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 243
    invoke-direct {p0}, Landroid/support/v7/widget/eg;-><init>()V

    .line 110
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 133
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    .line 138
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    .line 149
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 155
    const/high16 v2, -0x80000000

    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    .line 161
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 166
    const/4 v2, 0x2

    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    .line 192
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/graphics/Rect;

    .line 197
    new-instance v2, Landroid/support/v7/widget/fp;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/fp;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Landroid/support/v7/widget/fp;

    .line 205
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    .line 211
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Z

    .line 213
    new-instance v2, Landroid/support/v7/widget/fo;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/fo;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    .line 244
    iput p2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 245
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(I)V

    .line 246
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v2, :cond_0

    .line 12588
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/eg;->v:Z

    .line 247
    new-instance v0, Landroid/support/v7/widget/cs;

    invoke-direct {v0}, Landroid/support/v7/widget/cs;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    .line 248
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()V

    .line 249
    return-void

    :cond_0
    move v0, v1

    .line 246
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 226
    invoke-direct {p0}, Landroid/support/v7/widget/eg;-><init>()V

    .line 110
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 133
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    .line 138
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    .line 149
    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 155
    const/high16 v2, -0x80000000

    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    .line 161
    new-instance v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-direct {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 166
    const/4 v2, 0x2

    iput v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    .line 192
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/graphics/Rect;

    .line 197
    new-instance v2, Landroid/support/v7/widget/fp;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/fp;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Landroid/support/v7/widget/fp;

    .line 205
    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    .line 211
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Z

    .line 213
    new-instance v2, Landroid/support/v7/widget/fo;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/fo;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;)V

    iput-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    .line 227
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/eh;

    move-result-object v2

    .line 228
    iget v3, v2, Landroid/support/v7/widget/eh;->a:I

    .line 11441
    if-eqz v3, :cond_0

    if-eq v3, v0, :cond_0

    .line 11442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11444
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 11445
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-eq v3, v4, :cond_1

    .line 11448
    iput v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    .line 11449
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    .line 11450
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/do;

    iput-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    .line 11451
    iput-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/do;

    .line 11452
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()V

    .line 229
    :cond_1
    iget v3, v2, Landroid/support/v7/widget/eh;->b:I

    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(I)V

    .line 230
    iget-boolean v2, v2, Landroid/support/v7/widget/eh;->c:Z

    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)V

    .line 231
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v2, :cond_2

    .line 11588
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/eg;->v:Z

    .line 232
    new-instance v0, Landroid/support/v7/widget/cs;

    invoke-direct {v0}, Landroid/support/v7/widget/cs;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    .line 233
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g()V

    .line 234
    return-void

    :cond_2
    move v0, v1

    .line 231
    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cs;Landroid/support/v7/widget/eu;)I
    .locals 17

    .prologue
    .line 1524
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/BitSet;->set(IIZ)V

    .line 1529
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget-boolean v2, v2, Landroid/support/v7/widget/cs;->i:Z

    if-eqz v2, :cond_4

    .line 1530
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/cs;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1531
    const v2, 0x7fffffff

    move v3, v2

    .line 1543
    :goto_0
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/cs;->e:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(II)V

    .line 1550
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    .line 1551
    invoke-virtual {v2}, Landroid/support/v7/widget/do;->c()I

    move-result v2

    move v4, v2

    .line 1553
    :goto_1
    const/4 v2, 0x0

    .line 30090
    :goto_2
    move-object/from16 v0, p2

    iget v5, v0, Landroid/support/v7/widget/cs;->c:I

    if-ltz v5, :cond_7

    move-object/from16 v0, p2

    iget v5, v0, Landroid/support/v7/widget/cs;->c:I

    invoke-virtual/range {p3 .. p3}, Landroid/support/v7/widget/eu;->a()I

    move-result v6

    if-ge v5, v6, :cond_7

    const/4 v5, 0x1

    .line 1554
    :goto_3
    if-eqz v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget-boolean v5, v5, Landroid/support/v7/widget/cs;->i:Z

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    .line 1555
    invoke-virtual {v5}, Ljava/util/BitSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2c

    .line 30100
    :cond_0
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/cs;->c:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/eo;->b(I)Landroid/view/View;

    move-result-object v13

    .line 30101
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/cs;->c:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/support/v7/widget/cs;->d:I

    add-int/2addr v2, v5

    move-object/from16 v0, p2

    iput v2, v0, Landroid/support/v7/widget/cs;->c:I

    .line 1557
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/fq;

    .line 30948
    iget-object v5, v2, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v5}, Landroid/support/v7/widget/ex;->c()I

    move-result v14

    .line 1559
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 31667
    iget-object v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    if-eqz v6, :cond_1

    iget-object v6, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    array-length v6, v6

    if-lt v14, v6, :cond_8

    .line 31668
    :cond_1
    const/4 v5, -0x1

    move v6, v5

    .line 1561
    :goto_4
    const/4 v5, -0x1

    if-ne v6, v5, :cond_9

    const/4 v5, 0x1

    move v12, v5

    .line 1562
    :goto_5
    if-eqz v12, :cond_d

    .line 1563
    iget-boolean v5, v2, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    const/4 v6, 0x0

    aget-object v8, v5, v6

    .line 1564
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 32675
    invoke-virtual {v5, v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->c(I)V

    .line 32676
    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    iget v6, v8, Landroid/support/v7/widget/ft;->e:I

    aput v6, v5, v14

    .line 1575
    :goto_6
    iput-object v8, v2, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    .line 1576
    move-object/from16 v0, p2

    iget v5, v0, Landroid/support/v7/widget/cs;->e:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_e

    .line 33070
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v13, v5, v6}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;IZ)V

    .line 34111
    :goto_7
    iget-boolean v5, v2, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v5, :cond_10

    .line 34112
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f

    .line 34113
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:I

    .line 34496
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/eg;->A:I

    .line 35478
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/eg;->y:I

    .line 34114
    const/4 v9, 0x0

    iget v10, v2, Landroid/support/v7/widget/fq;->height:I

    const/4 v11, 0x1

    invoke-static {v6, v7, v9, v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v6

    .line 34113
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;II)V

    .line 1585
    :goto_8
    move-object/from16 v0, p2

    iget v5, v0, Landroid/support/v7/widget/cs;->e:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_16

    .line 1586
    iget-boolean v5, v2, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(I)I

    move-result v5

    .line 1588
    :goto_9
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v6, v13}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v6

    add-int v7, v5, v6

    .line 1589
    if-eqz v12, :cond_30

    iget-boolean v6, v2, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v6, :cond_30

    .line 39681
    new-instance v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 39682
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-array v6, v6, [I

    iput-object v6, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    .line 39683
    const/4 v6, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v6, v10, :cond_13

    .line 39684
    iget-object v10, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v11, v11, v6

    invoke-virtual {v11, v5}, Landroid/support/v7/widget/ft;->b(I)I

    move-result v11

    sub-int v11, v5, v11

    aput v11, v10, v6

    .line 39683
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 1533
    :cond_3
    const/high16 v2, -0x80000000

    move v3, v2

    goto/16 :goto_0

    .line 1536
    :cond_4
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/cs;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1537
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/cs;->g:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/cs;->b:I

    add-int/2addr v2, v3

    move v3, v2

    goto/16 :goto_0

    .line 1539
    :cond_5
    move-object/from16 v0, p2

    iget v2, v0, Landroid/support/v7/widget/cs;->f:I

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/cs;->b:I

    sub-int/2addr v2, v3

    move v3, v2

    goto/16 :goto_0

    .line 1551
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    .line 1552
    invoke-virtual {v2}, Landroid/support/v7/widget/do;->b()I

    move-result v2

    move v4, v2

    goto/16 :goto_1

    .line 30090
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 31670
    :cond_8
    iget-object v5, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    aget v5, v5, v14

    move v6, v5

    goto/16 :goto_4

    .line 1561
    :cond_9
    const/4 v5, 0x0

    move v12, v5

    goto/16 :goto_5

    .line 31929
    :cond_a
    move-object/from16 v0, p2

    iget v5, v0, Landroid/support/v7/widget/cs;->e:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(I)Z

    move-result v5

    .line 31931
    if-eqz v5, :cond_b

    .line 31932
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v6, v5, -0x1

    .line 31933
    const/4 v7, -0x1

    .line 31934
    const/4 v5, -0x1

    .line 31940
    :goto_b
    move-object/from16 v0, p2

    iget v8, v0, Landroid/support/v7/widget/cs;->e:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 31941
    const/4 v8, 0x0

    .line 31942
    const v10, 0x7fffffff

    .line 31943
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v9}, Landroid/support/v7/widget/do;->b()I

    move-result v15

    move v11, v6

    .line 31944
    :goto_c
    if-eq v11, v7, :cond_2

    .line 31945
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v6, v6, v11

    .line 31946
    invoke-virtual {v6, v15}, Landroid/support/v7/widget/ft;->b(I)I

    move-result v9

    .line 31947
    if-ge v9, v10, :cond_32

    move v8, v9

    .line 31944
    :goto_d
    add-int v9, v11, v5

    move v11, v9

    move v10, v8

    move-object v8, v6

    goto :goto_c

    .line 31936
    :cond_b
    const/4 v6, 0x0

    .line 31937
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 31938
    const/4 v5, 0x1

    goto :goto_b

    .line 31954
    :cond_c
    const/4 v8, 0x0

    .line 31955
    const/high16 v10, -0x80000000

    .line 31956
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v9}, Landroid/support/v7/widget/do;->c()I

    move-result v15

    move v11, v6

    .line 31957
    :goto_e
    if-eq v11, v7, :cond_2

    .line 31958
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v6, v6, v11

    .line 31959
    invoke-virtual {v6, v15}, Landroid/support/v7/widget/ft;->a(I)I

    move-result v9

    .line 31960
    if-le v9, v10, :cond_31

    move v8, v9

    .line 31957
    :goto_f
    add-int v9, v11, v5

    move v11, v9

    move v10, v8

    move-object v8, v6

    goto :goto_e

    .line 1572
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v8, v5, v6

    goto/16 :goto_6

    .line 34070
    :cond_e
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-super {v0, v13, v5, v6}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;IZ)V

    goto/16 :goto_7

    .line 35487
    :cond_f
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/eg;->z:I

    .line 36460
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/eg;->x:I

    .line 34118
    const/4 v7, 0x0

    iget v9, v2, Landroid/support/v7/widget/fq;->width:I

    const/4 v10, 0x1

    invoke-static {v5, v6, v7, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:I

    .line 34117
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;II)V

    goto/16 :goto_8

    .line 34122
    :cond_10
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    .line 34123
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    .line 37460
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/eg;->x:I

    .line 34124
    const/4 v7, 0x0

    iget v9, v2, Landroid/support/v7/widget/fq;->width:I

    const/4 v10, 0x0

    invoke-static {v5, v6, v7, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v5

    .line 37496
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/eg;->A:I

    .line 38478
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/eg;->y:I

    .line 34125
    const/4 v9, 0x0

    iget v10, v2, Landroid/support/v7/widget/fq;->height:I

    const/4 v11, 0x1

    invoke-static {v6, v7, v9, v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v6

    .line 34123
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;II)V

    goto/16 :goto_8

    .line 38487
    :cond_11
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/eg;->z:I

    .line 39460
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/eg;->x:I

    .line 34129
    const/4 v7, 0x0

    iget v9, v2, Landroid/support/v7/widget/fq;->width:I

    const/4 v10, 0x1

    invoke-static {v5, v6, v7, v9, v10}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    .line 39478
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/eg;->y:I

    .line 34130
    const/4 v9, 0x0

    iget v10, v2, Landroid/support/v7/widget/fq;->height:I

    const/4 v11, 0x0

    invoke-static {v6, v7, v9, v10, v11}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(IIIIZ)I

    move-result v6

    .line 34128
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v5, v6}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;II)V

    goto/16 :goto_8

    .line 1587
    :cond_12
    invoke-virtual {v8, v4}, Landroid/support/v7/widget/ft;->b(I)I

    move-result v5

    goto/16 :goto_9

    .line 1592
    :cond_13
    const/4 v6, -0x1

    iput v6, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 1593
    iput v14, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 1594
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v6, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    move v6, v5

    move v5, v7

    .line 1610
    :goto_10
    iget-boolean v7, v2, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v7, :cond_15

    move-object/from16 v0, p2

    iget v7, v0, Landroid/support/v7/widget/cs;->d:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_15

    .line 1611
    if-nez v12, :cond_14

    .line 1615
    move-object/from16 v0, p2

    iget v7, v0, Landroid/support/v7/widget/cs;->e:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_1d

    .line 39814
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    const/4 v9, 0x0

    aget-object v7, v7, v9

    const/high16 v9, -0x80000000

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/ft;->b(I)I

    move-result v9

    .line 39815
    const/4 v7, 0x1

    :goto_11
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v7, v10, :cond_1b

    .line 39816
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v10, v10, v7

    const/high16 v11, -0x80000000

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/ft;->b(I)I

    move-result v10

    if-eq v10, v9, :cond_1a

    .line 39817
    const/4 v7, 0x0

    .line 1616
    :goto_12
    if-nez v7, :cond_1c

    const/4 v7, 0x1

    .line 1620
    :goto_13
    if-eqz v7, :cond_15

    .line 1621
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 1622
    invoke-virtual {v7, v14}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v7

    .line 1623
    if-eqz v7, :cond_14

    .line 1624
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->d:Z

    .line 1626
    :cond_14
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    .line 40699
    :cond_15
    move-object/from16 v0, p2

    iget v7, v0, Landroid/support/v7/widget/cs;->e:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_24

    .line 40700
    iget-boolean v7, v2, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v7, :cond_21

    .line 40755
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v7, v7, -0x1

    :goto_14
    if-ltz v7, :cond_22

    .line 40756
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v9, v9, v7

    invoke-virtual {v9, v13}, Landroid/support/v7/widget/ft;->b(Landroid/view/View;)V

    .line 40755
    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    .line 1597
    :cond_16
    iget-boolean v5, v2, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j(I)I

    move-result v5

    .line 1599
    :goto_15
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v6, v13}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v6

    sub-int v7, v5, v6

    .line 1600
    if-eqz v12, :cond_19

    iget-boolean v6, v2, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v6, :cond_19

    .line 39690
    new-instance v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    invoke-direct {v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;-><init>()V

    .line 39691
    move-object/from16 v0, p0

    iget v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-array v6, v6, [I

    iput-object v6, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    .line 39692
    const/4 v6, 0x0

    :goto_16
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v6, v10, :cond_18

    .line 39693
    iget-object v10, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->c:[I

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v11, v11, v6

    invoke-virtual {v11, v5}, Landroid/support/v7/widget/ft;->a(I)I

    move-result v11

    sub-int/2addr v11, v5

    aput v11, v10, v6

    .line 39692
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 1598
    :cond_17
    invoke-virtual {v8, v4}, Landroid/support/v7/widget/ft;->a(I)I

    move-result v5

    goto :goto_15

    .line 1603
    :cond_18
    const/4 v6, 0x1

    iput v6, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    .line 1604
    iput v14, v9, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    .line 1605
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v6, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;)V

    :cond_19
    move v6, v7

    goto/16 :goto_10

    .line 39815
    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_11

    .line 39820
    :cond_1b
    const/4 v7, 0x1

    goto/16 :goto_12

    .line 1616
    :cond_1c
    const/4 v7, 0x0

    goto/16 :goto_13

    .line 39824
    :cond_1d
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    const/4 v9, 0x0

    aget-object v7, v7, v9

    const/high16 v9, -0x80000000

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/ft;->a(I)I

    move-result v9

    .line 39825
    const/4 v7, 0x1

    :goto_17
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v7, v10, :cond_1f

    .line 39826
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v10, v10, v7

    const/high16 v11, -0x80000000

    invoke-virtual {v10, v11}, Landroid/support/v7/widget/ft;->a(I)I

    move-result v10

    if-eq v10, v9, :cond_1e

    .line 39827
    const/4 v7, 0x0

    .line 1618
    :goto_18
    if-nez v7, :cond_20

    const/4 v7, 0x1

    goto/16 :goto_13

    .line 39825
    :cond_1e
    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 39830
    :cond_1f
    const/4 v7, 0x1

    goto :goto_18

    .line 1618
    :cond_20
    const/4 v7, 0x0

    goto/16 :goto_13

    .line 40703
    :cond_21
    iget-object v7, v2, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    invoke-virtual {v7, v13}, Landroid/support/v7/widget/ft;->b(Landroid/view/View;)V

    .line 1633
    :cond_22
    :goto_19
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()Z

    move-result v7

    if-eqz v7, :cond_27

    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v9, 0x1

    if-ne v7, v9, :cond_27

    .line 1634
    iget-boolean v7, v2, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v7, :cond_26

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/do;

    invoke-virtual {v7}, Landroid/support/v7/widget/do;->c()I

    move-result v7

    .line 1637
    :goto_1a
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/do;

    invoke-virtual {v9, v13}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v9

    sub-int v9, v7, v9

    move/from16 v16, v9

    move v9, v7

    move/from16 v7, v16

    .line 1645
    :goto_1b
    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_29

    .line 1646
    invoke-static {v13, v7, v6, v9, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 1651
    :goto_1c
    iget-boolean v5, v2, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v5, :cond_2a

    .line 1652
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget v5, v5, Landroid/support/v7/widget/cs;->e:I

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(II)V

    .line 1656
    :goto_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cs;)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget-boolean v5, v5, Landroid/support/v7/widget/cs;->h:Z

    if-eqz v5, :cond_23

    invoke-virtual {v13}, Landroid/view/View;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 1658
    iget-boolean v2, v2, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v2, :cond_2b

    .line 1659
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    .line 1664
    :cond_23
    :goto_1e
    const/4 v2, 0x1

    .line 1665
    goto/16 :goto_2

    .line 40706
    :cond_24
    iget-boolean v7, v2, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v7, :cond_25

    .line 40762
    move-object/from16 v0, p0

    iget v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v7, v7, -0x1

    :goto_1f
    if-ltz v7, :cond_22

    .line 40763
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v9, v9, v7

    invoke-virtual {v9, v13}, Landroid/support/v7/widget/ft;->a(Landroid/view/View;)V

    .line 40762
    add-int/lit8 v7, v7, -0x1

    goto :goto_1f

    .line 40709
    :cond_25
    iget-object v7, v2, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    invoke-virtual {v7, v13}, Landroid/support/v7/widget/ft;->a(Landroid/view/View;)V

    goto/16 :goto_19

    .line 1634
    :cond_26
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/do;

    .line 1635
    invoke-virtual {v7}, Landroid/support/v7/widget/do;->c()I

    move-result v7

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v9, v9, -0x1

    iget v10, v8, Landroid/support/v7/widget/ft;->e:I

    sub-int/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    mul-int/2addr v9, v10

    sub-int/2addr v7, v9

    goto/16 :goto_1a

    .line 1639
    :cond_27
    iget-boolean v7, v2, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v7, :cond_28

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/do;

    invoke-virtual {v7}, Landroid/support/v7/widget/do;->b()I

    move-result v7

    .line 1642
    :goto_20
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/do;

    invoke-virtual {v9, v13}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v9

    add-int/2addr v9, v7

    goto/16 :goto_1b

    .line 1639
    :cond_28
    iget v7, v8, Landroid/support/v7/widget/ft;->e:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    mul-int/2addr v7, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/do;

    .line 1641
    invoke-virtual {v9}, Landroid/support/v7/widget/do;->b()I

    move-result v9

    add-int/2addr v7, v9

    goto :goto_20

    .line 1648
    :cond_29
    invoke-static {v13, v6, v7, v5, v9}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IIII)V

    goto/16 :goto_1c

    .line 1654
    :cond_2a
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget v5, v5, Landroid/support/v7/widget/cs;->e:I

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ft;II)V

    goto/16 :goto_1d

    .line 1661
    :cond_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v5, v8, Landroid/support/v7/widget/ft;->e:I

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_1e

    .line 1666
    :cond_2c
    if-nez v2, :cond_2d

    .line 1667
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cs;)V

    .line 1670
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget v2, v2, Landroid/support/v7/widget/cs;->e:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2e

    .line 1671
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->b()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j(I)I

    move-result v2

    .line 1672
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v3}, Landroid/support/v7/widget/do;->b()I

    move-result v3

    sub-int v2, v3, v2

    .line 1677
    :goto_21
    if-lez v2, :cond_2f

    move-object/from16 v0, p2

    iget v3, v0, Landroid/support/v7/widget/cs;->b:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :goto_22
    return v2

    .line 1674
    :cond_2e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->c()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(I)I

    move-result v2

    .line 1675
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v3}, Landroid/support/v7/widget/do;->c()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_21

    .line 1677
    :cond_2f
    const/4 v2, 0x0

    goto :goto_22

    :cond_30
    move v6, v5

    move v5, v7

    goto/16 :goto_10

    :cond_31
    move-object v6, v8

    move v8, v10

    goto/16 :goto_f

    :cond_32
    move-object v6, v8

    move v8, v10

    goto/16 :goto_d
.end method

.method private a(I)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 421
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 422
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-eq p1, v0, :cond_1

    .line 17542
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 17543
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()V

    .line 424
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 425
    new-instance v0, Ljava/util/BitSet;

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    invoke-direct {v0, v2}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    .line 426
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-array v0, v0, [Landroid/support/v7/widget/ft;

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    move v0, v1

    .line 427
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_0

    .line 428
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    new-instance v3, Landroid/support/v7/widget/ft;

    invoke-direct {v3, p0, v0, v1}, Landroid/support/v7/widget/ft;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;IB)V

    aput-object v3, v2, v0

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()V

    .line 432
    :cond_1
    return-void
.end method

.method private a(ILandroid/support/v7/widget/eu;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1397
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iput v1, v0, Landroid/support/v7/widget/cs;->b:I

    .line 1398
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iput p1, v0, Landroid/support/v7/widget/cs;->c:I

    .line 1401
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 29721
    iget v0, p2, Landroid/support/v7/widget/eu;->a:I

    .line 1403
    const/4 v2, -0x1

    if-eq v0, v2, :cond_5

    .line 1404
    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-ge v0, p1, :cond_1

    move v0, v3

    :goto_0
    if-ne v2, v0, :cond_2

    .line 1405
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->e()I

    move-result v0

    move v2, v1

    .line 29745
    :goto_1
    iget-object v4, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->v(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    .line 1414
    :goto_2
    if-eqz v4, :cond_4

    .line 1415
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v5}, Landroid/support/v7/widget/do;->b()I

    move-result v5

    sub-int v2, v5, v2

    iput v2, v4, Landroid/support/v7/widget/cs;->f:I

    .line 1416
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v4}, Landroid/support/v7/widget/do;->c()I

    move-result v4

    add-int/2addr v0, v4

    iput v0, v2, Landroid/support/v7/widget/cs;->g:I

    .line 1421
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iput-boolean v1, v0, Landroid/support/v7/widget/cs;->h:Z

    .line 1422
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iput-boolean v3, v0, Landroid/support/v7/widget/cs;->a:Z

    .line 1423
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->g()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    .line 1424
    invoke-virtual {v2}, Landroid/support/v7/widget/do;->d()I

    move-result v2

    if-nez v2, :cond_0

    move v1, v3

    :cond_0
    iput-boolean v1, v0, Landroid/support/v7/widget/cs;->i:Z

    .line 1425
    return-void

    :cond_1
    move v0, v1

    .line 1404
    goto :goto_0

    .line 1407
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->e()I

    move-result v0

    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_3
    move v4, v1

    .line 29745
    goto :goto_2

    .line 1418
    :cond_4
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v5}, Landroid/support/v7/widget/do;->d()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, v4, Landroid/support/v7/widget/cs;->g:I

    .line 1419
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    neg-int v2, v2

    iput v2, v0, Landroid/support/v7/widget/cs;->f:I

    goto :goto_3

    :cond_5
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method private a(Landroid/support/v7/widget/eo;I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1856
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_0

    .line 1857
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v2

    .line 1858
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    .line 1859
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/do;->c(Landroid/view/View;)I

    move-result v0

    if-gt v0, p2, :cond_0

    .line 1860
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fq;

    .line 1862
    iget-boolean v3, v0, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v3, :cond_3

    move v0, v1

    .line 1863
    :goto_1
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v3, :cond_2

    .line 1864
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v3, v3, v0

    .line 42356
    iget-object v3, v3, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    .line 1864
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_1

    .line 1882
    :cond_0
    return-void

    .line 1863
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1868
    :goto_2
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v3, :cond_4

    .line 1869
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/support/v7/widget/ft;->e()V

    .line 1868
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1872
    :cond_3
    iget-object v3, v0, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    .line 43356
    iget-object v3, v3, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    .line 1872
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 1875
    iget-object v0, v0, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    invoke-virtual {v0}, Landroid/support/v7/widget/ft;->e()V

    .line 1877
    :cond_4
    invoke-virtual {p0, v2, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/eo;)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cs;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    const/4 v2, -0x1

    .line 1715
    iget-boolean v1, p2, Landroid/support/v7/widget/cs;->a:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p2, Landroid/support/v7/widget/cs;->i:Z

    if-eqz v1, :cond_1

    .line 1751
    :cond_0
    :goto_0
    return-void

    .line 1718
    :cond_1
    iget v1, p2, Landroid/support/v7/widget/cs;->b:I

    if-nez v1, :cond_3

    .line 1720
    iget v0, p2, Landroid/support/v7/widget/cs;->e:I

    if-ne v0, v2, :cond_2

    .line 1721
    iget v0, p2, Landroid/support/v7/widget/cs;->g:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/eo;I)V

    goto :goto_0

    .line 1723
    :cond_2
    iget v0, p2, Landroid/support/v7/widget/cs;->f:I

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/eo;I)V

    goto :goto_0

    .line 1728
    :cond_3
    iget v1, p2, Landroid/support/v7/widget/cs;->e:I

    if-ne v1, v2, :cond_7

    .line 1730
    iget v3, p2, Landroid/support/v7/widget/cs;->f:I

    iget v4, p2, Landroid/support/v7/widget/cs;->f:I

    .line 40792
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v1, v1, v5

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ft;->a(I)I

    move-result v1

    .line 40793
    :goto_1
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_5

    .line 40794
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v2, v2, v0

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/ft;->a(I)I

    move-result v2

    .line 40795
    if-le v2, v1, :cond_4

    move v1, v2

    .line 40793
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1730
    :cond_5
    sub-int v0, v3, v1

    .line 1732
    if-gez v0, :cond_6

    .line 1733
    iget v0, p2, Landroid/support/v7/widget/cs;->g:I

    .line 1737
    :goto_2
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/eo;I)V

    goto :goto_0

    .line 1735
    :cond_6
    iget v1, p2, Landroid/support/v7/widget/cs;->g:I

    iget v2, p2, Landroid/support/v7/widget/cs;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_2

    .line 1740
    :cond_7
    iget v3, p2, Landroid/support/v7/widget/cs;->g:I

    .line 40845
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v1, v1, v5

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/ft;->b(I)I

    move-result v1

    .line 40846
    :goto_3
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_9

    .line 40847
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ft;->b(I)I

    move-result v2

    .line 40848
    if-ge v2, v1, :cond_8

    move v1, v2

    .line 40846
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1740
    :cond_9
    iget v0, p2, Landroid/support/v7/widget/cs;->g:I

    sub-int v0, v1, v0

    .line 1742
    if-gez v0, :cond_a

    .line 1743
    iget v0, p2, Landroid/support/v7/widget/cs;->f:I

    .line 1747
    :goto_4
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/eo;I)V

    goto :goto_0

    .line 1745
    :cond_a
    iget v1, p2, Landroid/support/v7/widget/cs;->f:I

    iget v2, p2, Landroid/support/v7/widget/cs;->b:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_4
.end method

.method private a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Z)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 1360
    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k(I)I

    move-result v0

    .line 1361
    if-ne v0, v1, :cond_1

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1364
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v1}, Landroid/support/v7/widget/do;->c()I

    move-result v1

    sub-int v0, v1, v0

    .line 1366
    if-lez v0, :cond_0

    .line 1367
    neg-int v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v1

    neg-int v1, v1

    .line 1371
    sub-int/2addr v0, v1

    .line 1372
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1373
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/do;->a(I)V

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/ft;II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1777
    .line 41527
    iget v0, p1, Landroid/support/v7/widget/ft;->d:I

    .line 1778
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1779
    invoke-virtual {p1}, Landroid/support/v7/widget/ft;->a()I

    move-result v1

    .line 1780
    add-int/2addr v0, v1

    if-gt v0, p3, :cond_0

    .line 1781
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/ft;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    .line 1789
    :cond_0
    :goto_0
    return-void

    .line 1784
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/ft;->b()I

    move-result v1

    .line 1785
    sub-int v0, v1, v0

    if-lt v0, p3, :cond_0

    .line 1786
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m:Ljava/util/BitSet;

    iget v1, p1, Landroid/support/v7/widget/ft;->e:I

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(IZ)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;II)V
    .locals 5

    .prologue
    .line 1138
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1139
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fq;

    .line 1140
    iget v1, v0, Landroid/support/v7/widget/fq;->leftMargin:I

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/support/v7/widget/fq;->rightMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)I

    move-result v1

    .line 1142
    iget v2, v0, Landroid/support/v7/widget/fq;->topMargin:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/fq;->bottomMargin:I

    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->D:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    invoke-static {p3, v2, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(III)I

    move-result v2

    .line 1146
    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;IILandroid/support/v7/widget/ei;)Z

    move-result v0

    .line 1147
    if-eqz v0, :cond_0

    .line 1148
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1151
    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    if-eq v0, p1, :cond_0

    .line 471
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-boolean p1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 473
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    .line 474
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()V

    .line 475
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v0

    return v0
.end method

.method private b(Z)Landroid/view/View;
    .locals 8

    .prologue
    .line 1306
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->b()I

    move-result v3

    .line 1307
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()I

    move-result v4

    .line 1308
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v5

    .line 1309
    const/4 v1, 0x0

    .line 1310
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    .line 1311
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    .line 1312
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v6

    .line 1313
    iget-object v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v7, v0}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v7

    .line 1314
    if-le v7, v3, :cond_3

    if-ge v6, v4, :cond_3

    .line 1317
    if-ge v6, v3, :cond_0

    if-nez p1, :cond_1

    .line 1326
    :cond_0
    :goto_1
    return-object v0

    .line 1322
    :cond_1
    if-nez v1, :cond_3

    .line 1310
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1326
    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private b(I)V
    .locals 1

    .prologue
    .line 910
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    div-int v0, p1, v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    .line 912
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/do;

    .line 913
    invoke-virtual {v0}, Landroid/support/v7/widget/do;->g()I

    move-result v0

    .line 912
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->C:I

    .line 914
    return-void
.end method

.method private b(Landroid/support/v7/widget/eo;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1885
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    .line 1887
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_0

    .line 1888
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v3

    .line 1889
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v0

    if-lt v0, p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    .line 1890
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/do;->d(Landroid/view/View;)I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 1891
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fq;

    .line 1893
    iget-boolean v4, v0, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v4, :cond_3

    move v0, v1

    .line 1894
    :goto_1
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v4, :cond_2

    .line 1895
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v4, v4, v0

    .line 44356
    iget-object v4, v4, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    .line 1895
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1913
    :cond_0
    return-void

    .line 1894
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1899
    :goto_2
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v4, :cond_4

    .line 1900
    iget-object v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Landroid/support/v7/widget/ft;->d()V

    .line 1899
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1903
    :cond_3
    iget-object v4, v0, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    .line 45356
    iget-object v4, v4, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    .line 1903
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v4, v5, :cond_0

    .line 1906
    iget-object v0, v0, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    invoke-virtual {v0}, Landroid/support/v7/widget/ft;->d()V

    .line 1908
    :cond_4
    invoke-virtual {p0, v3, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;Landroid/support/v7/widget/eo;)V

    .line 1887
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Z)V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 1379
    invoke-direct {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j(I)I

    move-result v0

    .line 1380
    if-ne v0, v1, :cond_1

    .line 1394
    :cond_0
    :goto_0
    return-void

    .line 1383
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v1}, Landroid/support/v7/widget/do;->b()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1385
    if-lez v0, :cond_0

    .line 1386
    invoke-direct {p0, v0, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v1

    .line 1390
    sub-int/2addr v0, v1

    .line 1391
    if-eqz p3, :cond_0

    if-lez v0, :cond_0

    .line 1392
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    neg-int v0, v0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/do;->a(I)V

    goto :goto_0
.end method

.method static synthetic b(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    return v0
.end method

.method private static c(III)I
    .locals 3

    .prologue
    .line 1154
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 1162
    :cond_0
    :goto_0
    return p0

    .line 1157
    :cond_1
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1158
    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 1159
    :cond_2
    const/4 v1, 0x0

    .line 1160
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1159
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    goto :goto_0
.end method

.method private c(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 2059
    if-lez p1, :cond_1

    .line 2061
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    move v2, v0

    move v0, v1

    .line 2066
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iput-boolean v1, v3, Landroid/support/v7/widget/cs;->a:Z

    .line 2067
    invoke-direct {p0, v2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/eu;)V

    .line 2068
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)V

    .line 2069
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget v1, v1, Landroid/support/v7/widget/cs;->d:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/cs;->c:I

    .line 2070
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2071
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iput v1, v0, Landroid/support/v7/widget/cs;->b:I

    .line 2072
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    invoke-direct {p0, p2, v0, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cs;Landroid/support/v7/widget/eu;)I

    move-result v0

    .line 2074
    if-lt v1, v0, :cond_0

    .line 2076
    if-gez p1, :cond_2

    .line 2077
    neg-int p1, v0

    .line 2085
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/do;->a(I)V

    .line 2087
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 2088
    return p1

    .line 2063
    :cond_1
    const/4 v0, -0x1

    .line 2064
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v2

    goto :goto_0

    :cond_2
    move p1, v0

    .line 2079
    goto :goto_1
.end method

.method private c(Z)Landroid/view/View;
    .locals 7

    .prologue
    .line 1336
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->b()I

    move-result v3

    .line 1337
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()I

    move-result v4

    .line 1338
    const/4 v1, 0x0

    .line 1339
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_0
    if-ltz v2, :cond_2

    .line 1340
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    .line 1341
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v5, v0}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v5

    .line 1342
    iget-object v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v6

    .line 1343
    if-le v6, v3, :cond_3

    if-ge v5, v4, :cond_3

    .line 1346
    if-le v6, v4, :cond_0

    if-nez p1, :cond_1

    .line 1355
    :cond_0
    :goto_1
    return-object v0

    .line 1351
    :cond_1
    if-nez v1, :cond_3

    .line 1339
    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 1355
    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method private d(III)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1480
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    move v2, v0

    .line 1484
    :goto_0
    const/16 v0, 0x8

    if-ne p3, v0, :cond_3

    .line 1485
    if-ge p1, p2, :cond_2

    .line 1486
    add-int/lit8 v0, p2, 0x1

    move v1, v0

    move v0, p1

    .line 1497
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(I)I

    .line 1498
    sparse-switch p3, :sswitch_data_0

    .line 1512
    :goto_2
    if-gt v1, v2, :cond_4

    .line 1520
    :cond_0
    :goto_3
    return-void

    .line 1480
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 1489
    :cond_2
    add-int/lit8 v0, p1, 0x1

    move v1, v0

    move v0, p2

    .line 1490
    goto :goto_1

    .line 1494
    :cond_3
    add-int v0, p1, p2

    move v1, v0

    move v0, p1

    goto :goto_1

    .line 1500
    :sswitch_0
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    goto :goto_2

    .line 1503
    :sswitch_1
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    goto :goto_2

    .line 1507
    :sswitch_2
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p1, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(II)V

    .line 1508
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v3, p2, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b(II)V

    goto :goto_2

    .line 1516
    :cond_4
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v1

    .line 1517
    :goto_4
    if-gt v0, v1, :cond_0

    .line 1518
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()V

    goto :goto_3

    .line 1516
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v1

    goto :goto_4

    .line 1498
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch
.end method

.method private e(I)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 1428
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iput p1, v2, Landroid/support/v7/widget/cs;->e:I

    .line 1429
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-ne p1, v1, :cond_0

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_1

    :goto_1
    iput v0, v3, Landroid/support/v7/widget/cs;->d:I

    .line 1431
    return-void

    .line 1429
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private g()V
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    invoke-static {p0, v0}, Landroid/support/v7/widget/do;->a(Landroid/support/v7/widget/eg;I)Landroid/support/v7/widget/do;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    .line 253
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    rsub-int/lit8 v0, v0, 0x1

    .line 254
    invoke-static {p0, v0}, Landroid/support/v7/widget/do;->a(Landroid/support/v7/widget/eg;I)Landroid/support/v7/widget/do;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/do;

    .line 255
    return-void
.end method

.method private h(Landroid/support/v7/widget/eu;)I
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1055
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 1058
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1059
    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Z

    if-nez v0, :cond_2

    .line 1060
    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Z

    iget-boolean v6, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    move-object v0, p1

    move-object v4, p0

    .line 1058
    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/fc;->a(Landroid/support/v7/widget/eu;Landroid/support/v7/widget/do;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/eg;ZZ)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1059
    goto :goto_2
.end method

.method private h()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 264
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v0, :cond_0

    .line 12645
    iget-boolean v0, p0, Landroid/support/v7/widget/eg;->u:Z

    .line 264
    if-nez v0, :cond_1

    :cond_0
    move v1, v2

    .line 305
    :goto_0
    return v1

    .line 268
    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_2

    .line 269
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v3

    .line 270
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    move v4, v3

    move v3, v0

    .line 275
    :goto_1
    if-nez v4, :cond_3

    .line 276
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r()Landroid/view/View;

    move-result-object v0

    .line 277
    if-eqz v0, :cond_3

    .line 278
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 12835
    iput-boolean v1, p0, Landroid/support/v7/widget/eg;->t:Z

    .line 280
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()V

    goto :goto_0

    .line 272
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v3

    .line 273
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    move v4, v3

    move v3, v0

    goto :goto_1

    .line 284
    :cond_3
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v0, :cond_4

    move v1, v2

    .line 285
    goto :goto_0

    .line 287
    :cond_4
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    .line 288
    :goto_2
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v6, v3, 0x1

    .line 289
    invoke-virtual {v5, v4, v6, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(III)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v5

    .line 290
    if-nez v5, :cond_6

    .line 291
    iput-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    .line 292
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    move v1, v2

    .line 293
    goto :goto_0

    :cond_5
    move v0, v1

    .line 287
    goto :goto_2

    .line 295
    :cond_6
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v3, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    mul-int/lit8 v0, v0, -0x1

    .line 296
    invoke-virtual {v2, v4, v3, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(III)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 298
    if-nez v0, :cond_7

    .line 299
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v2, v5, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    .line 13835
    :goto_3
    iput-boolean v1, p0, Landroid/support/v7/widget/eg;->t:Z

    .line 304
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()V

    goto :goto_0

    .line 301
    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a(I)I

    goto :goto_3
.end method

.method private i(Landroid/support/v7/widget/eu;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1075
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 1078
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1079
    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Z

    if-nez v0, :cond_2

    .line 1080
    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Z

    move-object v0, p1

    move-object v4, p0

    .line 1078
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/fc;->a(Landroid/support/v7/widget/eu;Landroid/support/v7/widget/do;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/eg;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1079
    goto :goto_2
.end method

.method private i(II)V
    .locals 2

    .prologue
    .line 1768
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_1

    .line 1769
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v1, v1, v0

    .line 41356
    iget-object v1, v1, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    .line 1769
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1772
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/ft;II)V

    .line 1768
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1774
    :cond_1
    return-void
.end method

.method private j(I)I
    .locals 3

    .prologue
    .line 1803
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ft;->a(I)I

    move-result v1

    .line 1804
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_1

    .line 1805
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/ft;->a(I)I

    move-result v2

    .line 1806
    if-ge v2, v1, :cond_0

    move v1, v2

    .line 1804
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1810
    :cond_1
    return v1
.end method

.method private j(Landroid/support/v7/widget/eu;)I
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1095
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-nez v0, :cond_0

    .line 1098
    :goto_0
    return v4

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Z

    if-nez v0, :cond_1

    move v0, v3

    .line 1099
    :goto_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Z

    if-nez v0, :cond_2

    .line 1100
    :goto_2
    invoke-direct {p0, v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->G:Z

    move-object v0, p1

    move-object v4, p0

    .line 1098
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/fc;->b(Landroid/support/v7/widget/eu;Landroid/support/v7/widget/do;Landroid/view/View;Landroid/view/View;Landroid/support/v7/widget/eg;Z)I

    move-result v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1

    :cond_2
    move v3, v4

    .line 1099
    goto :goto_2
.end method

.method private k(I)I
    .locals 3

    .prologue
    .line 1834
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ft;->b(I)I

    move-result v1

    .line 1835
    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_1

    .line 1836
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/ft;->b(I)I

    move-result v2

    .line 1837
    if-le v2, v1, :cond_0

    move v1, v2

    .line 1835
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1841
    :cond_1
    return v1
.end method

.method private l(I)Z
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1919
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_3

    .line 1920
    if-ne p1, v3, :cond_1

    move v0, v1

    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eq v0, v3, :cond_2

    .line 1922
    :cond_0
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 1920
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 1922
    :cond_3
    if-ne p1, v3, :cond_4

    move v0, v1

    :goto_2
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-ne v0, v3, :cond_5

    move v0, v1

    :goto_3
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()Z

    move-result v3

    if-eq v0, v3, :cond_0

    move v1, v2

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_3
.end method

.method private r()Landroid/view/View;
    .locals 12

    .prologue
    const/4 v0, -0x1

    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 332
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 333
    new-instance v9, Ljava/util/BitSet;

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    invoke-direct {v9, v2}, Ljava/util/BitSet;-><init>(I)V

    .line 334
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    invoke-virtual {v9, v5, v2, v3}, Ljava/util/BitSet;->set(IIZ)V

    .line 337
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v2, v3, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 339
    :goto_0
    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v4, :cond_1

    move v8, v0

    .line 346
    :goto_1
    if-ge v1, v8, :cond_2

    move v4, v3

    :goto_2
    move v7, v1

    .line 347
    :goto_3
    if-eq v7, v8, :cond_f

    .line 348
    invoke-virtual {p0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v6

    .line 349
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fq;

    .line 350
    iget-object v1, v0, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    iget v1, v1, Landroid/support/v7/widget/ft;->e:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 351
    iget-object v1, v0, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    .line 14395
    iget-boolean v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v10, :cond_4

    .line 14396
    invoke-virtual {v1}, Landroid/support/v7/widget/ft;->b()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v11}, Landroid/support/v7/widget/do;->c()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 15356
    iget-object v10, v1, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    .line 16356
    iget-object v1, v1, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    .line 14398
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 16531
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/fq;

    .line 14400
    iget-boolean v1, v1, Landroid/support/v7/widget/fq;->b:Z

    if-nez v1, :cond_3

    move v1, v3

    .line 351
    :goto_4
    if-eqz v1, :cond_7

    move-object v0, v6

    .line 391
    :goto_5
    return-object v0

    :cond_0
    move v2, v0

    .line 337
    goto :goto_0

    .line 344
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v8, v1

    move v1, v5

    goto :goto_1

    :cond_2
    move v4, v0

    .line 346
    goto :goto_2

    :cond_3
    move v1, v5

    .line 14400
    goto :goto_4

    .line 14402
    :cond_4
    invoke-virtual {v1}, Landroid/support/v7/widget/ft;->a()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v11}, Landroid/support/v7/widget/do;->b()I

    move-result v11

    if-le v10, v11, :cond_6

    .line 17356
    iget-object v1, v1, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    .line 14404
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 17531
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/fq;

    .line 14406
    iget-boolean v1, v1, Landroid/support/v7/widget/fq;->b:Z

    if-nez v1, :cond_5

    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v5

    goto :goto_4

    :cond_6
    move v1, v5

    .line 14408
    goto :goto_4

    .line 354
    :cond_7
    iget-object v1, v0, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    iget v1, v1, Landroid/support/v7/widget/ft;->e:I

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->clear(I)V

    .line 356
    :cond_8
    iget-boolean v1, v0, Landroid/support/v7/widget/fq;->b:Z

    if-nez v1, :cond_e

    .line 360
    add-int v1, v7, v4

    if-eq v1, v8, :cond_e

    .line 361
    add-int v1, v7, v4

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v10

    .line 363
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v1, :cond_a

    .line 365
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v1

    .line 366
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v11

    .line 367
    if-ge v1, v11, :cond_9

    move-object v0, v6

    .line 368
    goto :goto_5

    .line 369
    :cond_9
    if-ne v1, v11, :cond_10

    move v1, v3

    .line 381
    :goto_6
    if-eqz v1, :cond_e

    .line 383
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/fq;

    .line 384
    iget-object v0, v0, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    iget v0, v0, Landroid/support/v7/widget/ft;->e:I

    iget-object v1, v1, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    iget v1, v1, Landroid/support/v7/widget/ft;->e:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_c

    move v1, v3

    :goto_7
    if-gez v2, :cond_d

    move v0, v3

    :goto_8
    if-eq v1, v0, :cond_e

    move-object v0, v6

    .line 385
    goto :goto_5

    .line 373
    :cond_a
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v1

    .line 374
    iget-object v11, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v11, v10}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v11

    .line 375
    if-le v1, v11, :cond_b

    move-object v0, v6

    .line 376
    goto/16 :goto_5

    .line 377
    :cond_b
    if-ne v1, v11, :cond_10

    move v1, v3

    .line 378
    goto :goto_6

    :cond_c
    move v1, v5

    .line 384
    goto :goto_7

    :cond_d
    move v0, v5

    goto :goto_8

    .line 347
    :cond_e
    add-int v0, v7, v4

    move v7, v0

    goto/16 :goto_3

    .line 391
    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_10
    move v1, v5

    goto :goto_6
.end method

.method private s()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 553
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()Z

    move-result v1

    if-nez v1, :cond_2

    .line 554
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    .line 556
    :cond_1
    :goto_0
    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    .line 558
    return-void

    .line 556
    :cond_2
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private t()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 561
    .line 18000
    iget-object v1, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 561
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private u()I
    .locals 1

    .prologue
    .line 2092
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    .line 2093
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method

.method private v()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2097
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v1

    .line 2098
    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 1982
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 1284
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 1285
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 1287
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/eg;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/ei;
    .locals 1

    .prologue
    .line 2148
    new-instance v0, Landroid/support/v7/widget/fq;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/fq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ei;
    .locals 1

    .prologue
    .line 2153
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 2154
    new-instance v0, Landroid/support/v7/widget/fq;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/fq;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 2156
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/fq;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/fq;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public final a(Landroid/view/View;ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/high16 v5, -0x80000000

    const/4 v3, 0x1

    .line 2173
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v2

    .line 2228
    :goto_0
    return-object v0

    .line 2177
    :cond_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 2178
    if-nez v6, :cond_1

    move-object v0, v2

    .line 2179
    goto :goto_0

    .line 2182
    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()V

    .line 46242
    sparse-switch p2, :sswitch_data_0

    move v4, v5

    .line 2184
    :goto_1
    if-ne v4, v5, :cond_a

    move-object v0, v2

    .line 2185
    goto :goto_0

    .line 46244
    :sswitch_0
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v4, v3, :cond_2

    move v4, v0

    .line 46245
    goto :goto_1

    .line 46246
    :cond_2
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v3

    .line 46247
    goto :goto_1

    :cond_3
    move v4, v0

    .line 46249
    goto :goto_1

    .line 46252
    :sswitch_1
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v4, v3, :cond_4

    move v4, v3

    .line 46253
    goto :goto_1

    .line 46254
    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v0

    .line 46255
    goto :goto_1

    :cond_5
    move v4, v3

    .line 46257
    goto :goto_1

    .line 46260
    :sswitch_2
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v4, v3, :cond_6

    move v4, v0

    goto :goto_1

    :cond_6
    move v4, v5

    goto :goto_1

    .line 46263
    :sswitch_3
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v0, v3, :cond_7

    move v4, v3

    goto :goto_1

    :cond_7
    move v4, v5

    goto :goto_1

    .line 46266
    :sswitch_4
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v4, :cond_8

    move v4, v0

    goto :goto_1

    :cond_8
    move v4, v5

    goto :goto_1

    .line 46269
    :sswitch_5
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_9

    move v4, v3

    goto :goto_1

    :cond_9
    move v4, v5

    goto :goto_1

    .line 2187
    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fq;

    .line 2188
    iget-boolean v5, v0, Landroid/support/v7/widget/fq;->b:Z

    .line 2189
    iget-object v7, v0, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    .line 2191
    if-ne v4, v3, :cond_b

    .line 2192
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    .line 2196
    :goto_2
    invoke-direct {p0, v0, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/eu;)V

    .line 2197
    invoke-direct {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)V

    .line 2199
    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget-object v9, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget v9, v9, Landroid/support/v7/widget/cs;->d:I

    add-int/2addr v9, v0

    iput v9, v8, Landroid/support/v7/widget/cs;->c:I

    .line 2200
    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    const v9, 0x3eaaaaab

    iget-object v10, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v10}, Landroid/support/v7/widget/do;->e()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v8, Landroid/support/v7/widget/cs;->b:I

    .line 2201
    iget-object v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iput-boolean v3, v8, Landroid/support/v7/widget/cs;->h:Z

    .line 2202
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iput-boolean v1, v3, Landroid/support/v7/widget/cs;->a:Z

    .line 2203
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    invoke-direct {p0, p3, v3, p4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cs;Landroid/support/v7/widget/eu;)I

    .line 2204
    iget-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iput-boolean v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 2205
    if-nez v5, :cond_c

    .line 2206
    invoke-virtual {v7, v0, v4}, Landroid/support/v7/widget/ft;->a(II)Landroid/view/View;

    move-result-object v3

    .line 2207
    if-eqz v3, :cond_c

    if-eq v3, v6, :cond_c

    move-object v0, v3

    .line 2208
    goto/16 :goto_0

    .line 2194
    :cond_b
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    goto :goto_2

    .line 2213
    :cond_c
    invoke-direct {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2214
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_3
    if-ltz v3, :cond_10

    .line 2215
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v1, v1, v3

    invoke-virtual {v1, v0, v4}, Landroid/support/v7/widget/ft;->a(II)Landroid/view/View;

    move-result-object v1

    .line 2216
    if-eqz v1, :cond_d

    if-eq v1, v6, :cond_d

    move-object v0, v1

    .line 2217
    goto/16 :goto_0

    .line 2214
    :cond_d
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_3

    .line 2221
    :cond_e
    add-int/lit8 v1, v1, 0x1

    :cond_f
    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v1, v3, :cond_10

    .line 2222
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0, v4}, Landroid/support/v7/widget/ft;->a(II)Landroid/view/View;

    move-result-object v3

    .line 2223
    if-eqz v3, :cond_e

    if-eq v3, v6, :cond_e

    move-object v0, v3

    .line 2224
    goto/16 :goto_0

    :cond_10
    move-object v0, v2

    .line 2228
    goto/16 :goto_0

    .line 46242
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x11 -> :sswitch_4
        0x21 -> :sswitch_2
        0x42 -> :sswitch_5
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 1461
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 1462
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()V

    .line 1463
    return-void
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 1456
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(III)V

    .line 1457
    return-void
.end method

.method public final a(Landroid/graphics/Rect;II)V
    .locals 4

    .prologue
    .line 580
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->m()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o()I

    move-result v1

    add-int/2addr v1, v0

    .line 581
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p()I

    move-result v2

    add-int/2addr v0, v2

    .line 582
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 583
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    .line 18644
    iget-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    .line 584
    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v0

    .line 585
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 19637
    iget-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v2

    .line 585
    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v1

    .line 593
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(II)V

    .line 594
    return-void

    .line 588
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    .line 20637
    iget-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v2

    .line 589
    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v1

    .line 590
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 20644
    iget-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    .line 590
    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 1167
    instance-of v0, p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1168
    check-cast p1, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iput-object p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 1169
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()V

    .line 1173
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eo;)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/Runnable;)Z

    .line 318
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_0

    .line 319
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/support/v7/widget/ft;->c()V

    .line 318
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 323
    return-void
.end method

.method public final a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    .line 1228
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1229
    instance-of v2, v0, Landroid/support/v7/widget/fq;

    if-nez v2, :cond_0

    .line 1230
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 1245
    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    .line 1233
    check-cast v4, Landroid/support/v7/widget/fq;

    .line 1234
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_2

    .line 1236
    invoke-virtual {v4}, Landroid/support/v7/widget/fq;->a()I

    move-result v2

    iget-boolean v0, v4, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    :goto_1
    move v1, v0

    move v0, v2

    move v2, v3

    .line 1242
    :goto_2
    iget-boolean v4, v4, Landroid/support/v7/widget/fq;->b:Z

    const/4 v5, 0x0

    .line 1240
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1236
    goto :goto_1

    .line 1242
    :cond_2
    invoke-virtual {v4}, Landroid/support/v7/widget/fq;->a()I

    move-result v2

    iget-boolean v0, v4, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v0, :cond_3

    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    move v0, v3

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_2

    :cond_3
    move v0, v3

    move v6, v3

    move v3, v1

    move v1, v6

    goto :goto_2
.end method

.method public final a(Landroid/support/v7/widget/eu;)V
    .locals 1

    .prologue
    .line 709
    invoke-super {p0, p1}, Landroid/support/v7/widget/eg;->a(Landroid/support/v7/widget/eu;)V

    .line 710
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 711
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    .line 712
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 713
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Landroid/support/v7/widget/fp;

    invoke-virtual {v0}, Landroid/support/v7/widget/fp;->a()V

    .line 714
    return-void
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1249
    invoke-super {p0, p1}, Landroid/support/v7/widget/eg;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1250
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_0

    .line 1252
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v0

    .line 1253
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v1

    .line 1254
    invoke-direct {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v2

    .line 1255
    if-eqz v1, :cond_0

    if-nez v2, :cond_1

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    invoke-static {v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    .line 1259
    invoke-static {v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v2

    .line 1260
    if-ge v1, v2, :cond_2

    .line 1261
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1262
    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    goto :goto_0

    .line 1264
    :cond_2
    invoke-virtual {v0, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setFromIndex(I)V

    .line 1265
    invoke-virtual {v0, v1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setToIndex(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    .line 522
    invoke-super {p0, p1}, Landroid/support/v7/widget/eg;->a(Ljava/lang/String;)V

    .line 524
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ei;)Z
    .locals 1

    .prologue
    .line 2162
    instance-of v0, p1, Landroid/support/v7/widget/fq;

    return v0
.end method

.method public final b(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 1988
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v0

    return v0
.end method

.method public final b(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I
    .locals 2

    .prologue
    .line 1293
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1294
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    .line 1296
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/eg;->b(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v0

    goto :goto_0
.end method

.method public final b(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 1051
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(Landroid/support/v7/widget/eu;)I

    move-result v0

    return v0
.end method

.method public final b()Landroid/support/v7/widget/ei;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 2137
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 2138
    new-instance v0, Landroid/support/v7/widget/fq;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/fq;-><init>(II)V

    .line 2141
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/fq;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/fq;-><init>(II)V

    goto :goto_0
.end method

.method public final b(II)V
    .locals 1

    .prologue
    .line 1451
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(III)V

    .line 1452
    return-void
.end method

.method public final c(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 1066
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h(Landroid/support/v7/widget/eu;)I

    move-result v0

    return v0
.end method

.method public final c(II)V
    .locals 1

    .prologue
    .line 1473
    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(III)V

    .line 1474
    return-void
.end method

.method public final c(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)V
    .locals 10

    .prologue
    .line 598
    const/4 v0, 0x1

    move v1, v0

    .line 21604
    :goto_0
    iget-object v5, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Landroid/support/v7/widget/fp;

    .line 21605
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 21606
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/eu;->a()I

    move-result v0

    if-nez v0, :cond_2

    .line 21607
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Landroid/support/v7/widget/eo;)V

    .line 21608
    invoke-virtual {v5}, Landroid/support/v7/widget/fp;->a()V

    .line 21609
    :cond_1
    return-void

    .line 21613
    :cond_2
    iget-boolean v0, v5, Landroid/support/v7/widget/fp;->e:Z

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_c

    .line 21615
    :cond_3
    invoke-virtual {v5}, Landroid/support/v7/widget/fp;->a()V

    .line 21616
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_12

    .line 21769
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-lez v0, :cond_7

    .line 21770
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ne v0, v2, :cond_6

    .line 21771
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_7

    .line 21772
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ft;->c()V

    .line 21773
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    aget v2, v2, v0

    .line 21774
    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_4

    .line 21775
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    if-eqz v3, :cond_5

    .line 21776
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v3}, Landroid/support/v7/widget/do;->c()I

    move-result v3

    add-int/2addr v2, v3

    .line 21781
    :cond_4
    :goto_2
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ft;->c(I)V

    .line 21771
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 21778
    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v3}, Landroid/support/v7/widget/do;->b()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_2

    .line 21784
    :cond_6
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 21983
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    .line 21984
    const/4 v2, 0x0

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 21985
    const/4 v2, 0x0

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 21986
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    .line 21987
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    .line 21785
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 21788
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Z

    .line 21789
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Z)V

    .line 21790
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()V

    .line 21792
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_11

    .line 21793
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 21794
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-boolean v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    iput-boolean v0, v5, Landroid/support/v7/widget/fp;->c:Z

    .line 21798
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    const/4 v2, 0x1

    if-le v0, v2, :cond_8

    .line 21799
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    .line 21800
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    iput-object v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    .line 23646
    :cond_8
    :goto_4
    iget-boolean v0, p2, Landroid/support/v7/widget/eu;->g:Z

    .line 22832
    if-nez v0, :cond_9

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_13

    .line 22833
    :cond_9
    const/4 v0, 0x0

    .line 22805
    :goto_5
    if-nez v0, :cond_b

    .line 24823
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v0, :cond_29

    .line 24824
    invoke-virtual {p2}, Landroid/support/v7/widget/eu;->a()I

    move-result v3

    .line 25124
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_6
    if-ltz v2, :cond_28

    .line 25125
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    .line 25126
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    .line 25127
    if-ltz v0, :cond_27

    if-ge v0, v3, :cond_27

    .line 24825
    :cond_a
    :goto_7
    iput v0, v5, Landroid/support/v7/widget/fp;->a:I

    .line 24826
    const/high16 v0, -0x80000000

    iput v0, v5, Landroid/support/v7/widget/fp;->b:I

    .line 21624
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, v5, Landroid/support/v7/widget/fp;->e:Z

    .line 21626
    :cond_c
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_e

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    .line 21627
    iget-boolean v0, v5, Landroid/support/v7/widget/fp;->c:Z

    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-ne v0, v2, :cond_d

    .line 21628
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()Z

    move-result v0

    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Z

    if-eq v0, v2, :cond_e

    .line 21629
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a()V

    .line 21630
    const/4 v0, 0x1

    iput-boolean v0, v5, Landroid/support/v7/widget/fp;->d:Z

    .line 21634
    :cond_e
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_32

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_f

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-gtz v0, :cond_32

    .line 21636
    :cond_f
    iget-boolean v0, v5, Landroid/support/v7/widget/fp;->d:Z

    if-eqz v0, :cond_2c

    .line 21637
    const/4 v0, 0x0

    :goto_8
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_32

    .line 21639
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/v7/widget/ft;->c()V

    .line 21640
    iget v2, v5, Landroid/support/v7/widget/fp;->b:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_10

    .line 21641
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v2, v2, v0

    iget v3, v5, Landroid/support/v7/widget/fp;->b:I

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/ft;->c(I)V

    .line 21637
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 21796
    :cond_11
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iput-boolean v0, v5, Landroid/support/v7/widget/fp;->c:Z

    goto/16 :goto_3

    .line 21619
    :cond_12
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->s()V

    .line 21620
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iput-boolean v0, v5, Landroid/support/v7/widget/fp;->c:Z

    goto/16 :goto_4

    .line 22836
    :cond_13
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    if-ltz v0, :cond_14

    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    invoke-virtual {p2}, Landroid/support/v7/widget/eu;->a()I

    move-result v2

    if-lt v0, v2, :cond_15

    .line 22837
    :cond_14
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 22838
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    .line 22839
    const/4 v0, 0x0

    goto/16 :goto_5

    .line 22842
    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    if-gtz v0, :cond_26

    .line 22845
    :cond_16
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(I)Landroid/view/View;

    move-result-object v2

    .line 22846
    if-eqz v2, :cond_1e

    .line 22849
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_17

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    .line 22850
    :goto_9
    iput v0, v5, Landroid/support/v7/widget/fp;->a:I

    .line 22851
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    const/high16 v3, -0x80000000

    if-eq v0, v3, :cond_19

    .line 22852
    iget-boolean v0, v5, Landroid/support/v7/widget/fp;->c:Z

    if-eqz v0, :cond_18

    .line 22853
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    sub-int/2addr v0, v3

    .line 22855
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v5, Landroid/support/v7/widget/fp;->b:I

    .line 22861
    :goto_a
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 22850
    :cond_17
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    goto :goto_9

    .line 22857
    :cond_18
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->b()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    add-int/2addr v0, v3

    .line 22859
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, v5, Landroid/support/v7/widget/fp;->b:I

    goto :goto_a

    .line 22865
    :cond_19
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v0

    .line 22866
    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v3}, Landroid/support/v7/widget/do;->e()I

    move-result v3

    if-le v0, v3, :cond_1b

    .line 22868
    iget-boolean v0, v5, Landroid/support/v7/widget/fp;->c:Z

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    .line 22869
    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()I

    move-result v0

    .line 22870
    :goto_b
    iput v0, v5, Landroid/support/v7/widget/fp;->b:I

    .line 22906
    :goto_c
    const/4 v0, 0x1

    goto/16 :goto_5

    .line 22869
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    .line 22870
    invoke-virtual {v0}, Landroid/support/v7/widget/do;->b()I

    move-result v0

    goto :goto_b

    .line 22874
    :cond_1b
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    .line 22875
    invoke-virtual {v3}, Landroid/support/v7/widget/do;->b()I

    move-result v3

    sub-int/2addr v0, v3

    .line 22876
    if-gez v0, :cond_1c

    .line 22877
    neg-int v0, v0

    iput v0, v5, Landroid/support/v7/widget/fp;->b:I

    goto :goto_c

    .line 22880
    :cond_1c
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()I

    move-result v0

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    .line 22881
    invoke-virtual {v3, v2}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v0, v2

    .line 22882
    if-gez v0, :cond_1d

    .line 22883
    iput v0, v5, Landroid/support/v7/widget/fp;->b:I

    goto :goto_c

    .line 22887
    :cond_1d
    const/high16 v0, -0x80000000

    iput v0, v5, Landroid/support/v7/widget/fp;->b:I

    goto :goto_c

    .line 22891
    :cond_1e
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    iput v0, v5, Landroid/support/v7/widget/fp;->a:I

    .line 22892
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_24

    .line 22893
    iget v0, v5, Landroid/support/v7/widget/fp;->a:I

    .line 23992
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v2

    if-nez v2, :cond_1f

    .line 23993
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-nez v0, :cond_21

    const/4 v0, -0x1

    .line 22895
    :goto_d
    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    const/4 v0, 0x1

    :goto_e
    iput-boolean v0, v5, Landroid/support/v7/widget/fp;->c:Z

    .line 24058
    iget-boolean v0, v5, Landroid/support/v7/widget/fp;->c:Z

    if-eqz v0, :cond_23

    iget-object v0, v5, Landroid/support/v7/widget/fp;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()I

    move-result v0

    .line 24059
    :goto_f
    iput v0, v5, Landroid/support/v7/widget/fp;->b:I

    .line 22900
    :goto_10
    const/4 v0, 0x1

    iput-boolean v0, v5, Landroid/support/v7/widget/fp;->d:Z

    goto :goto_c

    .line 23995
    :cond_1f
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v2

    .line 23996
    if-ge v0, v2, :cond_20

    const/4 v0, 0x1

    :goto_11
    iget-boolean v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eq v0, v2, :cond_21

    const/4 v0, -0x1

    goto :goto_d

    :cond_20
    const/4 v0, 0x0

    goto :goto_11

    :cond_21
    const/4 v0, 0x1

    goto :goto_d

    .line 22895
    :cond_22
    const/4 v0, 0x0

    goto :goto_e

    .line 24058
    :cond_23
    iget-object v0, v5, Landroid/support/v7/widget/fp;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    .line 24059
    invoke-virtual {v0}, Landroid/support/v7/widget/do;->b()I

    move-result v0

    goto :goto_f

    .line 22898
    :cond_24
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    .line 24063
    iget-boolean v2, v5, Landroid/support/v7/widget/fp;->c:Z

    if-eqz v2, :cond_25

    .line 24064
    iget-object v2, v5, Landroid/support/v7/widget/fp;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->c()I

    move-result v2

    sub-int v0, v2, v0

    iput v0, v5, Landroid/support/v7/widget/fp;->b:I

    goto :goto_10

    .line 24066
    :cond_25
    iget-object v2, v5, Landroid/support/v7/widget/fp;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->b()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v5, Landroid/support/v7/widget/fp;->b:I

    goto :goto_10

    .line 22903
    :cond_26
    const/high16 v0, -0x80000000

    iput v0, v5, Landroid/support/v7/widget/fp;->b:I

    .line 22904
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    iput v0, v5, Landroid/support/v7/widget/fp;->a:I

    goto/16 :goto_c

    .line 25124
    :cond_27
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto/16 :goto_6

    .line 25131
    :cond_28
    const/4 v0, 0x0

    .line 24824
    goto/16 :goto_7

    .line 24825
    :cond_29
    invoke-virtual {p2}, Landroid/support/v7/widget/eu;->a()I

    move-result v3

    .line 26107
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v4

    .line 26108
    const/4 v0, 0x0

    move v2, v0

    :goto_12
    if-ge v2, v4, :cond_2b

    .line 26109
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    .line 26110
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    .line 26111
    if-ltz v0, :cond_2a

    if-lt v0, v3, :cond_a

    .line 26108
    :cond_2a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    .line 26115
    :cond_2b
    const/4 v0, 0x0

    goto/16 :goto_7

    .line 21645
    :cond_2c
    const/4 v0, 0x0

    :goto_13
    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v2, :cond_32

    .line 21646
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v3, v2, v0

    iget-boolean v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    iget v6, v5, Landroid/support/v7/widget/fp;->b:I

    .line 26465
    if-eqz v4, :cond_2f

    .line 26466
    const/high16 v2, -0x80000000

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ft;->b(I)I

    move-result v2

    .line 26470
    :goto_14
    invoke-virtual {v3}, Landroid/support/v7/widget/ft;->c()V

    .line 26471
    const/high16 v7, -0x80000000

    if-eq v2, v7, :cond_2e

    .line 26474
    if-eqz v4, :cond_2d

    iget-object v7, v3, Landroid/support/v7/widget/ft;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v7, v7, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v7}, Landroid/support/v7/widget/do;->c()I

    move-result v7

    if-lt v2, v7, :cond_2e

    :cond_2d
    if-nez v4, :cond_30

    iget-object v4, v3, Landroid/support/v7/widget/ft;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v4, v4, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    .line 26475
    invoke-virtual {v4}, Landroid/support/v7/widget/do;->b()I

    move-result v4

    if-le v2, v4, :cond_30

    .line 21645
    :cond_2e
    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 26468
    :cond_2f
    const/high16 v2, -0x80000000

    invoke-virtual {v3, v2}, Landroid/support/v7/widget/ft;->a(I)I

    move-result v2

    goto :goto_14

    .line 26478
    :cond_30
    const/high16 v4, -0x80000000

    if-eq v6, v4, :cond_31

    .line 26479
    add-int/2addr v2, v6

    .line 26481
    :cond_31
    iput v2, v3, Landroid/support/v7/widget/ft;->c:I

    iput v2, v3, Landroid/support/v7/widget/ft;->b:I

    goto :goto_15

    .line 21650
    :cond_32
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/eo;)V

    .line 21651
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v7/widget/cs;->a:Z

    .line 21652
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    .line 21653
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->e()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)V

    .line 21654
    iget v0, v5, Landroid/support/v7/widget/fp;->a:I

    invoke-direct {p0, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(ILandroid/support/v7/widget/eu;)V

    .line 21655
    iget-boolean v0, v5, Landroid/support/v7/widget/fp;->c:Z

    if-eqz v0, :cond_33

    .line 21657
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)V

    .line 21658
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cs;Landroid/support/v7/widget/eu;)I

    .line 21660
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)V

    .line 21661
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget v2, v5, Landroid/support/v7/widget/fp;->a:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget v3, v3, Landroid/support/v7/widget/cs;->d:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/cs;->c:I

    .line 21662
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cs;Landroid/support/v7/widget/eu;)I

    .line 26717
    :goto_16
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->g()I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_39

    .line 26720
    const/4 v3, 0x0

    .line 26721
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v6

    .line 26722
    const/4 v0, 0x0

    move v4, v0

    :goto_17
    if-ge v4, v6, :cond_34

    .line 26723
    invoke-virtual {p0, v4}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    .line 26724
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/do;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v2

    int-to-float v2, v2

    .line 26725
    cmpg-float v7, v2, v3

    if-ltz v7, :cond_41

    .line 26728
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fq;

    .line 27338
    iget-boolean v0, v0, Landroid/support/v7/widget/fq;->b:Z

    .line 26729
    if-eqz v0, :cond_40

    .line 26730
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    iget v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 26732
    :goto_18
    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 26722
    :goto_19
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v3, v0

    goto :goto_17

    .line 21665
    :cond_33
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)V

    .line 21666
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cs;Landroid/support/v7/widget/eu;)I

    .line 21668
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e(I)V

    .line 21669
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget v2, v5, Landroid/support/v7/widget/fp;->a:I

    iget-object v3, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    iget v3, v3, Landroid/support/v7/widget/cs;->d:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/support/v7/widget/cs;->c:I

    .line 21670
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->k:Landroid/support/v7/widget/cs;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/cs;Landroid/support/v7/widget/eu;)I

    goto :goto_16

    .line 26734
    :cond_34
    iget v4, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    .line 26735
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 26736
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->g()I

    move-result v2

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_35

    .line 26737
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->e()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 26739
    :cond_35
    invoke-direct {p0, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(I)V

    .line 26740
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    if-eq v0, v4, :cond_39

    .line 26743
    const/4 v0, 0x0

    move v2, v0

    :goto_1a
    if-ge v2, v6, :cond_39

    .line 26744
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v3

    .line 26745
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fq;

    .line 26746
    iget-boolean v7, v0, Landroid/support/v7/widget/fq;->b:Z

    if-nez v7, :cond_36

    .line 26749
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()Z

    move-result v7

    if-eqz v7, :cond_37

    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_37

    .line 26750
    iget v7, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v7, v7, -0x1

    iget-object v8, v0, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    iget v8, v8, Landroid/support/v7/widget/ft;->e:I

    sub-int/2addr v7, v8

    neg-int v7, v7

    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    mul-int/2addr v7, v8

    .line 26751
    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    add-int/lit8 v8, v8, -0x1

    iget-object v0, v0, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    iget v0, v0, Landroid/support/v7/widget/ft;->e:I

    sub-int v0, v8, v0

    neg-int v0, v0

    mul-int/2addr v0, v4

    .line 26752
    sub-int v0, v7, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 26743
    :cond_36
    :goto_1b
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1a

    .line 26754
    :cond_37
    iget-object v7, v0, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    iget v7, v7, Landroid/support/v7/widget/ft;->e:I

    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j:I

    mul-int/2addr v7, v8

    .line 26755
    iget-object v0, v0, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    iget v0, v0, Landroid/support/v7/widget/ft;->e:I

    mul-int/2addr v0, v4

    .line 26756
    iget v8, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_38

    .line 26757
    sub-int v0, v7, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_1b

    .line 26759
    :cond_38
    sub-int v0, v7, v0

    invoke-virtual {v3, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1b

    .line 21675
    :cond_39
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_3a

    .line 21676
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_3e

    .line 21677
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Z)V

    .line 21678
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Z)V

    .line 21684
    :cond_3a
    :goto_1c
    const/4 v0, 0x0

    .line 21685
    if-eqz v1, :cond_3c

    .line 27646
    iget-boolean v1, p2, Landroid/support/v7/widget/eu;->g:Z

    .line 21685
    if-nez v1, :cond_3c

    .line 21686
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->n:I

    if-eqz v1, :cond_3f

    .line 21687
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v1

    if-lez v1, :cond_3f

    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->F:Z

    if-nez v1, :cond_3b

    .line 21688
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->r()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3f

    :cond_3b
    const/4 v1, 0x1

    .line 21689
    :goto_1d
    if-eqz v1, :cond_3c

    .line 21690
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->H:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Ljava/lang/Runnable;)Z

    .line 21691
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 21692
    const/4 v0, 0x1

    .line 28646
    :cond_3c
    iget-boolean v1, p2, Landroid/support/v7/widget/eu;->g:Z

    .line 21696
    if-eqz v1, :cond_3d

    .line 21697
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Landroid/support/v7/widget/fp;

    invoke-virtual {v1}, Landroid/support/v7/widget/fp;->a()V

    .line 21699
    :cond_3d
    iget-boolean v1, v5, Landroid/support/v7/widget/fp;->c:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    .line 21700
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->t()Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Z

    .line 21701
    if-eqz v0, :cond_1

    .line 21702
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->E:Landroid/support/v7/widget/fp;

    invoke-virtual {v0}, Landroid/support/v7/widget/fp;->a()V

    .line 21703
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_0

    .line 21680
    :cond_3e
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Z)V

    .line 21681
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Z)V

    goto :goto_1c

    .line 21688
    :cond_3f
    const/4 v1, 0x0

    goto :goto_1d

    :cond_40
    move v0, v2

    goto/16 :goto_18

    :cond_41
    move v0, v3

    goto/16 :goto_19
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 918
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 1071
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/eu;)I

    move-result v0

    return v0
.end method

.method public final d()Landroid/os/Parcelable;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/high16 v4, -0x80000000

    .line 1177
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    .line 1178
    new-instance v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;)V

    .line 1222
    :goto_0
    return-object v0

    .line 1180
    :cond_0
    new-instance v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    invoke-direct {v3}, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;-><init>()V

    .line 1181
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l:Z

    iput-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->h:Z

    .line 1182
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    iput-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->i:Z

    .line 1183
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->p:Z

    iput-boolean v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->j:Z

    .line 1185
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    if-eqz v0, :cond_2

    .line 1186
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->a:[I

    iput-object v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    .line 1187
    iget-object v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->f:[I

    array-length v0, v0

    iput v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    .line 1188
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->b:Ljava/util/List;

    iput-object v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->g:Ljava/util/List;

    .line 1193
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->l()I

    move-result v0

    if-lez v0, :cond_7

    .line 1194
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->u()I

    move-result v0

    .line 1195
    :goto_2
    iput v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 29276
    iget-boolean v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->c(Z)Landroid/view/View;

    move-result-object v0

    .line 29278
    :goto_3
    if-nez v0, :cond_5

    move v0, v1

    .line 1196
    :goto_4
    iput v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1197
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    iput v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 1198
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    new-array v0, v0, [I

    iput-object v0, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    move v0, v2

    .line 1199
    :goto_5
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_8

    .line 1201
    iget-boolean v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->o:Z

    if-eqz v1, :cond_6

    .line 1202
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ft;->b(I)I

    move-result v1

    .line 1203
    if-eq v1, v4, :cond_1

    .line 1204
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->c()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1212
    :cond_1
    :goto_6
    iget-object v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    aput v1, v2, v0

    .line 1199
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1190
    :cond_2
    iput v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->e:I

    goto :goto_1

    .line 1195
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->v()I

    move-result v0

    goto :goto_2

    .line 29277
    :cond_4
    invoke-direct {p0, v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Z)Landroid/view/View;

    move-result-object v0

    goto :goto_3

    .line 29278
    :cond_5
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    goto :goto_4

    .line 1207
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v1, v1, v0

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/ft;->a(I)I

    move-result v1

    .line 1208
    if-eq v1, v4, :cond_1

    .line 1209
    iget-object v2, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->b()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_6

    .line 1215
    :cond_7
    iput v1, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 1216
    iput v1, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 1217
    iput v2, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    :cond_8
    move-object v0, v3

    .line 1222
    goto/16 :goto_0
.end method

.method public final d(I)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 2026
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    iget v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    if-eq v0, p1, :cond_0

    .line 2027
    iget-object v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->B:Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;

    .line 45991
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->d:[I

    .line 45992
    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->c:I

    .line 45993
    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->a:I

    .line 45994
    iput v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$SavedState;->b:I

    .line 2029
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d:I

    .line 2030
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->e:I

    .line 2031
    invoke-virtual {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j()V

    .line 2032
    return-void
.end method

.method public final d(II)V
    .locals 1

    .prologue
    .line 1467
    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->d(III)V

    .line 1468
    return-void
.end method

.method public final e(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 1086
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i(Landroid/support/v7/widget/eu;)I

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 1976
    iget v0, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 1091
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j(Landroid/support/v7/widget/eu;)I

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1971
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->i:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g(Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 1106
    invoke-direct {p0, p1}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->j(Landroid/support/v7/widget/eu;)I

    move-result v0

    return v0
.end method

.method public final g(I)V
    .locals 2

    .prologue
    .line 1435
    invoke-super {p0, p1}, Landroid/support/v7/widget/eg;->g(I)V

    .line 1436
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_0

    .line 1437
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ft;->d(I)V

    .line 1436
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1439
    :cond_0
    return-void
.end method

.method public final h(I)V
    .locals 2

    .prologue
    .line 1443
    invoke-super {p0, p1}, Landroid/support/v7/widget/eg;->h(I)V

    .line 1444
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->g:I

    if-ge v0, v1, :cond_0

    .line 1445
    iget-object v1, p0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h:[Landroid/support/v7/widget/ft;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/ft;->d(I)V

    .line 1444
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1447
    :cond_0
    return-void
.end method

.method public final i(I)V
    .locals 0

    .prologue
    .line 310
    if-nez p1, :cond_0

    .line 311
    invoke-direct {p0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->h()Z

    .line 313
    :cond_0
    return-void
.end method
