.class public Landroid/support/v7/widget/GridLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "GridLayoutManager.java"


# instance fields
.field a:Z

.field public b:I

.field c:[I

.field d:[Landroid/view/View;

.field final e:Landroid/util/SparseIntArray;

.field final f:Landroid/util/SparseIntArray;

.field public g:Landroid/support/v7/widget/cr;

.field final h:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/cp;

    invoke-direct {v0}, Landroid/support/v7/widget/cp;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/cr;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 84
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->a(I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/cp;

    invoke-direct {v0}, Landroid/support/v7/widget/cp;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/cr;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 97
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/GridLayoutManager;->a(I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 55
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 56
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Landroid/support/v7/widget/cp;

    invoke-direct {v0}, Landroid/support/v7/widget/cp;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/cr;

    .line 59
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    .line 72
    invoke-static {p1, p2, p3, p4}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/support/v7/widget/eh;

    move-result-object v0

    .line 73
    iget v0, v0, Landroid/support/v7/widget/eh;->b:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(I)V

    .line 74
    return-void
.end method

.method private a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;I)I
    .locals 3

    .prologue
    .line 450
    .line 27646
    iget-boolean v0, p2, Landroid/support/v7/widget/eu;->g:Z

    .line 450
    if-nez v0, :cond_0

    .line 451
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/cr;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/cr;->c(II)I

    move-result v0

    .line 462
    :goto_0
    return v0

    .line 453
    :cond_0
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/eo;->a(I)I

    move-result v0

    .line 454
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 459
    const-string v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find span size for pre layout position. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    const/4 v0, 0x0

    goto :goto_0

    .line 462
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/cr;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/cr;->c(II)I

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;IZ)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 755
    if-eqz p4, :cond_0

    .line 758
    const/4 v0, 0x1

    move v1, v0

    move v0, v2

    :goto_0
    move v3, v2

    move v2, v0

    .line 765
    :goto_1
    if-eq v2, p3, :cond_1

    .line 766
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v4, v0, v2

    .line 767
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cq;

    .line 768
    invoke-static {v4}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;)I

    move-result v4

    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;I)I

    move-result v4

    invoke-static {v0, v4}, Landroid/support/v7/widget/cq;->a(Landroid/support/v7/widget/cq;I)I

    .line 769
    invoke-static {v0, v3}, Landroid/support/v7/widget/cq;->b(Landroid/support/v7/widget/cq;I)I

    .line 770
    invoke-static {v0}, Landroid/support/v7/widget/cq;->a(Landroid/support/v7/widget/cq;)I

    move-result v0

    add-int/2addr v3, v0

    .line 765
    add-int v0, v2, v1

    move v2, v0

    goto :goto_1

    .line 760
    :cond_0
    add-int/lit8 v1, p3, -0x1

    move p3, v0

    move v5, v0

    move v0, v1

    move v1, v5

    .line 762
    goto :goto_0

    .line 772
    :cond_1
    return-void
.end method

