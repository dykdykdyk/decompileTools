.class public abstract Landroid/support/v7/widget/a/g;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"


# static fields
.field private static final a:Landroid/support/v7/widget/a/n;

.field private static final b:Landroid/view/animation/Interpolator;

.field private static final c:Landroid/view/animation/Interpolator;


# instance fields
.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 1371
    new-instance v0, Landroid/support/v7/widget/a/h;

    invoke-direct {v0}, Landroid/support/v7/widget/a/h;-><init>()V

    sput-object v0, Landroid/support/v7/widget/a/g;->b:Landroid/view/animation/Interpolator;

    .line 1378
    new-instance v0, Landroid/support/v7/widget/a/i;

    invoke-direct {v0}, Landroid/support/v7/widget/a/i;-><init>()V

    sput-object v0, Landroid/support/v7/widget/a/g;->c:Landroid/view/animation/Interpolator;

    .line 1394
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1395
    new-instance v0, Landroid/support/v7/widget/a/r;

    invoke-direct {v0}, Landroid/support/v7/widget/a/r;-><init>()V

    sput-object v0, Landroid/support/v7/widget/a/g;->a:Landroid/support/v7/widget/a/n;

    .line 1401
    :goto_0
    return-void

    .line 1396
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 1397
    new-instance v0, Landroid/support/v7/widget/a/q;

    invoke-direct {v0}, Landroid/support/v7/widget/a/q;-><init>()V

    sput-object v0, Landroid/support/v7/widget/a/g;->a:Landroid/support/v7/widget/a/n;

    goto :goto_0

    .line 1399
    :cond_1
    new-instance v0, Landroid/support/v7/widget/a/p;

    invoke-direct {v0}, Landroid/support/v7/widget/a/p;-><init>()V

    sput-object v0, Landroid/support/v7/widget/a/g;->a:Landroid/support/v7/widget/a/n;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1391
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/a/g;->d:I

    return-void
.end method

.method public static a(F)F
    .locals 0

    .prologue
    .line 1716
    return p0
.end method

.method public static a(II)I
    .locals 5

    .prologue
    const v4, 0xc0c0c

    .line 1459
    and-int v0, p0, v4

    .line 1460
    if-nez v0, :cond_0

    .line 1474
    :goto_0
    return p0

    .line 1463
    :cond_0
    xor-int/lit8 v1, v0, -0x1

    and-int/2addr v1, p0

    .line 1464
    if-nez p1, :cond_1

    .line 1466
    shl-int/lit8 v0, v0, 0x2

    or-int p0, v1, v0

    .line 1467
    goto :goto_0

    .line 1470
    :cond_1
    shl-int/lit8 v2, v0, 0x1

    const v3, -0xc0c0d

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 1472
    shl-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v4

    shl-int/lit8 v0, v0, 0x2

    or-int p0, v1, v0

    .line 1474
    goto :goto_0
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView;I)J
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2099
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/eb;

    move-result-object v0

    .line 2100
    if-nez v0, :cond_1

    .line 2101
    if-ne p1, v1, :cond_0

    const-wide/16 v0, 0xc8

    .line 2105
    :goto_0
    return-wide v0

    .line 2101
    :cond_0
    const-wide/16 v0, 0xfa

    goto :goto_0

    .line 2104
    :cond_1
    if-ne p1, v1, :cond_2

    .line 11928
    iget-wide v0, v0, Landroid/support/v7/widget/eb;->k:J

    goto :goto_0

    .line 11964
    :cond_2
    iget-wide v0, v0, Landroid/support/v7/widget/eb;->j:J

    goto :goto_0
.end method

