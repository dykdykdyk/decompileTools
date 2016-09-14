.class public final Landroid/support/v7/widget/eo;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ex;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ex;",
            ">;"
        }
    .end annotation
.end field

.field final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v7/widget/ex;",
            ">;"
        }
    .end annotation
.end field

.field final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v7/widget/ex;",
            ">;"
        }
    .end annotation
.end field

.field e:I

.field f:Landroid/support/v7/widget/en;

.field g:Landroid/support/v7/widget/ev;

.field final synthetic h:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 4788
    iput-object p1, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4789
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/eo;->a:Ljava/util/ArrayList;

    .line 4790
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/eo;->b:Ljava/util/ArrayList;

    .line 4792
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    .line 4794
    iget-object v0, p0, Landroid/support/v7/widget/eo;->a:Ljava/util/ArrayList;

    .line 4795
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/eo;->d:Ljava/util/List;

    .line 4797
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/v7/widget/eo;->e:I

    return-void
.end method

.method private a(JI)Landroid/support/v7/widget/ex;
    .locals 5

    .prologue
    .line 5467
    iget-object v0, p0, Landroid/support/v7/widget/eo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5468
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 5469
    iget-object v0, p0, Landroid/support/v7/widget/eo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 31568
    iget-wide v2, v0, Landroid/support/v7/widget/ex;->d:J

    .line 5470
    cmp-long v2, v2, p1

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->g()Z

    move-result v2

    if-nez v2, :cond_2

    .line 31575
    iget v2, v0, Landroid/support/v7/widget/ex;->e:I

    .line 5471
    if-ne p3, v2, :cond_1

    .line 5472
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ex;->b(I)V

    .line 5473
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5482
    iget-object v1, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 31646
    iget-boolean v1, v1, Landroid/support/v7/widget/eu;->g:Z

    .line 5482
    if-nez v1, :cond_0

    .line 5483
    const/4 v1, 0x2

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ex;->a(II)V

    .line 5514
    :cond_0
    :goto_1
    return-object v0

    .line 5492
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/eo;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5493
    iget-object v2, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5494
    iget-object v0, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/eo;->b(Landroid/view/View;)V

    .line 5468
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 5500
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5501
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-ltz v1, :cond_6

    .line 5502
    iget-object v0, p0, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 32568
    iget-wide v2, v0, Landroid/support/v7/widget/ex;->d:J

    .line 5503
    cmp-long v2, v2, p1

    if-nez v2, :cond_5

    .line 32575
    iget v2, v0, Landroid/support/v7/widget/ex;->e:I

    .line 5504
    if-ne p3, v2, :cond_4

    .line 5506
    iget-object v2, p0, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 5510
    :cond_4
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/eo;->c(I)V

    .line 5501
    :cond_5
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_2

    .line 5514
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 5136
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 5137
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5138
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 5139
    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/support/v7/widget/eo;->a(Landroid/view/ViewGroup;Z)V

    .line 5136
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 5142
    :cond_1
    if-nez p2, :cond_2

    .line 5154
    :goto_1
    return-void

    .line 5146
    :cond_2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 5147
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5148
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 5150
    :cond_3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    .line 5151
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5152
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private c(Landroid/support/v7/widget/ex;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 5286
    iget-object v0, p1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 25518
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->t(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ep;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25519
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->t(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ep;

    .line 25521
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25522
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    .line 25524
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    if-eqz v0, :cond_2

    .line 25525
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/gm;->d(Landroid/support/v7/widget/ex;)V

    .line 5288
    :cond_2
    iput-object v1, p1, Landroid/support/v7/widget/ex;->k:Landroid/support/v7/widget/RecyclerView;

    .line 5289
    invoke-virtual {p0}, Landroid/support/v7/widget/eo;->c()Landroid/support/v7/widget/en;

    move-result-object v1

    .line 26575
    iget v2, p1, Landroid/support/v7/widget/ex;->e:I

    .line 26763
    iget-object v0, v1, Landroid/support/v7/widget/en;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 26764
    if-nez v0, :cond_3

    .line 26765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26766
    iget-object v3, v1, Landroid/support/v7/widget/en;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26767
    iget-object v3, v1, Landroid/support/v7/widget/en;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_3

    .line 26768
    iget-object v3, v1, Landroid/support/v7/widget/en;->b:Landroid/util/SparseIntArray;

    const/4 v4, 0x5

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 25719
    :cond_3
    iget-object v1, v1, Landroid/support/v7/widget/en;->b:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 25725
    invoke-virtual {p1}, Landroid/support/v7/widget/ex;->q()V

    .line 25726
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5290
    :cond_4
    return-void
.end method

.method private d(I)Landroid/support/v7/widget/ex;
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x20

    const/4 v2, 0x0

    .line 5369
    iget-object v0, p0, Landroid/support/v7/widget/eo;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/eo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v0, v1

    .line 5394
    :goto_0
    return-object v0

    :cond_1
    move v3, v2

    .line 5373
    :goto_1
    if-ge v3, v4, :cond_3

    .line 5374
    iget-object v0, p0, Landroid/support/v7/widget/eo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 5375
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->g()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->c()I

    move-result v5

    if-ne v5, p1, :cond_2

    .line 5376
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ex;->b(I)V

    goto :goto_0

    .line 5373
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    .line 5381
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v0

    .line 27923
    iget-boolean v0, v0, Landroid/support/v7/widget/dx;->b:Z

    .line 5381
    if-eqz v0, :cond_5

    .line 5382
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    .line 28469
    invoke-virtual {v0, p1, v2}, Landroid/support/v7/widget/af;->a(II)I

    move-result v0

    .line 5383
    if-lez v0, :cond_5

    iget-object v3, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/dx;->b()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 5384
    iget-object v3, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/dx;->b(I)J

    move-result-wide v6

    .line 5385
    :goto_2
    if-ge v2, v4, :cond_5

    .line 5386
    iget-object v0, p0, Landroid/support/v7/widget/eo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 5387
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->g()Z

    move-result v3

    if-nez v3, :cond_4

    .line 28568
    iget-wide v8, v0, Landroid/support/v7/widget/ex;->d:J

    .line 5387
    cmp-long v3, v8, v6

    if-nez v3, :cond_4

    .line 5388
    invoke-virtual {v0, v10}, Landroid/support/v7/widget/ex;->b(I)V

    goto :goto_0

    .line 5385
    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 5394
    goto :goto_0
.end method

.method private e(I)Landroid/support/v7/widget/ex;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5407
    iget-object v0, p0, Landroid/support/v7/widget/eo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v2

    .line 5410
    :goto_0
    if-ge v3, v4, :cond_2

    .line 5411
    iget-object v0, p0, Landroid/support/v7/widget/eo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 5412
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->g()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->c()I

    move-result v5

    if-ne v5, p1, :cond_1

    .line 5413
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->j()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 29547
    iget-boolean v5, v5, Landroid/support/v7/widget/eu;->g:Z

    .line 5413
    if-nez v5, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->m()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5420
    :cond_0
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ex;->b(I)V

    .line 5462
    :goto_1
    return-object v0

    .line 5410
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 5426
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v0, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    .line 30207
    iget-object v0, v4, Landroid/support/v7/widget/bq;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    .line 30208
    :goto_2
    if-ge v3, v5, :cond_4

    .line 30209
    iget-object v0, v4, Landroid/support/v7/widget/bq;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 30210
    iget-object v6, v4, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/bs;

    invoke-interface {v6, v0}, Landroid/support/v7/widget/bs;->b(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v6

    .line 30211
    invoke-virtual {v6}, Landroid/support/v7/widget/ex;->c()I

    move-result v7

    if-ne v7, p1, :cond_3

    invoke-virtual {v6}, Landroid/support/v7/widget/ex;->j()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Landroid/support/v7/widget/ex;->m()Z

    move-result v6

    if-nez v6, :cond_3

    move-object v3, v0

    .line 5427
    :goto_3
    if-eqz v3, :cond_8

    .line 5430
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 5431
    iget-object v1, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    .line 31350
    iget-object v2, v1, Landroid/support/v7/widget/bq;->a:Landroid/support/v7/widget/bs;

    invoke-interface {v2, v3}, Landroid/support/v7/widget/bs;->a(Landroid/view/View;)I

    move-result v2

    .line 31351
    if-gez v2, :cond_5

    .line 31352
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "view is not a child, cannot hide "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30208
    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    move-object v3, v1

    .line 30216
    goto :goto_3

    .line 31354
    :cond_5
    iget-object v4, v1, Landroid/support/v7/widget/bq;->b:Landroid/support/v7/widget/br;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/br;->c(I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 31355
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trying to unhide a view that was not hidden"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31357
    :cond_6
    iget-object v4, v1, Landroid/support/v7/widget/bq;->b:Landroid/support/v7/widget/br;

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/br;->b(I)V

    .line 31358
    invoke-virtual {v1, v3}, Landroid/support/v7/widget/bq;->b(Landroid/view/View;)Z

    .line 5432
    iget-object v1, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/bq;->c(Landroid/view/View;)I

    move-result v1

    .line 5433
    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    .line 5434
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "layout index should not be -1 after unhiding a view:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5437
    :cond_7
    iget-object v2, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/bq;->d(I)V

    .line 5438
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/eo;->c(Landroid/view/View;)V

    .line 5439
    const/16 v1, 0x2020

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ex;->b(I)V

    goto/16 :goto_1

    .line 5446
    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5447
    :goto_4
    if-ge v2, v3, :cond_a

    .line 5448
    iget-object v0, p0, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 5451
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->j()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->c()I

    move-result v4

    if-ne v4, p1, :cond_9

    .line 5453
    iget-object v1, p0, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 5447
    :cond_9
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_a
    move-object v0, v1

    .line 5462
    goto/16 :goto_1
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    .prologue
    .line 4942
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v0}, Landroid/support/v7/widget/eu;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 4943
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State item count is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 4944
    invoke-virtual {v2}, Landroid/support/v7/widget/eu;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4946
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 11646
    iget-boolean v0, v0, Landroid/support/v7/widget/eu;->g:Z

    .line 4946
    if-nez v0, :cond_2

    .line 4949
    :goto_0
    return p1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/af;->b(I)I

    move-result p1

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 4810
    iget-object v0, p0, Landroid/support/v7/widget/eo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4811
    invoke-virtual {p0}, Landroid/support/v7/widget/eo;->b()V

    .line 4812
    return-void
.end method

.method final a(Landroid/support/v7/widget/ex;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 5227
    invoke-virtual {p1}, Landroid/support/v7/widget/ex;->e()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5228
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Scrapped or attached views may not be recycled. isScrap:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5230
    invoke-virtual {p1}, Landroid/support/v7/widget/ex;->e()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isAttached:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 5231
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move v0, v1

    goto :goto_0

    .line 5234
    :cond_2
    invoke-virtual {p1}, Landroid/support/v7/widget/ex;->n()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 5235
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Tmp detached view should be removed from RecyclerView before it can be recycled: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5239
    :cond_3
    invoke-virtual {p1}, Landroid/support/v7/widget/ex;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5245
    :cond_4
    invoke-static {p1}, Landroid/support/v7/widget/ex;->c(Landroid/support/v7/widget/ex;)Z

    move-result v3

    .line 5246
    iget-object v2, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    iget-object v2, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    .line 5248
    invoke-static {v2}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    .line 5255
    :cond_5
    invoke-virtual {p1}, Landroid/support/v7/widget/ex;->r()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 5256
    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/ex;->a(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 5259
    iget-object v2, p0, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 5260
    iget v4, p0, Landroid/support/v7/widget/eo;->e:I

    if-lt v2, v4, :cond_6

    if-lez v2, :cond_6

    .line 5261
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/eo;->c(I)V

    .line 5262
    add-int/lit8 v2, v2, -0x1

    .line 5264
    :cond_6
    iget v4, p0, Landroid/support/v7/widget/eo;->e:I

    if-ge v2, v4, :cond_9

    .line 5265
    iget-object v2, p0, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v0

    .line 5269
    :goto_1
    if-nez v2, :cond_8

    .line 5270
    invoke-direct {p0, p1}, Landroid/support/v7/widget/eo;->c(Landroid/support/v7/widget/ex;)V

    move v1, v0

    move v0, v2

    .line 5279
    :goto_2
    iget-object v2, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->e:Landroid/support/v7/widget/gm;

    invoke-virtual {v2, p1}, Landroid/support/v7/widget/gm;->d(Landroid/support/v7/widget/ex;)V

    .line 5280
    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-eqz v3, :cond_7

    .line 5281
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/support/v7/widget/ex;->k:Landroid/support/v7/widget/RecyclerView;

    .line 5283
    :cond_7
    return-void

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    move v2, v1

    goto :goto_1

    :cond_a
    move v0, v1

    goto :goto_2
.end method

.method public final a(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 5169
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 5170
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5171
    iget-object v1, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 5173
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5174
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->f()V

    .line 5178
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/eo;->a(Landroid/support/v7/widget/ex;)V

    .line 5179
    return-void

    .line 5175
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5176
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->h()V

    goto :goto_0
.end method

.method public final b(I)Landroid/view/View;
    .locals 12

    .prologue
    const/16 v10, 0x2000

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4967
    .line 11971
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    invoke-virtual {v0}, Landroid/support/v7/widget/eu;->a()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 11972
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 11973
    invoke-virtual {v2}, Landroid/support/v7/widget/eu;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11978
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 12646
    iget-boolean v0, v0, Landroid/support/v7/widget/eu;->g:Z

    .line 11978
    if-eqz v0, :cond_22

    .line 11979
    invoke-direct {p0, p1}, Landroid/support/v7/widget/eo;->d(I)Landroid/support/v7/widget/ex;

    move-result-object v1

    .line 11980
    if-eqz v1, :cond_5

    move v0, v2

    :goto_0
    move-object v11, v1

    move v1, v0

    move-object v0, v11

    .line 11983
    :goto_1
    if-nez v0, :cond_3

    .line 11984
    invoke-direct {p0, p1}, Landroid/support/v7/widget/eo;->e(I)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 11985
    if-eqz v0, :cond_3

    .line 12847
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->m()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 12852
    iget-object v4, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 13646
    iget-boolean v4, v4, Landroid/support/v7/widget/eu;->g:Z

    .line 11986
    :goto_2
    if-nez v4, :cond_c

    .line 11991
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ex;->b(I)V

    .line 11992
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->e()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 11993
    iget-object v4, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v6, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v4, v6, v3}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 11994
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->f()V

    .line 11998
    :cond_2
    :goto_3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/eo;->a(Landroid/support/v7/widget/ex;)V

    move-object v0, v5

    .line 12006
    :cond_3
    :goto_4
    if-nez v0, :cond_21

    .line 12007
    iget-object v4, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    invoke-virtual {v4, p1}, Landroid/support/v7/widget/af;->b(I)I

    move-result v4

    .line 12008
    if-ltz v4, :cond_4

    iget-object v6, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/dx;->b()I

    move-result v6

    if-lt v4, v6, :cond_d

    .line 12009
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Inconsistency detected. Invalid item position "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(offset:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 12011
    invoke-virtual {v2}, Landroid/support/v7/widget/eu;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move v0, v3

    .line 11980
    goto :goto_0

    .line 12854
    :cond_6
    iget v4, v0, Landroid/support/v7/widget/ex;->b:I

    if-ltz v4, :cond_7

    iget v4, v0, Landroid/support/v7/widget/ex;->b:I

    iget-object v6, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/widget/dx;->b()I

    move-result v6

    if-lt v4, v6, :cond_8

    .line 12855
    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Inconsistency detected. Invalid view holder adapter position"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 12858
    :cond_8
    iget-object v4, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, v4, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 14646
    iget-boolean v4, v4, Landroid/support/v7/widget/eu;->g:Z

    .line 12858
    if-nez v4, :cond_9

    .line 12860
    iget-object v4, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v4

    iget v6, v0, Landroid/support/v7/widget/ex;->b:I

    invoke-virtual {v4, v6}, Landroid/support/v7/widget/dx;->a(I)I

    move-result v4

    .line 15575
    iget v6, v0, Landroid/support/v7/widget/ex;->e:I

    .line 12861
    if-eq v4, v6, :cond_9

    move v4, v3

    .line 12862
    goto/16 :goto_2

    .line 12865
    :cond_9
    iget-object v4, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v4

    .line 15923
    iget-boolean v4, v4, Landroid/support/v7/widget/dx;->b:Z

    .line 12865
    if-eqz v4, :cond_a

    .line 16568
    iget-wide v6, v0, Landroid/support/v7/widget/ex;->d:J

    .line 12866
    iget-object v4, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v4

    iget v8, v0, Landroid/support/v7/widget/ex;->b:I

    invoke-virtual {v4, v8}, Landroid/support/v7/widget/dx;->b(I)J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_a

    move v4, v3

    goto/16 :goto_2

    :cond_a
    move v4, v2

    .line 12868
    goto/16 :goto_2

    .line 11995
    :cond_b
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11996
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->h()V

    goto/16 :goto_3

    :cond_c
    move v1, v2

    .line 12002
    goto/16 :goto_4

    .line 12014
    :cond_d
    iget-object v6, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v6}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/support/v7/widget/dx;->a(I)I

    move-result v6

    .line 12016
    iget-object v7, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v7}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v7

    .line 16923
    iget-boolean v7, v7, Landroid/support/v7/widget/dx;->b:Z

    .line 12016
    if-eqz v7, :cond_20

    .line 12017
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v7/widget/dx;->b(I)J

    move-result-wide v8

    invoke-direct {p0, v8, v9, v6}, Landroid/support/v7/widget/eo;->a(JI)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 12018
    if-eqz v0, :cond_20

    .line 12020
    iput v4, v0, Landroid/support/v7/widget/ex;->b:I

    move v4, v2

    .line 12024
    :goto_5
    if-nez v0, :cond_f

    iget-object v1, p0, Landroid/support/v7/widget/eo;->g:Landroid/support/v7/widget/ev;

    if-eqz v1, :cond_f

    .line 12027
    iget-object v1, p0, Landroid/support/v7/widget/eo;->g:Landroid/support/v7/widget/ev;

    .line 12028
    invoke-virtual {v1}, Landroid/support/v7/widget/ev;->a()Landroid/view/View;

    move-result-object v1

    .line 12029
    if-eqz v1, :cond_f

    .line 12030
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 12031
    if-nez v0, :cond_e

    .line 12032
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view which does not have a ViewHolder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12034
    :cond_e
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->b()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 12035
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getViewForPositionAndType returned a view that is ignored. You must call stopIgnoring before returning this view."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12041
    :cond_f
    if-nez v0, :cond_11

    .line 12048
    invoke-virtual {p0}, Landroid/support/v7/widget/eo;->c()Landroid/support/v7/widget/en;

    move-result-object v0

    .line 17695
    iget-object v0, v0, Landroid/support/v7/widget/en;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 17696
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 17697
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v5, v1, -0x1

    .line 17698
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ex;

    .line 17699
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 12049
    :goto_6
    if-eqz v1, :cond_10

    .line 12050
    invoke-virtual {v1}, Landroid/support/v7/widget/ex;->q()V

    .line 12051
    invoke-static {}, Landroid/support/v7/widget/RecyclerView;->j()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 18130
    iget-object v0, v1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    .line 18131
    iget-object v0, v1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0, v3}, Landroid/support/v7/widget/eo;->a(Landroid/view/ViewGroup;Z)V

    :cond_10
    move-object v0, v1

    .line 12056
    :cond_11
    if-nez v0, :cond_1f

    .line 12057
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    .line 18832
    const-string v5, "RV CreateView"

    invoke-static {v5}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 18833
    invoke-virtual {v0, v1, v6}, Landroid/support/v7/widget/dx;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 18834
    iput v6, v0, Landroid/support/v7/widget/ex;->e:I

    .line 18835
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    move v5, v4

    move-object v4, v0

    .line 12067
    :goto_7
    if-eqz v5, :cond_12

    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 19646
    iget-boolean v0, v0, Landroid/support/v7/widget/eu;->g:Z

    .line 12067
    if-nez v0, :cond_12

    .line 12068
    invoke-virtual {v4, v10}, Landroid/support/v7/widget/ex;->a(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 12069
    invoke-virtual {v4, v3, v10}, Landroid/support/v7/widget/ex;->a(II)V

    .line 12070
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 20547
    iget-boolean v0, v0, Landroid/support/v7/widget/eu;->h:Z

    .line 12070
    if-eqz v0, :cond_12

    .line 12072
    invoke-static {v4}, Landroid/support/v7/widget/eb;->d(Landroid/support/v7/widget/ex;)I

    .line 12074
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 12075
    invoke-virtual {v4}, Landroid/support/v7/widget/ex;->p()Ljava/util/List;

    .line 21486
    new-instance v0, Landroid/support/v7/widget/ed;

    invoke-direct {v0}, Landroid/support/v7/widget/ed;-><init>()V

    .line 21042
    invoke-virtual {v0, v4}, Landroid/support/v7/widget/ed;->a(Landroid/support/v7/widget/ex;)Landroid/support/v7/widget/ed;

    move-result-object v0

    .line 12076
    iget-object v1, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v4, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;)V

    .line 12081
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 21646
    iget-boolean v0, v0, Landroid/support/v7/widget/eu;->g:Z

    .line 12081
    if-eqz v0, :cond_14

    invoke-virtual {v4}, Landroid/support/v7/widget/ex;->l()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 12083
    iput p1, v4, Landroid/support/v7/widget/ex;->f:I

    move v1, v3

    .line 12099
    :goto_8
    iget-object v0, v4, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 12101
    if-nez v0, :cond_1b

    .line 12102
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 12103
    iget-object v6, v4, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12110
    :goto_9
    iput-object v4, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    .line 12111
    if-eqz v5, :cond_1d

    if-eqz v1, :cond_1d

    :goto_a
    iput-boolean v2, v0, Landroid/support/v7/widget/ei;->f:Z

    .line 12112
    iget-object v0, v4, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 4967
    return-object v0

    :cond_13
    move-object v1, v5

    .line 17702
    goto/16 :goto_6

    .line 12084
    :cond_14
    invoke-virtual {v4}, Landroid/support/v7/widget/ex;->l()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v4}, Landroid/support/v7/widget/ex;->k()Z

    move-result v0

    if-nez v0, :cond_15

    invoke-virtual {v4}, Landroid/support/v7/widget/ex;->j()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 12089
    :cond_15
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/af;->b(I)I

    move-result v0

    .line 12090
    iget-object v1, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iput-object v1, v4, Landroid/support/v7/widget/ex;->k:Landroid/support/v7/widget/RecyclerView;

    .line 12091
    iget-object v1, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v1

    .line 21847
    iput v0, v4, Landroid/support/v7/widget/ex;->b:I

    .line 21923
    iget-boolean v6, v1, Landroid/support/v7/widget/dx;->b:Z

    .line 21848
    if-eqz v6, :cond_16

    .line 21849
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/dx;->b(I)J

    move-result-wide v6

    iput-wide v6, v4, Landroid/support/v7/widget/ex;->d:J

    .line 21851
    :cond_16
    const/16 v6, 0x207

    invoke-virtual {v4, v2, v6}, Landroid/support/v7/widget/ex;->a(II)V

    .line 21854
    const-string v6, "RV OnBindView"

    invoke-static {v6}, Landroid/support/v4/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 21855
    invoke-virtual {v4}, Landroid/support/v7/widget/ex;->p()Ljava/util/List;

    .line 22822
    invoke-virtual {v1, v4, v0}, Landroid/support/v7/widget/dx;->a(Landroid/support/v7/widget/ex;I)V

    .line 21856
    invoke-virtual {v4}, Landroid/support/v7/widget/ex;->o()V

    .line 21857
    iget-object v0, v4, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 21858
    instance-of v1, v0, Landroid/support/v7/widget/ei;

    if-eqz v1, :cond_17

    .line 21859
    check-cast v0, Landroid/support/v7/widget/ei;

    iput-boolean v2, v0, Landroid/support/v7/widget/ei;->e:Z

    .line 21861
    :cond_17
    invoke-static {}, Landroid/support/v4/os/TraceCompat;->endSection()V

    .line 12092
    iget-object v0, v4, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    .line 23116
    iget-object v1, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->f()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 23117
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_18

    .line 23119
    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 23122
    :cond_18
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->hasAccessibilityDelegate(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 23123
    iget-object v1, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    .line 23124
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->s(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ey;

    move-result-object v1

    .line 24081
    iget-object v1, v1, Landroid/support/v7/widget/ey;->b:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 23123
    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 12094
    :cond_19
    iget-object v0, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 24646
    iget-boolean v0, v0, Landroid/support/v7/widget/eu;->g:Z

    .line 12094
    if-eqz v0, :cond_1a

    .line 12095
    iput p1, v4, Landroid/support/v7/widget/ex;->f:I

    :cond_1a
    move v1, v2

    goto/16 :goto_8

    .line 12104
    :cond_1b
    iget-object v6, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_1c

    .line 12105
    iget-object v6, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 12106
    iget-object v6, v4, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_9

    .line 12108
    :cond_1c
    check-cast v0, Landroid/support/v7/widget/ei;

    goto/16 :goto_9

    :cond_1d
    move v2, v3

    .line 12111
    goto/16 :goto_a

    :cond_1e
    move v1, v3

    goto/16 :goto_8

    :cond_1f
    move v5, v4

    move-object v4, v0

    goto/16 :goto_7

    :cond_20
    move v4, v1

    goto/16 :goto_5

    :cond_21
    move-object v4, v0

    move v5, v1

    goto/16 :goto_7

    :cond_22
    move-object v0, v5

    move v1, v3

    goto/16 :goto_1
.end method

.method final b()V
    .locals 1

    .prologue
    .line 5191
    iget-object v0, p0, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5192
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 5193
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/eo;->c(I)V

    .line 5192
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5195
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5196
    return-void
.end method

.method final b(Landroid/support/v7/widget/ex;)V
    .locals 1

    .prologue
    .line 5341
    invoke-static {p1}, Landroid/support/v7/widget/ex;->f(Landroid/support/v7/widget/ex;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5342
    iget-object v0, p0, Landroid/support/v7/widget/eo;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5346
    :goto_0
    invoke-static {p1}, Landroid/support/v7/widget/ex;->d(Landroid/support/v7/widget/ex;)Landroid/support/v7/widget/eo;

    .line 5347
    invoke-static {p1}, Landroid/support/v7/widget/ex;->e(Landroid/support/v7/widget/ex;)Z

    .line 5348
    invoke-virtual {p1}, Landroid/support/v7/widget/ex;->h()V

    .line 5349
    return-void

    .line 5344
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/eo;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 5298
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 5299
    invoke-static {v0}, Landroid/support/v7/widget/ex;->d(Landroid/support/v7/widget/ex;)Landroid/support/v7/widget/eo;

    .line 5300
    invoke-static {v0}, Landroid/support/v7/widget/ex;->e(Landroid/support/v7/widget/ex;)Z

    .line 5301
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->h()V

    .line 5302
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/eo;->a(Landroid/support/v7/widget/ex;)V

    .line 5303
    return-void
.end method

.method final c()Landroid/support/v7/widget/en;
    .locals 1

    .prologue
    .line 5622
    iget-object v0, p0, Landroid/support/v7/widget/eo;->f:Landroid/support/v7/widget/en;

    if-nez v0, :cond_0

    .line 5623
    new-instance v0, Landroid/support/v7/widget/en;

    invoke-direct {v0}, Landroid/support/v7/widget/en;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/eo;->f:Landroid/support/v7/widget/en;

    .line 5625
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/eo;->f:Landroid/support/v7/widget/en;

    return-object v0
.end method

.method final c(I)V
    .locals 1

    .prologue
    .line 5213
    iget-object v0, p0, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 5217
    invoke-direct {p0, v0}, Landroid/support/v7/widget/eo;->c(Landroid/support/v7/widget/ex;)V

    .line 5218
    iget-object v0, p0, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5219
    return-void
.end method

.method final c(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 5315
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 5316
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ex;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5317
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5318
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->m()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v7/widget/eo;->h:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/dx;

    move-result-object v1

    .line 26923
    iget-boolean v1, v1, Landroid/support/v7/widget/dx;->b:Z

    .line 5318
    if-nez v1, :cond_1

    .line 5319
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5323
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/ex;->a(Landroid/support/v7/widget/eo;Z)V

    .line 5324
    iget-object v1, p0, Landroid/support/v7/widget/eo;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5332
    :goto_0
    return-void

    .line 5326
    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/eo;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 5327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/eo;->b:Ljava/util/ArrayList;

    .line 5329
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/support/v7/widget/ex;->a(Landroid/support/v7/widget/eo;Z)V

    .line 5330
    iget-object v1, p0, Landroid/support/v7/widget/eo;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