.method private a(Landroid/view/View;IIZ)V
    .locals 3

    .prologue
    .line 737
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 739
    if-eqz p4, :cond_3

    .line 35780
    iget-boolean v1, p0, Landroid/support/v7/widget/eg;->w:Z

    if-eqz v1, :cond_0

    .line 35781
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/ei;->width:I

    invoke-static {v1, p2, v2}, Landroid/support/v7/widget/eg;->b(III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 35782
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/ei;->height:I

    invoke-static {v1, p3, v0}, Landroid/support/v7/widget/eg;->b(III)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 744
    :goto_0
    if-eqz v0, :cond_1

    .line 745
    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    .line 747
    :cond_1
    return-void

    .line 35782
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 742
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IILandroid/support/v7/widget/ei;)Z

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 466
    .line 28646
    iget-boolean v0, p2, Landroid/support/v7/widget/eu;->g:Z

    .line 466
    if-nez v0, :cond_1

    .line 467
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/cr;

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v0, p3, v1}, Landroid/support/v7/widget/cr;->b(II)I

    move-result v0

    .line 483
    :cond_0
    :goto_0
    return v0

    .line 469
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 470
    if-ne v0, v1, :cond_0

    .line 473
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/eo;->a(I)I

    move-result v0

    .line 474
    if-ne v0, v1, :cond_2

    .line 479
    const-string v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v0, 0x0

    goto :goto_0

    .line 483
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/cr;

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/widget/cr;->b(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(Landroid/view/View;IZ)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 696
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cq;

    .line 697
    iget-object v1, v0, Landroid/support/v7/widget/cq;->d:Landroid/graphics/Rect;

    .line 698
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/cq;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/support/v7/widget/cq;->bottomMargin:I

    add-int/2addr v2, v3

    .line 700
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/support/v7/widget/cq;->leftMargin:I

    add-int/2addr v1, v3

    iget v3, v0, Landroid/support/v7/widget/cq;->rightMargin:I

    add-int/2addr v3, v1

    .line 702
    invoke-static {v0}, Landroid/support/v7/widget/cq;->b(Landroid/support/v7/widget/cq;)I

    move-result v1

    invoke-static {v0}, Landroid/support/v7/widget/cq;->a(Landroid/support/v7/widget/cq;)I

    move-result v4

    invoke-direct {p0, v1, v4}, Landroid/support/v7/widget/GridLayoutManager;->i(II)I

    move-result v1

    .line 705
    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-ne v4, v5, :cond_0

    .line 706
    iget v4, v0, Landroid/support/v7/widget/cq;->width:I

    invoke-static {v1, p2, v3, v4, v6}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v1

    .line 708
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v3}, Landroid/support/v7/widget/do;->e()I

    move-result v3

    .line 34478
    iget v4, p0, Landroid/support/v7/widget/eg;->y:I

    .line 708
    iget v0, v0, Landroid/support/v7/widget/cq;->height:I

    invoke-static {v3, v4, v2, v0, v5}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v0

    .line 716
    :goto_0
    invoke-direct {p0, p1, v1, v0, p3}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    .line 717
    return-void

    .line 711
    :cond_0
    iget v4, v0, Landroid/support/v7/widget/cq;->height:I

    invoke-static {v1, p2, v2, v4, v6}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v1

    .line 713
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->e()I

    move-result v2

    .line 35460
    iget v4, p0, Landroid/support/v7/widget/eg;->x:I

    .line 713
    iget v0, v0, Landroid/support/v7/widget/cq;->width:I

    invoke-static {v2, v4, v3, v0, v5}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v0

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_0
.end method

.method private c(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;I)I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 487
    .line 29646
    iget-boolean v0, p2, Landroid/support/v7/widget/eu;->g:Z

    .line 487
    if-nez v0, :cond_1

    .line 488
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/cr;

    invoke-virtual {v0, p3}, Landroid/support/v7/widget/cr;->a(I)I

    move-result v0

    .line 504
    :cond_0
    :goto_0
    return v0

    .line 490
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p3, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 491
    if-ne v0, v1, :cond_0

    .line 494
    invoke-virtual {p1, p3}, Landroid/support/v7/widget/eo;->a(I)I

    move-result v0

    .line 495
    if-ne v0, v1, :cond_2

    .line 500
    const-string v0, "GridLayoutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find span size for pre layout position. It is not cached, not in the adapter. Pos:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, 0x1

    goto :goto_0

    .line 504
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/cr;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/cr;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method private i(II)I
    .locals 3

    .prologue
    .line 343
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    sub-int/2addr v1, p1

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    sub-int/2addr v2, p1

    sub-int/2addr v2, p2

    aget v1, v1, v2

    sub-int/2addr v0, v1

    .line 347
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    add-int v1, p1, p2

    aget v0, v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    aget v1, v1, p1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private j(I)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 309
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v6, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 25320
    if-eqz v0, :cond_0

    array-length v1, v0

    add-int/lit8 v2, v6, 0x1

    if-ne v1, v2, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v1, v0, v1

    if-eq v1, p1, :cond_1

    .line 25322
    :cond_0
    add-int/lit8 v0, v6, 0x1

    new-array v0, v0, [I

    .line 25324
    :cond_1
    aput v3, v0, v3

    .line 25325
    div-int v2, p1, v6

    .line 25326
    rem-int v7, p1, v6

    .line 25329
    const/4 v1, 0x1

    move v4, v1

    move v5, v3

    :goto_0
    if-gt v4, v6, :cond_2

    .line 25331
    add-int/2addr v3, v7

    .line 25332
    if-lez v3, :cond_3

    sub-int v1, v6, v3

    if-ge v1, v7, :cond_3

    .line 25333
    add-int/lit8 v1, v2, 0x1

    .line 25334
    sub-int/2addr v3, v6

    .line 25336
    :goto_1
    add-int/2addr v5, v1

    .line 25337
    aput v5, v0, v4

    .line 25329
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 309
    :cond_2
    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    .line 310
    return-void

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private r()V
    .locals 2

    .prologue
    .line 275
    .line 22318
    iget v0, p0, Landroid/support/v7/widget/LinearLayoutManager;->i:I

    .line 275
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 22487
    iget v0, p0, Landroid/support/v7/widget/eg;->z:I

    .line 276
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->o()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->m()I

    move-result v1

    sub-int/2addr v0, v1

    .line 280
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/GridLayoutManager;->j(I)V

    .line 281
    return-void

    .line 22496
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/eg;->A:I

    .line 278
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->p()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->n()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private s()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-eq v0, v1, :cond_1

    .line 364
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    .line 366
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->r()V

    .line 372
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->s()V

    .line 373
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 118
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 125
    :goto_0
    return v0

    .line 120
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/eu;->a()I

    move-result v0

    if-gtz v0, :cond_1

    .line 121
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/eu;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/v7/widget/ei;
    .locals 1

    .prologue
    .line 237
    new-instance v0, Landroid/support/v7/widget/cq;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/widget/cq;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final a(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ei;
    .locals 1

    .prologue
    .line 242
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_0

    .line 243
    new-instance v0, Landroid/support/v7/widget/cq;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/cq;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 245
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/cq;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/cq;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method final a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;III)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 416
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->h()V

    .line 419
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->b()I

    move-result v5

    .line 420
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0}, Landroid/support/v7/widget/do;->c()I

    move-result v6

    .line 421
    if-le p4, p3, :cond_0

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    move-object v4, v2

    .line 423
    :goto_1
    if-eq p3, p4, :cond_3

    .line 424
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/GridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v3

    .line 425
    invoke-static {v3}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;)I

    move-result v0

    .line 426
    if-ltz v0, :cond_6

    if-ge v0, p5, :cond_6

    .line 427
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;I)I

    move-result v0

    .line 428
    if-nez v0, :cond_6

    .line 431
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 26919
    iget-object v0, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->m()Z

    move-result v0

    .line 431
    if-eqz v0, :cond_1

    .line 432
    if-nez v4, :cond_6

    move-object v0, v2

    .line 423
    :goto_2
    add-int/2addr p3, v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_1

    .line 421
    :cond_0
    const/4 v0, -0x1

    move v1, v0

    goto :goto_0

    .line 435
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v0

    if-ge v0, v6, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/do;

    .line 436
    invoke-virtual {v0, v3}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v0

    if-ge v0, v5, :cond_4

    .line 437
    :cond_2
    if-nez v2, :cond_6

    move-object v0, v3

    move-object v3, v4

    .line 438
    goto :goto_2

    .line 445
    :cond_3
    if-eqz v2, :cond_5

    move-object v3, v2

    :cond_4
    :goto_3
    return-object v3

    :cond_5
    move-object v3, v4

    goto :goto_3

    :cond_6
    move-object v0, v2

    move-object v3, v4

    goto :goto_2