.method public static a(Landroid/support/v7/widget/ex;Ljava/util/List;II)Landroid/support/v7/widget/ex;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/ex;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ex;",
            ">;II)",
            "Landroid/support/v7/widget/ex;"
        }
    .end annotation

    .prologue
    .line 1770
    iget-object v0, p0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int v5, p2, v0

    .line 1771
    iget-object v0, p0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int v6, p3, v0

    .line 1772
    const/4 v2, 0x0

    .line 1773
    const/4 v1, -0x1

    .line 1774
    iget-object v0, p0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int v7, p2, v0

    .line 1775
    iget-object v0, p0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v8, p3, v0

    .line 1776
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    .line 1777
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v9, :cond_0

    .line 1778
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 1779
    if-lez v7, :cond_1

    .line 1780
    iget-object v3, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    sub-int/2addr v3, v5

    .line 1781
    if-gez v3, :cond_1

    iget-object v10, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getRight()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v11

    if-le v10, v11, :cond_1

    .line 1782
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1783
    if-le v3, v1, :cond_1

    move v2, v3

    move-object v3, v0

    .line 1789
    :goto_1
    if-gez v7, :cond_4

    .line 1790
    iget-object v1, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v1, p2

    .line 1791
    if-lez v1, :cond_4

    iget-object v10, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLeft()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 1792
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1793
    if-le v1, v2, :cond_4

    move-object v3, v0

    .line 1799
    :goto_2
    if-gez v8, :cond_3

    .line 1800
    iget-object v2, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    sub-int v2, v2, p3

    .line 1801
    if-lez v2, :cond_3

    iget-object v10, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v11

    if-ge v10, v11, :cond_3

    .line 1802
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1803
    if-le v2, v1, :cond_3

    move-object v3, v0

    .line 1810
    :goto_3
    if-lez v8, :cond_2

    .line 1811
    iget-object v1, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, v6

    .line 1812
    if-gez v1, :cond_2

    iget-object v10, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getBottom()I

    move-result v10

    iget-object v11, p0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v11

    if-le v10, v11, :cond_2

    .line 1813
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1814
    if-le v1, v2, :cond_2

    move v12, v1

    move-object v1, v0

    move v0, v12

    .line 1777
    :goto_4
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-object v2, v1

    move v1, v0

    goto/16 :goto_0

    .line 1821
    :cond_0
    return-object v2

    :cond_1
    move-object v3, v2

    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v2

    move-object v1, v3

    goto :goto_4

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method private static a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;FFI)V
    .locals 7

    .prologue
    .line 2073
    sget-object v0, Landroid/support/v7/widget/a/g;->a:Landroid/support/v7/widget/a/n;

    iget-object v3, p2, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/support/v7/widget/a/n;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFI)V

    .line 2075
    return-void
.end method

