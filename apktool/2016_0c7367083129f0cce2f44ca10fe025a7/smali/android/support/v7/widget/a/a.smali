.class public final Landroid/support/v7/widget/a/a;
.super Landroid/support/v7/widget/ef;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroid/support/v7/widget/ej;


# instance fields
.field private A:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private B:Landroid/support/v7/widget/ea;

.field private final C:Landroid/support/v7/widget/el;

.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/support/v7/widget/ex;

.field c:F

.field d:F

.field e:F

.field f:F

.field public g:F

.field public h:F

.field i:F

.field j:F

.field k:I

.field public l:Landroid/support/v7/widget/a/g;

.field m:I

.field n:I

.field o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/a/k;",
            ">;"
        }
    .end annotation
.end field

.field public p:Landroid/support/v7/widget/RecyclerView;

.field final q:Ljava/lang/Runnable;

.field r:Landroid/view/VelocityTracker;

.field s:Landroid/view/View;

.field t:I

.field u:Landroid/support/v4/view/GestureDetectorCompat;

.field v:Landroid/graphics/Rect;

.field w:J

.field private final x:[F

.field private y:I

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/a/g;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 435
    invoke-direct {p0}, Landroid/support/v7/widget/ef;-><init>()V

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->a:Ljava/util/List;

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->x:[F

    .line 179
    iput-object v1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    .line 218
    iput v2, p0, Landroid/support/v7/widget/a/a;->k:I

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/a/a;->m:I

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->o:Ljava/util/List;

    .line 254
    new-instance v0, Landroid/support/v7/widget/a/b;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/a/b;-><init>(Landroid/support/v7/widget/a/a;)V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->q:Ljava/lang/Runnable;

    .line 281
    iput-object v1, p0, Landroid/support/v7/widget/a/a;->B:Landroid/support/v7/widget/ea;

    .line 288
    iput-object v1, p0, Landroid/support/v7/widget/a/a;->s:Landroid/view/View;

    .line 295
    iput v2, p0, Landroid/support/v7/widget/a/a;->t:I

    .line 302
    new-instance v0, Landroid/support/v7/widget/a/c;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/a/c;-><init>(Landroid/support/v7/widget/a/a;)V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->C:Landroid/support/v7/widget/el;

    .line 436
    iput-object p1, p0, Landroid/support/v7/widget/a/a;->l:Landroid/support/v7/widget/a/g;

    .line 437
    return-void
.end method

.method private a(I)I
    .locals 7

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x4

    const/4 v6, 0x0

    .line 1204
    and-int/lit8 v0, p1, 0xc

    if-eqz v0, :cond_3

    .line 1205
    iget v0, p0, Landroid/support/v7/widget/a/a;->g:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    move v0, v1

    .line 1206
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/support/v7/widget/a/a;->k:I

    if-ltz v3, :cond_2

    .line 1207
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Landroid/support/v7/widget/a/a;->f:F

    .line 1208
    invoke-static {v5}, Landroid/support/v7/widget/a/g;->b(F)F

    move-result v5

    .line 1207
    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1209
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/v7/widget/a/a;->k:I

    .line 1210
    invoke-static {v3, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v3

    .line 1211
    iget-object v4, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/a/a;->k:I

    .line 1212
    invoke-static {v4, v5}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v4

    .line 1213
    cmpl-float v5, v3, v6

    if-lez v5, :cond_1

    .line 1214
    :goto_1
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1215
    and-int v3, v1, p1

    if-eqz v3, :cond_2

    if-ne v0, v1, :cond_2

    iget v3, p0, Landroid/support/v7/widget/a/a;->e:F

    .line 1216
    invoke-static {v3}, Landroid/support/v7/widget/a/g;->a(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_2

    .line 1217
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1229
    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 1205
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1213
    goto :goto_1

    .line 1222
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    .line 1223
    invoke-static {}, Landroid/support/v7/widget/a/g;->e()F

    move-result v2

    mul-float/2addr v1, v2

    .line 1225
    and-int v2, p1, v0

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/support/v7/widget/a/a;->g:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    move v1, v0

    .line 1226
    goto :goto_2

    .line 1229
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method static synthetic a(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/ex;)V
    .locals 18

    .prologue
    .line 76
    .line 15824
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->isLayoutRequested()Z

    move-result v1

    if-nez v1, :cond_5

    .line 15827
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/a/a;->m:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 15831
    invoke-static {}, Landroid/support/v7/widget/a/g;->f()F

    .line 15832
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/a/a;->i:F

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/a/a;->g:F

    add-float/2addr v1, v2

    float-to-int v5, v1

    .line 15833
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/a/a;->j:F

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/a/a;->h:F

    add-float/2addr v1, v2

    float-to-int v6, v1

    .line 15834
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v6, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 15835
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v5, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 15836
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_5

    .line 16772
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->z:Ljava/util/List;

    if-nez v1, :cond_1

    .line 16773
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/v7/widget/a/a;->z:Ljava/util/List;

    .line 16774
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/support/v7/widget/a/a;->A:Ljava/util/List;

    .line 16779
    :goto_0
    invoke-static {}, Landroid/support/v7/widget/a/g;->d()I

    .line 16780
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/a/a;->i:F

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/a/a;->g:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v7, v1, 0x0

    .line 16781
    move-object/from16 v0, p0

    iget v1, v0, Landroid/support/v7/widget/a/a;->j:F

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v7/widget/a/a;->h:F

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/lit8 v8, v1, 0x0

    .line 16782
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v7

    add-int/lit8 v9, v1, 0x0

    .line 16783
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    add-int/lit8 v10, v1, 0x0

    .line 16784
    add-int v1, v7, v9

    div-int/lit8 v11, v1, 0x2

    .line 16785
    add-int v1, v8, v10

    div-int/lit8 v12, v1, 0x2

    .line 16786
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v13

    .line 16787
    invoke-virtual {v13}, Landroid/support/v7/widget/eg;->l()I

    move-result v14

    .line 16788
    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v14, :cond_4

    .line 16789
    invoke-virtual {v13, v4}, Landroid/support/v7/widget/eg;->f(I)Landroid/view/View;

    move-result-object v1

    .line 16790
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    if-eq v1, v2, :cond_3

    .line 16793
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    if-lt v2, v8, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    if-gt v2, v10, :cond_3

    .line 16794
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    if-lt v2, v7, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    if-gt v2, v9, :cond_3

    .line 16797
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v15

    .line 16798
    invoke-static {}, Landroid/support/v7/widget/a/g;->a()Z

    .line 16800
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v11, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 16801
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    add-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 16802
    mul-int/2addr v2, v2

    mul-int/2addr v1, v1

    add-int v16, v2, v1

    .line 16804
    const/4 v2, 0x0

    .line 16805
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v17

    .line 16806
    const/4 v1, 0x0

    move v3, v2

    move v2, v1

    :goto_2
    move/from16 v0, v17

    if-ge v2, v0, :cond_2

    .line 16807
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->A:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v0, v16

    if-le v0, v1, :cond_2

    .line 16808
    add-int/lit8 v3, v3, 0x1

    .line 16806
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    .line 16776
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 16777
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 16813
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->z:Ljava/util/List;

    invoke-interface {v1, v3, v15}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16814
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->A:Ljava/util/List;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 16788
    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_1

    .line 16817
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->z:Ljava/util/List;

    .line 15840
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 15844
    move-object/from16 v0, p1

    invoke-static {v0, v1, v5, v6}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/ex;Ljava/util/List;II)Landroid/support/v7/widget/ex;

    move-result-object v1

    .line 15845
    if-nez v1, :cond_6

    .line 15846
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 15847
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/a/a;->A:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 15848
    :cond_5
    :goto_3
    return-void

    .line 15850
    :cond_6
    invoke-virtual {v1}, Landroid/support/v7/widget/ex;->d()I

    move-result v2

    .line 15851
    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/widget/ex;->d()I

    .line 15852
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/a/a;->l:Landroid/support/v7/widget/a/g;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ex;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15854
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p1

    invoke-static {v3, v0, v1, v2}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ex;I)V

    goto :goto_3
.end method

.method static synthetic a(Landroid/support/v7/widget/a/a;Landroid/view/MotionEvent;II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 17137
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 17138
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 17141
    iget v2, p0, Landroid/support/v7/widget/a/a;->c:F

    sub-float/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/a/a;->g:F

    .line 17142
    iget v0, p0, Landroid/support/v7/widget/a/a;->d:F

    sub-float v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->h:F

    .line 17143
    and-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_0

    .line 17144
    iget v0, p0, Landroid/support/v7/widget/a/a;->g:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->g:F

    .line 17146
    :cond_0
    and-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_1

    .line 17147
    iget v0, p0, Landroid/support/v7/widget/a/a;->g:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->g:F

    .line 17149
    :cond_1
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_2

    .line 17150
    iget v0, p0, Landroid/support/v7/widget/a/a;->h:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->h:F

    .line 17152
    :cond_2
    and-int/lit8 v0, p2, 0x2

    if-nez v0, :cond_3

    .line 17153
    iget v0, p0, Landroid/support/v7/widget/a/a;->h:F

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->h:F

    .line 76
    :cond_3
    return-void
.end method

.method private a([F)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 507
    iget v0, p0, Landroid/support/v7/widget/a/a;->n:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_0

    .line 508
    iget v0, p0, Landroid/support/v7/widget/a/a;->i:F

    iget v1, p0, Landroid/support/v7/widget/a/a;->g:F

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    iget-object v1, v1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v2

    .line 512
    :goto_0
    iget v0, p0, Landroid/support/v7/widget/a/a;->n:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_1

    .line 513
    iget v0, p0, Landroid/support/v7/widget/a/a;->j:F

    iget v1, p0, Landroid/support/v7/widget/a/a;->h:F

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    iget-object v1, v1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p1, v3

    .line 517
    :goto_1
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    iget-object v0, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v0

    aput v0, p1, v2

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    iget-object v0, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    aput v0, p1, v3

    goto :goto_1
.end method

.method static synthetic a(Landroid/support/v7/widget/a/a;ILandroid/view/MotionEvent;I)Z
    .locals 10

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v0, 0x0

    .line 76
    .line 17949
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    if-nez v3, :cond_0

    if-ne p1, v4, :cond_0

    iget v3, p0, Landroid/support/v7/widget/a/a;->m:I

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->l:Landroid/support/v7/widget/a/g;

    .line 17950
    invoke-virtual {v3}, Landroid/support/v7/widget/a/g;->c()Z

    .line 17953
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getScrollState()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 17997
    :cond_0
    :goto_0
    return v0

    .line 18920
    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v3

    .line 18921
    iget v4, p0, Landroid/support/v7/widget/a/a;->k:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_6

    .line 17957
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 17960
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->l:Landroid/support/v7/widget/a/g;

    iget-object v4, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/a/g;->b(Landroid/support/v7/widget/RecyclerView;)I

    move-result v3

    .line 17962
    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x8

    .line 17965
    if-eqz v3, :cond_0

    .line 17971
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 17972
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 17975
    iget v6, p0, Landroid/support/v7/widget/a/a;->c:F

    sub-float/2addr v4, v6

    .line 17976
    iget v6, p0, Landroid/support/v7/widget/a/a;->d:F

    sub-float/2addr v5, v6

    .line 17979
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 17980
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 17982
    iget v8, p0, Landroid/support/v7/widget/a/a;->y:I

    int-to-float v8, v8

    cmpg-float v8, v6, v8

    if-gez v8, :cond_3

    iget v8, p0, Landroid/support/v7/widget/a/a;->y:I

    int-to-float v8, v8

    cmpg-float v8, v7, v8

    if-ltz v8, :cond_0

    .line 17985
    :cond_3
    cmpl-float v6, v6, v7

    if-lez v6, :cond_a

    .line 17986
    cmpg-float v5, v4, v9

    if-gez v5, :cond_4

    and-int/lit8 v5, v3, 0x4

    if-eqz v5, :cond_0

    .line 17989
    :cond_4
    cmpl-float v4, v4, v9

    if-lez v4, :cond_5

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_0

    .line 18000
    :cond_5
    iput v9, p0, Landroid/support/v7/widget/a/a;->h:F

    iput v9, p0, Landroid/support/v7/widget/a/a;->g:F

    .line 18001
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->k:I

    .line 18002
    invoke-virtual {p0, v2, v1}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/ex;I)V

    move v0, v1

    .line 76
    goto :goto_0

    .line 18924
    :cond_6
    iget v4, p0, Landroid/support/v7/widget/a/a;->k:I

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 18925
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    iget v6, p0, Landroid/support/v7/widget/a/a;->c:F

    sub-float/2addr v5, v6

    .line 18926
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v6, p0, Landroid/support/v7/widget/a/a;->d:F

    sub-float/2addr v4, v6

    .line 18927
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 18928
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 18930
    iget v6, p0, Landroid/support/v7/widget/a/a;->y:I

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_7

    iget v6, p0, Landroid/support/v7/widget/a/a;->y:I

    int-to-float v6, v6

    cmpg-float v6, v4, v6

    if-ltz v6, :cond_2

    .line 18933
    :cond_7
    cmpl-float v6, v5, v4

    if-lez v6, :cond_8

    invoke-virtual {v3}, Landroid/support/v7/widget/eg;->e()Z

    move-result v6

    if-nez v6, :cond_2

    .line 18935
    :cond_8
    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    invoke-virtual {v3}, Landroid/support/v7/widget/eg;->f()Z

    move-result v3

    if-nez v3, :cond_2

    .line 18938
    :cond_9
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/a/a;->a(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    .line 18939
    if-eqz v3, :cond_2

    .line 18942
    iget-object v2, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v2

    goto/16 :goto_1

    .line 17993
    :cond_a
    cmpg-float v4, v5, v9

    if-gez v4, :cond_b

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_0

    .line 17996
    :cond_b
    cmpl-float v4, v5, v9

    if-lez v4, :cond_5

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    goto/16 :goto_0
.end method

.method private static a(Landroid/view/View;FFFF)Z
    .locals 1

    .prologue
    .line 440
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_0

    .line 441
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    cmpl-float v0, p2, p4

    if-ltz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)I
    .locals 7

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 1233
    and-int/lit8 v0, p1, 0x3

    if-eqz v0, :cond_3

    .line 1234
    iget v0, p0, Landroid/support/v7/widget/a/a;->h:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    move v0, v1

    .line 1235
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/support/v7/widget/a/a;->k:I

    if-ltz v3, :cond_2

    .line 1236
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Landroid/support/v7/widget/a/a;->f:F

    .line 1237
    invoke-static {v5}, Landroid/support/v7/widget/a/g;->b(F)F

    move-result v5

    .line 1236
    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1238
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    iget v4, p0, Landroid/support/v7/widget/a/a;->k:I

    .line 1239
    invoke-static {v3, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v3

    .line 1240
    iget-object v4, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    iget v5, p0, Landroid/support/v7/widget/a/a;->k:I

    .line 1241
    invoke-static {v4, v5}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v4

    .line 1242
    cmpl-float v5, v4, v6

    if-lez v5, :cond_1

    .line 1243
    :goto_1
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1244
    and-int v4, v1, p1

    if-eqz v4, :cond_2

    if-ne v1, v0, :cond_2

    iget v4, p0, Landroid/support/v7/widget/a/a;->e:F

    .line 1245
    invoke-static {v4}, Landroid/support/v7/widget/a/g;->a(F)F

    move-result v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_2

    .line 1246
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 1257
    :goto_2
    return v1

    :cond_0
    move v0, v2

    .line 1234
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1242
    goto :goto_1

    .line 1251
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    .line 1252
    invoke-static {}, Landroid/support/v7/widget/a/g;->e()F

    move-result v2

    mul-float/2addr v1, v2

    .line 1253
    and-int v2, p1, v0

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/support/v7/widget/a/a;->h:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    move v1, v0

    .line 1254
    goto :goto_2

    .line 1257
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private b()V
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 914
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 915
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    .line 917
    :cond_0
    return-void
.end method


# virtual methods
.method final a(Landroid/support/v7/widget/ex;Z)I
    .locals 3

    .prologue
    .line 884
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 885
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 886
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/k;

    .line 887
    iget-object v2, v0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/ex;

    if-ne v2, p1, :cond_1

    .line 888
    iget-boolean v2, v0, Landroid/support/v7/widget/a/k;->n:Z

    or-int/2addr v2, p2

    iput-boolean v2, v0, Landroid/support/v7/widget/a/k;->n:Z

    .line 889
    invoke-static {v0}, Landroid/support/v7/widget/a/k;->a(Landroid/support/v7/widget/a/k;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 15361
    iget-object v2, v0, Landroid/support/v7/widget/a/k;->j:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v2}, Landroid/support/v4/animation/ValueAnimatorCompat;->cancel()V

    .line 892
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/a/a;->o:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 893
    invoke-static {v0}, Landroid/support/v7/widget/a/k;->b(Landroid/support/v7/widget/a/k;)I

    move-result v0

    .line 896
    :goto_1
    return v0

    .line 885
    :cond_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 896
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 6

    .prologue
    .line 1008
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 1009
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 1010
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    iget-object v0, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 1012
    iget v1, p0, Landroid/support/v7/widget/a/a;->i:F

    iget v2, p0, Landroid/support/v7/widget/a/a;->g:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/a/a;->j:F

    iget v5, p0, Landroid/support/v7/widget/a/a;->h:F

    add-float/2addr v2, v5

    invoke-static {v0, v3, v4, v1, v2}, Landroid/support/v7/widget/a/a;->a(Landroid/view/View;FFFF)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1023
    :goto_0
    return-object v0

    .line 1016
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_2

    .line 1017
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->o:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/k;

    .line 1018
    iget-object v1, v0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/ex;

    iget-object v1, v1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 1019
    iget v5, v0, Landroid/support/v7/widget/a/k;->l:F

    iget v0, v0, Landroid/support/v7/widget/a/k;->m:F

    invoke-static {v1, v3, v4, v5, v0}, Landroid/support/v7/widget/a/a;->a(Landroid/view/View;FFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 1020
    goto :goto_0

    .line 1016
    :cond_1
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    .line 1023
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/widget/RecyclerView;->a(FF)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 909
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->r:Landroid/view/VelocityTracker;

    .line 910
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 534
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/a/a;->t:I

    .line 536
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->x:[F

    invoke-direct {p0, v0}, Landroid/support/v7/widget/a/a;->a([F)V

    .line 538
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->x:[F

    const/4 v1, 0x0

    aget v6, v0, v1

    .line 539
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->x:[F

    const/4 v1, 0x1

    aget v7, v0, v1

    .line 541
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->l:Landroid/support/v7/widget/a/g;

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    iget-object v4, p0, Landroid/support/v7/widget/a/a;->o:Ljava/util/List;

    iget v5, p0, Landroid/support/v7/widget/a/a;->m:I

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/a/g;Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;Ljava/util/List;IFF)V

    .line 543
    return-void

    :cond_0
    move v6, v7

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eu;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 521
    .line 522
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->x:[F

    invoke-direct {p0, v0}, Landroid/support/v7/widget/a/a;->a([F)V

    .line 524
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->x:[F

    const/4 v1, 0x0

    aget v5, v0, v1

    .line 525
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->x:[F

    const/4 v1, 0x1

    aget v6, v0, v1

    .line 527
    :goto_0
    iget-object v2, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->o:Ljava/util/List;

    iget v4, p0, Landroid/support/v7/widget/a/a;->m:I

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Landroid/support/v7/widget/a/g;->a(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;Ljava/util/List;IFF)V

    .line 529
    return-void

    :cond_0
    move v5, v6

    goto :goto_0
.end method

.method public final a(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/eu;)V
    .locals 0

    .prologue
    .line 902
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 903
    return-void
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 456
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    if-ne v0, p1, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_8

    .line 9483
    iget-object v2, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    .line 10350
    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    if-eqz v0, :cond_2

    .line 10351
    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    const-string v3, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/eg;->a(Ljava/lang/String;)V

    .line 10354
    :cond_2
    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10355
    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10356
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 10358
    :cond_3
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->g()V

    .line 10359
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 9484
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->C:Landroid/support/v7/widget/el;

    .line 10434
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->h:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 10435
    iget-object v3, v0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v7/widget/el;

    if-ne v3, v2, :cond_4

    .line 10436
    iput-object v5, v0, Landroid/support/v7/widget/RecyclerView;->i:Landroid/support/v7/widget/el;

    .line 9485
    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    .line 11030
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/List;

    if-eqz v2, :cond_5

    .line 11033
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9487
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 9488
    add-int/lit8 v0, v0, -0x1

    move v2, v0

    :goto_2
    if-ltz v2, :cond_7

    .line 9489
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->o:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/a/k;

    .line 9490
    iget-object v3, p0, Landroid/support/v7/widget/a/a;->l:Landroid/support/v7/widget/a/g;

    iget-object v4, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/ex;

    invoke-virtual {v3, v4, v0}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;)V

    .line 9488
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_2

    :cond_6
    move v0, v1

    .line 10356
    goto :goto_1

    .line 9492
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9493
    iput-object v5, p0, Landroid/support/v7/widget/a/a;->s:Landroid/view/View;

    .line 9494
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/a/a;->t:I

    .line 9495
    invoke-direct {p0}, Landroid/support/v7/widget/a/a;->b()V

    .line 462
    :cond_8
    iput-object p1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    .line 463
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 464
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 465
    sget v2, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_swipe_escape_velocity:I

    .line 466
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/a/a;->e:F

    .line 467
    sget v2, Landroid/support/v7/recyclerview/R$dimen;->item_touch_helper_swipe_escape_max_velocity:I

    .line 468
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->f:F

    .line 11474
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 11475
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->y:I

    .line 11476
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/ef;)V

    .line 11477
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->C:Landroid/support/v7/widget/el;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/el;)V

    .line 11478
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    .line 12018
    iget-object v2, v0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/List;

    if-nez v2, :cond_9

    .line 12019
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/List;

    .line 12021
    :cond_9
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->l:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12499
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->u:Landroid/support/v4/view/GestureDetectorCompat;

    if-nez v0, :cond_0

    .line 12502
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/support/v7/widget/a/j;

    invoke-direct {v3, p0, v1}, Landroid/support/v7/widget/a/j;-><init>(Landroid/support/v7/widget/a/a;B)V

    invoke-direct {v0, v2, v3}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->u:Landroid/support/v4/view/GestureDetectorCompat;

    goto/16 :goto_0
.end method

.method public final a(Landroid/support/v7/widget/ex;I)V
    .locals 12

    .prologue
    .line 553
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/a/a;->m:I

    if-ne p2, v0, :cond_0

    .line 670
    :goto_0
    return-void

    .line 556
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/support/v7/widget/a/a;->w:J

    .line 557
    iget v4, p0, Landroid/support/v7/widget/a/a;->m:I

    .line 559
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/ex;Z)I

    .line 560
    iput p2, p0, Landroid/support/v7/widget/a/a;->m:I

    .line 561
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 565
    iget-object v0, p1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->s:Landroid/view/View;

    .line 13261
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    .line 13264
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->B:Landroid/support/v7/widget/ea;

    if-nez v0, :cond_1

    .line 13265
    new-instance v0, Landroid/support/v7/widget/a/f;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/a/f;-><init>(Landroid/support/v7/widget/a/a;)V

    iput-object v0, p0, Landroid/support/v7/widget/a/a;->B:Landroid/support/v7/widget/ea;

    .line 13283
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->B:Landroid/support/v7/widget/ea;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/ea;)V

    .line 568
    :cond_2
    const/4 v0, 0x1

    mul-int/lit8 v1, p2, 0x8

    add-int/lit8 v1, v1, 0x8

    shl-int/2addr v0, v1

    add-int/lit8 v11, v0, -0x1

    .line 570
    const/4 v0, 0x0

    .line 572
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    if-eqz v1, :cond_4

    .line 573
    iget-object v2, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    .line 574
    iget-object v1, v2, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 575
    const/4 v0, 0x2

    if-eq v4, v0, :cond_9

    .line 14158
    iget v0, p0, Landroid/support/v7/widget/a/a;->m:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    .line 14161
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->l:Landroid/support/v7/widget/a/g;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    .line 14162
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    .line 14164
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 14162
    invoke-static {v0, v1}, Landroid/support/v7/widget/a/g;->b(II)I

    move-result v1

    .line 14165
    const v3, 0xff00

    and-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x8

    .line 14167
    if-eqz v1, :cond_9

    .line 14170
    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    .line 14173
    iget v3, p0, Landroid/support/v7/widget/a/a;->g:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Landroid/support/v7/widget/a/a;->h:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_a

    .line 14174
    invoke-direct {p0, v1}, Landroid/support/v7/widget/a/a;->a(I)I

    move-result v9

    if-lez v9, :cond_8

    .line 14176
    and-int/2addr v0, v9

    if-nez v0, :cond_3

    .line 14178
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    .line 14179
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 14178
    invoke-static {v9, v0}, Landroid/support/v7/widget/a/g;->a(II)I

    move-result v9

    .line 577
    :cond_3
    :goto_1
    invoke-direct {p0}, Landroid/support/v7/widget/a/a;->b()V

    .line 581
    sparse-switch v9, :sswitch_data_0

    .line 595
    const/4 v7, 0x0

    .line 596
    const/4 v8, 0x0

    .line 598
    :goto_2
    const/4 v0, 0x2

    if-ne v4, v0, :cond_b

    .line 599
    const/16 v3, 0x8

    .line 605
    :goto_3
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->x:[F

    invoke-direct {p0, v0}, Landroid/support/v7/widget/a/a;->a([F)V

    .line 606
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->x:[F

    const/4 v1, 0x0

    aget v5, v0, v1

    .line 607
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->x:[F

    const/4 v1, 0x1

    aget v6, v0, v1

    .line 608
    new-instance v0, Landroid/support/v7/widget/a/d;

    move-object v1, p0

    move-object v10, v2

    invoke-direct/range {v0 .. v10}, Landroid/support/v7/widget/a/d;-><init>(Landroid/support/v7/widget/a/a;Landroid/support/v7/widget/ex;IIFFFFILandroid/support/v7/widget/ex;)V

    .line 637
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v3}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/RecyclerView;I)J

    move-result-wide v2

    .line 14352
    iget-object v1, v0, Landroid/support/v7/widget/a/k;->j:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v1, v2, v3}, Landroid/support/v4/animation/ValueAnimatorCompat;->setDuration(J)V

    .line 640
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14356
    iget-object v1, v0, Landroid/support/v7/widget/a/k;->h:Landroid/support/v7/widget/ex;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ex;->a(Z)V

    .line 14357
    iget-object v0, v0, Landroid/support/v7/widget/a/k;->j:Landroid/support/v4/animation/ValueAnimatorCompat;

    invoke-interface {v0}, Landroid/support/v4/animation/ValueAnimatorCompat;->start()V

    .line 642
    const/4 v0, 0x1

    .line 647
    :goto_4
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    :cond_4
    move v1, v0

    .line 649
    if-eqz p1, :cond_5

    .line 650
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->l:Landroid/support/v7/widget/a/g;

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    .line 651
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/a/g;->b(Landroid/support/v7/widget/RecyclerView;)I

    move-result v0

    and-int/2addr v0, v11

    iget v2, p0, Landroid/support/v7/widget/a/a;->m:I

    mul-int/lit8 v2, v2, 0x8

    shr-int/2addr v0, v2

    iput v0, p0, Landroid/support/v7/widget/a/a;->n:I

    .line 653
    iget-object v0, p1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->i:F

    .line 654
    iget-object v0, p1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v7/widget/a/a;->j:F

    .line 655
    iput-object p1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    .line 657
    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    .line 658
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    iget-object v0, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 661
    :cond_5
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 662
    if-eqz v2, :cond_6

    .line 663
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_5
    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 665
    :cond_6
    if-nez v1, :cond_7

    .line 666
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v0

    .line 14835
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/eg;->t:Z

    .line 668
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->l:Landroid/support/v7/widget/a/g;

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    iget v2, p0, Landroid/support/v7/widget/a/a;->m:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/ex;I)V

    .line 669
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidate()V

    goto/16 :goto_0

    .line 14183
    :cond_8
    invoke-direct {p0, v1}, Landroid/support/v7/widget/a/a;->b(I)I

    move-result v9

    if-gtz v9, :cond_3

    .line 14200
    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 14187
    :cond_a
    invoke-direct {p0, v1}, Landroid/support/v7/widget/a/a;->b(I)I

    move-result v9

    if-gtz v9, :cond_3

    .line 14190
    invoke-direct {p0, v1}, Landroid/support/v7/widget/a/a;->a(I)I

    move-result v9

    if-lez v9, :cond_9

    .line 14192
    and-int/2addr v0, v9

    if-nez v0, :cond_3

    .line 14194
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    .line 14195
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 14194
    invoke-static {v9, v0}, Landroid/support/v7/widget/a/g;->a(II)I

    move-result v9

    goto/16 :goto_1

    .line 586
    :sswitch_0
    const/4 v8, 0x0

    .line 587
    iget v0, p0, Landroid/support/v7/widget/a/a;->g:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v7, v0, v1

    .line 588
    goto/16 :goto_2

    .line 591
    :sswitch_1
    const/4 v7, 0x0

    .line 592
    iget v0, p0, Landroid/support/v7/widget/a/a;->h:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v8, v0, v1

    .line 593
    goto/16 :goto_2

    .line 600
    :cond_b
    if-lez v9, :cond_c

    .line 601
    const/4 v3, 0x2

    goto/16 :goto_3

    .line 603
    :cond_c
    const/4 v3, 0x4

    goto/16 :goto_3

    .line 644
    :cond_d
    iget-object v1, v2, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/a/a;->b(Landroid/view/View;)V

    .line 645
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->l:Landroid/support/v7/widget/a/g;

    iget-object v3, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v3, v2}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;)V

    goto/16 :goto_4

    .line 663
    :cond_e
    const/4 v0, 0x0

    goto :goto_5

    .line 581
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
        0x10 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 865
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/a/a;->b(Landroid/view/View;)V

    .line 866
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 867
    if-nez v0, :cond_1

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 870
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v7/widget/a/a;->b:Landroid/support/v7/widget/ex;

    if-ne v0, v1, :cond_2

    .line 871
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/ex;I)V

    goto :goto_0

    .line 873
    :cond_2
    invoke-virtual {p0, v0, v2}, Landroid/support/v7/widget/a/a;->a(Landroid/support/v7/widget/ex;Z)I

    .line 874
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->a:Ljava/util/List;

    iget-object v2, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 875
    iget-object v1, p0, Landroid/support/v7/widget/a/a;->l:Landroid/support/v7/widget/a/g;

    iget-object v2, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/widget/a/g;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;)V

    goto :goto_0
.end method

.method final b(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1287
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->s:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1288
    iput-object v1, p0, Landroid/support/v7/widget/a/a;->s:Landroid/view/View;

    .line 1290
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->B:Landroid/support/v7/widget/ea;

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Landroid/support/v7/widget/a/a;->p:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setChildDrawingOrderCallback(Landroid/support/v7/widget/ea;)V

    .line 1294
    :cond_0
    return-void
.end method