.end method

.method public final a(Landroid/view/View;ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;
    .locals 20

    .prologue
    .line 979
    invoke-virtual/range {p0 .. p1}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;)Landroid/view/View;

    move-result-object v13

    .line 980
    if-nez v13, :cond_1

    .line 981
    const/4 v8, 0x0

    .line 1045
    :cond_0
    :goto_0
    return-object v8

    .line 983
    :cond_1
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/cq;

    .line 984
    invoke-static {v2}, Landroid/support/v7/widget/cq;->b(Landroid/support/v7/widget/cq;)I

    move-result v14

    .line 985
    invoke-static {v2}, Landroid/support/v7/widget/cq;->b(Landroid/support/v7/widget/cq;)I

    move-result v3

    invoke-static {v2}, Landroid/support/v7/widget/cq;->a(Landroid/support/v7/widget/cq;)I

    move-result v2

    add-int v15, v3, v2

    .line 986
    invoke-super/range {p0 .. p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)Landroid/view/View;

    move-result-object v2

    .line 987
    if-nez v2, :cond_2

    .line 988
    const/4 v8, 0x0

    goto :goto_0

    .line 992
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->e(I)I

    move-result v2

    .line 993
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/support/v7/widget/GridLayoutManager;->l:Z

    if-eq v2, v3, :cond_6

    const/4 v2, 0x1

    .line 995
    :goto_2
    if-eqz v2, :cond_7

    .line 996
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->l()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    .line 997
    const/4 v3, -0x1

    .line 998
    const/4 v2, -0x1

    move/from16 v19, v2

    move v2, v4

    move v4, v3

    move/from16 v3, v19

    .line 1004
    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->g()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    .line 1005
    :goto_4
    const/4 v9, 0x0

    .line 1006
    const/4 v7, -0x1

    .line 1007
    const/4 v6, 0x0

    move v12, v2

    .line 1009
    :goto_5
    if-eq v12, v3, :cond_c

    .line 1010
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/GridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v8

    .line 1011
    if-eq v8, v13, :cond_c

    .line 1014
    invoke-virtual {v8}, Landroid/view/View;->isFocusable()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1017
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/cq;

    .line 1018
    invoke-static {v2}, Landroid/support/v7/widget/cq;->b(Landroid/support/v7/widget/cq;)I

    move-result v16

    .line 1019
    invoke-static {v2}, Landroid/support/v7/widget/cq;->b(Landroid/support/v7/widget/cq;)I

    move-result v10

    invoke-static {v2}, Landroid/support/v7/widget/cq;->a(Landroid/support/v7/widget/cq;)I

    move-result v11

    add-int v17, v10, v11

    .line 1020
    move/from16 v0, v16

    if-ne v0, v14, :cond_3

    move/from16 v0, v17

    if-eq v0, v15, :cond_0

    .line 1023
    :cond_3
    const/4 v10, 0x0

    .line 1024
    if-nez v9, :cond_9

    .line 1025
    const/4 v10, 0x1

    .line 1038
    :cond_4
    :goto_6
    if-eqz v10, :cond_d

    .line 1040
    invoke-static {v2}, Landroid/support/v7/widget/cq;->b(Landroid/support/v7/widget/cq;)I

    move-result v6

    .line 1041
    move/from16 v0, v17

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1042
    move/from16 v0, v16

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v2, v7

    move-object v7, v8

    .line 1009
    :goto_7
    add-int v8, v12, v4

    move-object v9, v7

    move v12, v8

    move v7, v6

    move v6, v2

    goto :goto_5

    .line 993
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 1000
    :cond_7
    const/4 v4, 0x0

    .line 1001
    const/4 v3, 0x1

    .line 1002
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/GridLayoutManager;->l()I

    move-result v2

    move/from16 v19, v2

    move v2, v4

    move v4, v3

    move/from16 v3, v19

    goto :goto_3

    .line 1004
    :cond_8
    const/4 v5, 0x0

    goto :goto_4

    .line 1027
    :cond_9
    move/from16 v0, v16

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1028
    move/from16 v0, v17

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v18

    .line 1029
    sub-int v11, v18, v11

    .line 1030
    if-le v11, v6, :cond_a

    .line 1031
    const/4 v10, 0x1

    goto :goto_6

    .line 1032
    :cond_a
    if-ne v11, v6, :cond_4

    move/from16 v0, v16

    if-le v0, v7, :cond_b

    const/4 v11, 0x1

    :goto_8
    if-ne v5, v11, :cond_4

    .line 1034
    const/4 v10, 0x1

    goto :goto_6

    .line 1032
    :cond_b
    const/4 v11, 0x0

    goto :goto_8

    :cond_c
    move-object v8, v9

    .line 1045
    goto/16 :goto_0

    :cond_d
    move v2, v6

    move v6, v7

    move-object v7, v9

    goto :goto_7
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/cr;

    .line 18844
    iget-object v0, v0, Landroid/support/v7/widget/cr;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 206
    return-void
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 794
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ne p1, v0, :cond_0

    .line 805
    :goto_0
    return-void

    .line 797
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    .line 798
    if-gtz p1, :cond_1

    .line 799
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Span count should be at least 1. Provided "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 802
    :cond_1
    iput p1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 803
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/cr;

    .line 35844
    iget-object v0, v0, Landroid/support/v7/widget/cr;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 804
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->j()V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/cr;

    .line 17844
    iget-object v0, v0, Landroid/support/v7/widget/cr;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 201
    return-void