.method static synthetic a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;Ljava/util/List;IFF)V
    .locals 9

    .prologue
    .line 1355
    .line 12965
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    .line 12966
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    .line 12967
    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/k;

    .line 12968
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 12969
    iget-object v2, v0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/ex;

    iget v3, v0, Landroid/support/v7/widget/a/k;->l:F

    iget v4, v0, Landroid/support/v7/widget/a/k;->m:F

    iget v5, v0, Landroid/support/v7/widget/a/k;->i:I

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/a/g;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;FFI)V

    .line 12971
    invoke-virtual {p0, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 12966
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 12973
    :cond_0
    if-eqz p2, :cond_1

    .line 12974
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p6

    move v5, p4

    .line 12975
    invoke-static/range {v0 .. v5}, Landroid/support/v7/widget/a/g;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;FFI)V

    .line 12976
    invoke-virtual {p0, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 12978
    :cond_1
    const/4 v1, 0x0

    .line 12979
    add-int/lit8 v0, v7, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_3

    .line 12980
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/k;

    .line 12981
    invoke-static {v0}, Landroid/support/v7/widget/a/k;->a(Landroid/support/v7/widget/a/k;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Landroid/support/v7/widget/a/k;->k:Z

    if-nez v3, :cond_2

    .line 12982
    invoke-interface {p3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    .line 12979
    :goto_2
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v1, v0

    goto :goto_1

    .line 12983
    :cond_2
    invoke-static {v0}, Landroid/support/v7/widget/a/k;->a(Landroid/support/v7/widget/a/k;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 12984
    const/4 v0, 0x1

    goto :goto_2

    .line 12987
    :cond_3
    if-eqz v1, :cond_4

    .line 12988
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    .line 1355
    :cond_4
    return-void

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public static a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ex;I)V
    .locals 4

    .prologue
    .line 1912
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v0

    .line 1913
    instance-of v1, v0, Landroid/support/v7/widget/a/m;

    if-eqz v1, :cond_1

    .line 1914
    check-cast v0, Landroid/support/v7/widget/a/m;

    iget-object v1, p1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    iget-object v2, p2, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-interface {v0, v1, v2}, Landroid/support/v7/widget/a/m;->a(Landroid/view/View;Landroid/view/View;)V

    .line 1941
    :cond_0
    :goto_0
    return-void

    .line 1920
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/eg;->e()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1921
    iget-object v1, p2, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v7/widget/eg;->e(Landroid/view/View;)I

    move-result v1

    .line 1922
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    if-gt v1, v2, :cond_2

    .line 1923
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 1925
    :cond_2
    iget-object v1, p2, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v7/widget/eg;->g(Landroid/view/View;)I

    move-result v1

    .line 1926
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_3

    .line 1927
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 1931
    :cond_3
    invoke-virtual {v0}, Landroid/support/v7/widget/eg;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1932
    iget-object v0, p2, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v7/widget/eg;->f(Landroid/view/View;)I

    move-result v0

    .line 1933
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 1934
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    .line 1936
    :cond_4
    iget-object v0, p2, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v7/widget/eg;->h(Landroid/view/View;)I

    move-result v0

    .line 1937
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    .line 1938
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/RecyclerView;->a(I)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/support/v7/widget/a/g;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;Ljava/util/List;IFF)V
    .locals 11

    .prologue
    .line 1355
    .line 13946
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v9

    .line 13947
    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v9, :cond_2

    .line 13948
    invoke-interface {p4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/k;

    .line 14373
    iget v1, v0, Landroid/support/v7/widget/a/k;->d:F

    iget v2, v0, Landroid/support/v7/widget/a/k;->f:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 14374
    iget-object v1, v0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/ex;

    iget-object v1, v1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/a/k;->l:F

    .line 14378
    :goto_1
    iget v1, v0, Landroid/support/v7/widget/a/k;->e:F

    iget v2, v0, Landroid/support/v7/widget/a/k;->g:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 14379
    iget-object v1, v0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/ex;

    iget-object v1, v1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/a/k;->m:F

    .line 13950
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 13951
    iget-object v3, v0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/ex;

    iget v4, v0, Landroid/support/v7/widget/a/k;->l:F

    iget v5, v0, Landroid/support/v7/widget/a/k;->m:F

    iget v6, v0, Landroid/support/v7/widget/a/k;->i:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/a/g;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;FFIZ)V

    .line 13953
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 13947
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    .line 14376
    :cond_0
    iget v1, v0, Landroid/support/v7/widget/a/k;->d:F

    iget v2, v0, Landroid/support/v7/widget/a/k;->o:F

    iget v3, v0, Landroid/support/v7/widget/a/k;->f:F

    iget v4, v0, Landroid/support/v7/widget/a/k;->d:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/a/k;->l:F

    goto :goto_1

    .line 14381
    :cond_1
    iget v1, v0, Landroid/support/v7/widget/a/k;->e:F

    iget v2, v0, Landroid/support/v7/widget/a/k;->o:F

    iget v3, v0, Landroid/support/v7/widget/a/k;->g:F

    iget v4, v0, Landroid/support/v7/widget/a/k;->e:F

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/a/k;->m:F

    goto :goto_2

    .line 13955
    :cond_2
    if-eqz p3, :cond_3

    .line 13956
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    .line 13957
    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/support/v7/widget/a/g;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;FFIZ)V

    .line 13958
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1355
    :cond_3
    return-void
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 1600
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic a(Landroid/support/v7/widget/a/g;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 2

    .prologue
    .line 1355
    .line 14573
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/a/g;->b(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    .line 14574
    const/high16 v1, 0xff0000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1355
    goto :goto_0
.end method

.method public static b(F)F
    .locals 0

    .prologue
    .line 1739
    return p0
.end method

.method public static b(II)I
    .locals 5

    .prologue
    const v4, 0x303030

    .line 1548
    and-int v0, p0, v4

    .line 1549
    if-nez v0, :cond_0

    .line 1563
    :goto_0
    return p0

    .line 1552
    :cond_0
    xor-int/lit8 v1, v0, -0x1

    and-int/2addr v1, p0

    .line 1553
    if-nez p1, :cond_1

    .line 1555
    shr-int/lit8 v0, v0, 0x2

    or-int p0, v1, v0

    .line 1556
    goto :goto_0

    .line 1559
    :cond_1
    shr-int/lit8 v2, v0, 0x1

    const v3, -0x303031

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 1561
    shr-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v4

    shr-int/lit8 v0, v0, 0x2

    or-int p0, v1, v0

    .line 1563
    goto :goto_0
.end method

.method public static d()I
    .locals 1

    .prologue
    .line 1663
    const/4 v0, 0x0

    return v0
.end method

.method public static e()F
    .locals 1

    .prologue
    .line 1678
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method

.method public static f()F
    .locals 1

    .prologue
    .line 1691
    const/high16 v0, 0x3f000000    # 0.5f

    return v0
.end method


# virtual methods
.method public abstract a(Landroid/support/v7/widget/RecyclerView;)I
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;IIJ)I
    .locals 6

    .prologue
    const/4 v1, -0x1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2132
    .line 12869
    iget v2, p0, Landroid/support/v7/widget/a/g;->d:I

    if-ne v2, v1, :cond_0

    .line 12870
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_max_drag_scroll_per_frame:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/a/g;->d:I

    .line 12873
    :cond_0
    iget v2, p0, Landroid/support/v7/widget/a/g;->d:I

    .line 2133
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2134
    int-to-float v4, p3

    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    .line 2136
    int-to-float v3, v3

    mul-float/2addr v3, v0

    int-to-float v5, p2

    div-float/2addr v3, v5

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2137
    mul-int/2addr v2, v4

    int-to-float v2, v2

    sget-object v4, Landroid/support/v7/widget/a/g;->c:Landroid/view/animation/Interpolator;

    .line 2138
    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 2140
    const-wide/16 v4, 0x7d0

    cmp-long v3, p4, v4

    if-lez v3, :cond_2

    .line 2145
    :goto_0
    int-to-float v2, v2

    sget-object v3, Landroid/support/v7/widget/a/g;->b:Landroid/view/animation/Interpolator;

    .line 2146
    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 2147
    if-nez v0, :cond_1

    .line 2148
    if-lez p3, :cond_3

    const/4 v0, 0x1

    .line 2150
    :cond_1
    :goto_1
    return v0

    .line 2143
    :cond_2
    long-to-float v0, p4

    const/high16 v3, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 2148
    goto :goto_1
.end method

.method public a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;FFIZ)V
    .locals 8

    .prologue
    .line 2039
    sget-object v0, Landroid/support/v7/widget/a/g;->a:Landroid/support/v7/widget/a/n;

    iget-object v3, p3, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Landroid/support/v7/widget/a/n;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;FFIZ)V

    .line 2041
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;)V
    .locals 2

    .prologue
    .line 2006
    sget-object v0, Landroid/support/v7/widget/a/g;->a:Landroid/support/v7/widget/a/n;

    iget-object v1, p2, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/a/n;->a(Landroid/view/View;)V

    .line 2007
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/ex;)V
.end method

.method public a(Landroid/support/v7/widget/ex;I)V
    .locals 2

    .prologue
    .line 1863
    if-eqz p1, :cond_0

    .line 1864
    sget-object v0, Landroid/support/v7/widget/a/g;->a:Landroid/support/v7/widget/a/n;

    iget-object v1, p1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/support/v7/widget/a/n;->b(Landroid/view/View;)V

    .line 1866
    :cond_0
    return-void
.end method

.method public abstract a(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ex;)Z
.end method

.method final b(Landroid/support/v7/widget/RecyclerView;)I
    .locals 2

    .prologue
    .line 1568
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    .line 1569
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v7/widget/a/g;->b(II)I

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 1637
    const/4 v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 1652
    const/4 v0, 0x1

    return v0
.end method