.end method

.method public final a(Landroid/graphics/Rect;II)V
    .locals 4

    .prologue
    .line 285
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    if-nez v0, :cond_0

    .line 286
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/graphics/Rect;II)V

    .line 289
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->m()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->o()I

    move-result v1

    add-int/2addr v1, v0

    .line 290
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->n()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->p()I

    move-result v2

    add-int/2addr v0, v2

    .line 291
    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 292
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v0, v2

    .line 22644
    iget-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    .line 293
    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v0

    .line 294
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    .line 23637
    iget-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v2

    .line 294
    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v1

    .line 302
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/support/v7/widget/GridLayoutManager;->h(II)V

    .line 303
    return-void

    .line 297
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/2addr v1, v2

    .line 24637
    iget-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v2

    .line 298
    invoke-static {p2, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v1

    .line 299
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    add-int/2addr v0, v2

    .line 24644
    iget-object v2, p0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    .line 299
    invoke-static {p3, v0, v2}, Landroid/support/v7/widget/GridLayoutManager;->a(III)I

    move-result v0

    goto :goto_0
.end method

.method final a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Landroid/support/v7/widget/cv;I)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 354
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Landroid/support/v7/widget/cv;I)V

    .line 355
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->r()V

    .line 356
    invoke-virtual {p2}, Landroid/support/v7/widget/eu;->a()I

    move-result v1

    if-lez v1, :cond_3

    .line 25646
    iget-boolean v1, p2, Landroid/support/v7/widget/eu;->g:Z

    .line 356
    if-nez v1, :cond_3

    .line 26386
    if-ne p4, v0, :cond_0

    .line 26388
    :goto_0
    iget v1, p3, Landroid/support/v7/widget/cv;->a:I

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;I)I

    move-result v1

    .line 26389
    if-eqz v0, :cond_1

    .line 26391
    :goto_1
    if-lez v1, :cond_3

    iget v0, p3, Landroid/support/v7/widget/cv;->a:I

    if-lez v0, :cond_3

    .line 26392
    iget v0, p3, Landroid/support/v7/widget/cv;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Landroid/support/v7/widget/cv;->a:I

    .line 26393
    iget v0, p3, Landroid/support/v7/widget/cv;->a:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;I)I

    move-result v1

    goto :goto_1

    .line 26386
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 26397
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/eu;->a()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 26398
    iget v0, p3, Landroid/support/v7/widget/cv;->a:I

    .line 26400
    :goto_2
    if-ge v0, v3, :cond_2

    .line 26401
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, p1, p2, v2}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;I)I

    move-result v2

    .line 26402
    if-le v2, v1, :cond_2

    .line 26403
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .line 26408
    goto :goto_2

    .line 26409
    :cond_2
    iput v0, p3, Landroid/support/v7/widget/cv;->a:I

    .line 359
    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->s()V

    .line 360
    return-void
.end method

.method final a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Landroid/support/v7/widget/cx;Landroid/support/v7/widget/cw;)V
    .locals 15

    .prologue
    .line 510
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v2}, Landroid/support/v7/widget/do;->h()I

    move-result v10

    .line 511
    const/high16 v2, 0x40000000    # 2.0f

    if-eq v10, v2, :cond_2

    const/4 v2, 0x1

    move v3, v2

    .line 512
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->l()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    aget v2, v2, v4

    move v9, v2

    .line 516
    :goto_1
    if-eqz v3, :cond_0

    .line 517
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->r()V

    .line 519
    :cond_0
    move-object/from16 v0, p3

    iget v2, v0, Landroid/support/v7/widget/cx;->e:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    move v4, v2

    .line 521
    :goto_2
    const/4 v5, 0x0

    .line 523
    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 524
    if-nez v4, :cond_1

    .line 525
    move-object/from16 v0, p3

    iget v2, v0, Landroid/support/v7/widget/cx;->d:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;I)I

    move-result v2

    .line 526
    move-object/from16 v0, p3

    iget v6, v0, Landroid/support/v7/widget/cx;->d:I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v6}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;I)I

    move-result v6

    .line 527
    add-int/2addr v2, v6

    .line 529
    :cond_1
    :goto_3
    iget v6, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ge v5, v6, :cond_6

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/cx;->a(Landroid/support/v7/widget/eu;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-lez v2, :cond_6

    .line 530
    move-object/from16 v0, p3

    iget v6, v0, Landroid/support/v7/widget/cx;->d:I

    .line 531
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v6}, Landroid/support/v7/widget/GridLayoutManager;->c(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;I)I

    move-result v7

    .line 532
    iget v8, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-le v7, v8, :cond_5

    .line 533
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Item at position "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spans but GridLayoutManager has only "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spans."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 511
    :cond_2
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_0

    .line 512
    :cond_3
    const/4 v2, 0x0

    move v9, v2

    goto/16 :goto_1

    .line 519
    :cond_4
    const/4 v2, 0x0

    move v4, v2

    goto :goto_2

    .line 537
    :cond_5
    sub-int/2addr v2, v7

    .line 538
    if-ltz v2, :cond_6

    .line 541
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/cx;->a(Landroid/support/v7/widget/eo;)Landroid/view/View;

    move-result-object v6

    .line 542
    if-eqz v6, :cond_6

    .line 546
    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aput-object v6, v7, v5

    .line 547
    add-int/lit8 v5, v5, 0x1

    .line 548
    goto :goto_3

    .line 550
    :cond_6
    if-nez v5, :cond_7

    .line 551
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Landroid/support/v7/widget/cw;->b:Z

    .line 684
    :goto_4
    return-void

    .line 555
    :cond_7
    const/4 v7, 0x0

    .line 556
    const/4 v6, 0x0

    .line 559
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {p0, v0, v1, v5, v4}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;IZ)V

    .line 560
    const/4 v2, 0x0

    move v8, v2

    :goto_5
    if-ge v8, v5, :cond_c

    .line 561
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v11, v2, v8

    .line 562
    move-object/from16 v0, p3

    iget-object v2, v0, Landroid/support/v7/widget/cx;->k:Ljava/util/List;

    if-nez v2, :cond_a

    .line 563
    if-eqz v4, :cond_9

    .line 30070
    const/4 v2, -0x1

    const/4 v12, 0x0

    invoke-super {p0, v11, v2, v12}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;IZ)V

    .line 575
    :goto_6
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->h:Landroid/graphics/Rect;

    invoke-virtual {p0, v11, v2}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 577
    const/4 v2, 0x0

    invoke-direct {p0, v11, v10, v2}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;IZ)V

    .line 578
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v2, v11}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v2

    .line 579
    if-le v2, v7, :cond_8

    move v7, v2

    .line 582
    :cond_8
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/cq;

    .line 583
    const/high16 v12, 0x3f800000    # 1.0f

    iget-object v13, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v13, v11}, Landroid/support/v7/widget/do;->f(Landroid/view/View;)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v12

    .line 584
    invoke-static {v2}, Landroid/support/v7/widget/cq;->a(Landroid/support/v7/widget/cq;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v11, v2

    .line 585
    cmpl-float v11, v2, v6

    if-lez v11, :cond_1b

    .line 560
    :goto_7
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    move v6, v2

    goto :goto_5

    .line 31070
    :cond_9
    const/4 v2, 0x0

    const/4 v12, 0x0

    invoke-super {p0, v11, v2, v12}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;IZ)V

    goto :goto_6

    .line 569
    :cond_a
    if-eqz v4, :cond_b

    .line 32047
    const/4 v2, -0x1

    const/4 v12, 0x1

    invoke-super {p0, v11, v2, v12}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;IZ)V

    goto :goto_6

    .line 33047
    :cond_b
    const/4 v2, 0x0

    const/4 v12, 0x1

    invoke-super {p0, v11, v2, v12}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;IZ)V

    goto :goto_6

    .line 589
    :cond_c
    if-eqz v3, :cond_d

    .line 33730
    iget v2, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 33732
    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v7/widget/GridLayoutManager;->j(I)V

    .line 593
    const/4 v3, 0x0

    .line 594
    const/4 v2, 0x0

    move v4, v2

    :goto_8
    if-ge v4, v5, :cond_e

    .line 595
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v2, v2, v4

    .line 596
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v7, 0x1

    invoke-direct {p0, v2, v6, v7}, Landroid/support/v7/widget/GridLayoutManager;->b(Landroid/view/View;IZ)V

    .line 597
    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v6, v2}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v2

    .line 598
    if-le v2, v3, :cond_1a

    .line 594
    :goto_9
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v2

    goto :goto_8

    :cond_d
    move v3, v7

    .line 606
    :cond_e
    const/4 v2, 0x0

    move v6, v2

    :goto_a
    if-ge v6, v5, :cond_11

    .line 607
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v7, v2, v6

    .line 608
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v2

    if-eq v2, v3, :cond_f

    .line 609
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/cq;

    .line 610
    iget-object v4, v2, Landroid/support/v7/widget/cq;->d:Landroid/graphics/Rect;

    .line 611
    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/support/v7/widget/cq;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v2, Landroid/support/v7/widget/cq;->bottomMargin:I

    add-int/2addr v8, v9

    .line 613
    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v9

    iget v9, v2, Landroid/support/v7/widget/cq;->leftMargin:I

    add-int/2addr v4, v9

    iget v9, v2, Landroid/support/v7/widget/cq;->rightMargin:I

    add-int/2addr v4, v9

    .line 615
    invoke-static {v2}, Landroid/support/v7/widget/cq;->b(Landroid/support/v7/widget/cq;)I

    move-result v9

    invoke-static {v2}, Landroid/support/v7/widget/cq;->a(Landroid/support/v7/widget/cq;)I

    move-result v10

    invoke-direct {p0, v9, v10}, Landroid/support/v7/widget/GridLayoutManager;->i(II)I

    move-result v9

    .line 618
    iget v10, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    .line 619
    const/high16 v10, 0x40000000    # 2.0f

    iget v2, v2, Landroid/support/v7/widget/cq;->width:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v4, v2, v11}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v2

    .line 621
    sub-int v4, v3, v8

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 629
    :goto_b
    const/4 v8, 0x1

    invoke-direct {p0, v7, v2, v4, v8}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIZ)V

    .line 606
    :cond_f
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_a

    .line 624
    :cond_10
    sub-int v4, v3, v4

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 626
    const/high16 v10, 0x40000000    # 2.0f

    iget v2, v2, Landroid/support/v7/widget/cq;->height:I

    const/4 v11, 0x0

    invoke-static {v9, v10, v8, v2, v11}, Landroid/support/v7/widget/GridLayoutManager;->a(IIIIZ)I

    move-result v2

    move v14, v4

    move v4, v2

    move v2, v14

    goto :goto_b

    .line 633
    :cond_11
    move-object/from16 v0, p4

    iput v3, v0, Landroid/support/v7/widget/cw;->a:I

    .line 635
    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 636
    iget v8, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_15

    .line 637
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/cx;->f:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_14

    .line 638
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/cx;->b:I

    .line 639
    sub-int v3, v4, v3

    move v6, v7

    move v14, v3

    move v3, v4

    move v4, v14

    .line 653
    :goto_c
    const/4 v7, 0x0

    move v8, v7

    move v7, v6

    move v6, v4

    move v4, v3

    move v3, v2

    :goto_d
    if-ge v8, v5, :cond_19

    .line 654
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    aget-object v9, v2, v8

    .line 655
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/cq;

    .line 656
    iget v10, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_18

    .line 657
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->g()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 658
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->m()I

    move-result v3

    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    iget v10, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    invoke-static {v2}, Landroid/support/v7/widget/cq;->b(Landroid/support/v7/widget/cq;)I

    move-result v11

    sub-int/2addr v10, v11

    aget v7, v7, v10

    add-int/2addr v7, v3

    .line 659
    iget-object v3, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v3, v9}, Landroid/support/v7/widget/do;->f(Landroid/view/View;)I

    move-result v3

    sub-int v3, v7, v3

    .line 670
    :goto_e
    invoke-static {v9, v3, v6, v7, v4}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/view/View;IIII)V

    .line 33919
    iget-object v10, v2, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v10}, Landroid/support/v7/widget/ex;->m()Z

    move-result v10

    .line 678
    if-nez v10, :cond_12

    .line 33930
    iget-object v2, v2, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v2}, Landroid/support/v7/widget/ex;->s()Z

    move-result v2

    .line 678
    if-eqz v2, :cond_13

    .line 679
    :cond_12
    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Landroid/support/v7/widget/cw;->c:Z

    .line 681
    :cond_13
    move-object/from16 v0, p4

    iget-boolean v2, v0, Landroid/support/v7/widget/cw;->d:Z

    invoke-virtual {v9}, Landroid/view/View;->isFocusable()Z

    move-result v9

    or-int/2addr v2, v9

    move-object/from16 v0, p4

    iput-boolean v2, v0, Landroid/support/v7/widget/cw;->d:Z

    .line 653
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_d

    .line 641
    :cond_14
    move-object/from16 v0, p3

    iget v4, v0, Landroid/support/v7/widget/cx;->b:I

    .line 642
    add-int/2addr v3, v4

    move v6, v7

    goto :goto_c

    .line 645
    :cond_15
    move-object/from16 v0, p3

    iget v2, v0, Landroid/support/v7/widget/cx;->f:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_16

    .line 646
    move-object/from16 v0, p3

    iget v7, v0, Landroid/support/v7/widget/cx;->b:I

    .line 647
    sub-int v2, v7, v3

    move v3, v4

    move v4, v6

    move v6, v7

    goto :goto_c

    .line 649
    :cond_16
    move-object/from16 v0, p3

    iget v2, v0, Landroid/support/v7/widget/cx;->b:I

    .line 650
    add-int/2addr v3, v2

    move v14, v4

    move v4, v6

    move v6, v3

    move v3, v14

    goto :goto_c

    .line 661
    :cond_17
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->m()I

    move-result v3

    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    invoke-static {v2}, Landroid/support/v7/widget/cq;->b(Landroid/support/v7/widget/cq;)I

    move-result v10

    aget v7, v7, v10

    add-int/2addr v3, v7

    .line 662
    iget-object v7, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v7, v9}, Landroid/support/v7/widget/do;->f(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v3

    goto :goto_e

    .line 665
    :cond_18
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->n()I

    move-result v4

    iget-object v6, p0, Landroid/support/v7/widget/GridLayoutManager;->c:[I

    invoke-static {v2}, Landroid/support/v7/widget/cq;->b(Landroid/support/v7/widget/cq;)I

    move-result v10

    aget v6, v6, v10

    add-int/2addr v6, v4

    .line 666
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->j:Landroid/support/v7/widget/do;

    invoke-virtual {v4, v9}, Landroid/support/v7/widget/do;->f(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v6

    goto :goto_e

    .line 683
    :cond_19
    iget-object v2, p0, Landroid/support/v7/widget/GridLayoutManager;->d:[Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1a
    move v2, v3

    goto/16 :goto_9

    :cond_1b
    move v2, v6

    goto/16 :goto_7
.end method

.method public final a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8

    .prologue
    .line 145
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 146
    instance-of v1, v0, Landroid/support/v7/widget/cq;

    if-nez v1, :cond_0

    .line 147
    invoke-super {p0, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 163
    :goto_0
    return-void

    :cond_0
    move-object v6, v0

    .line 150
    check-cast v6, Landroid/support/v7/widget/cq;

    .line 10948
    iget-object v0, v6, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->c()I

    move-result v0

    .line 151
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;I)I

    move-result v2

    .line 152
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_2

    .line 11122
    iget v0, v6, Landroid/support/v7/widget/cq;->a:I

    .line 11132
    iget v1, v6, Landroid/support/v7/widget/cq;->b:I

    .line 154
    const/4 v3, 0x1

    iget v4, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 12132
    iget v4, v6, Landroid/support/v7/widget/cq;->b:I

    .line 156
    iget v5, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    const/4 v5, 0x0

    .line 153
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 158
    :cond_2
    const/4 v3, 0x1

    .line 13122
    iget v4, v6, Landroid/support/v7/widget/cq;->a:I

    .line 13132
    iget v5, v6, Landroid/support/v7/widget/cq;->b:I

    .line 160
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    .line 14132
    iget v0, v6, Landroid/support/v7/widget/cq;->b:I

    .line 161
    iget v1, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    :goto_2
    const/4 v7, 0x0

    .line 158
    invoke-static/range {v2 .. v7}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;->obtain(IIIIZZ)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionItemInfoCompat;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Ljava/lang/Object;)V

    goto :goto_0

    .line 161
    :cond_3
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public final a(Landroid/support/v7/widget/eu;)V
    .locals 1

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->a(Landroid/support/v7/widget/eu;)V

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    .line 181
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "GridLayoutManager does not support stack from end. Consider using reverse layout"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/widget/LinearLayoutManager;->a(Z)V

    .line 112
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ei;)Z
    .locals 1

    .prologue
    .line 251
    instance-of v0, p1, Landroid/support/v7/widget/cq;

    return v0
.end method

.method public final b(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I
    .locals 1

    .prologue
    .line 379
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->r()V

    .line 380
    invoke-direct {p0}, Landroid/support/v7/widget/GridLayoutManager;->s()V

    .line 381
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutManager;->b(ILandroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v0

    return v0
.end method

.method public final b(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I
    .locals 2

    .prologue
    .line 131
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 139
    :goto_0
    return v0

    .line 134
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/eu;->a()I

    move-result v0

    if-gtz v0, :cond_1

    .line 135
    const/4 v0, 0x0

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p2}, Landroid/support/v7/widget/eu;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/GridLayoutManager;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b()Landroid/support/v7/widget/ei;
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, -0x2

    .line 226
    iget v0, p0, Landroid/support/v7/widget/GridLayoutManager;->i:I

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Landroid/support/v7/widget/cq;

    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/cq;-><init>(II)V

    .line 230
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/cq;

    invoke-direct {v0, v2, v1}, Landroid/support/v7/widget/cq;-><init>(II)V

    goto :goto_0
.end method

.method public final b(II)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/cr;

    .line 19844
    iget-object v0, v0, Landroid/support/v7/widget/cr;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 211
    return-void
.end method

.method public final c(II)V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/cr;

    .line 20844
    iget-object v0, v0, Landroid/support/v7/widget/cr;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 217
    return-void
.end method

.method public final c(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)V
    .locals 6

    .prologue
    .line 167
    .line 14646
    iget-boolean v0, p2, Landroid/support/v7/widget/eu;->g:Z

    .line 167
    if-eqz v0, :cond_0

    .line 15189
    invoke-virtual {p0}, Landroid/support/v7/widget/GridLayoutManager;->l()I

    move-result v2

    .line 15190
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 15191
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/GridLayoutManager;->f(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/cq;

    .line 15948
    iget-object v3, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v3}, Landroid/support/v7/widget/ex;->c()I

    move-result v3

    .line 15193
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    .line 16132
    iget v5, v0, Landroid/support/v7/widget/cq;->b:I

    .line 15193
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 15194
    iget-object v4, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    .line 17122
    iget v0, v0, Landroid/support/v7/widget/cq;->a:I

    .line 15194
    invoke-virtual {v4, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 15190
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 170
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->c(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)V

    .line 17184
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 17185
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 175
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->o:Landroid/support/v7/widget/LinearLayoutManager$SavedState;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/GridLayoutManager;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d(II)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/cr;

    .line 21844
    iget-object v0, v0, Landroid/support/v7/widget/cr;->a:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 222
    return-void
.end method
