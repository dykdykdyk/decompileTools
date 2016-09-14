.class final Landroid/support/v7/widget/ft;
.super Ljava/lang/Object;
.source "StaggeredGridLayoutManager.java"


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field b:I

.field c:I

.field d:I

.field final e:I

.field final synthetic f:Landroid/support/v7/widget/StaggeredGridLayoutManager;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 2365
    iput-object p1, p0, Landroid/support/v7/widget/ft;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    .line 2360
    iput v1, p0, Landroid/support/v7/widget/ft;->b:I

    .line 2361
    iput v1, p0, Landroid/support/v7/widget/ft;->c:I

    .line 2362
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ft;->d:I

    .line 2366
    iput p2, p0, Landroid/support/v7/widget/ft;->e:I

    .line 2367
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;IB)V
    .locals 0

    .prologue
    .line 2356
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/ft;-><init>(Landroid/support/v7/widget/StaggeredGridLayoutManager;I)V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 2381
    iget-object v0, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 10531
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/fq;

    .line 2383
    iget-object v2, p0, Landroid/support/v7/widget/ft;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/do;->a(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ft;->b:I

    .line 2384
    iget-boolean v0, v1, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v0, :cond_0

    .line 2385
    iget-object v0, p0, Landroid/support/v7/widget/ft;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 10948
    iget-object v1, v1, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v1}, Landroid/support/v7/widget/ex;->c()I

    move-result v1

    .line 2386
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2387
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 2388
    iget v1, p0, Landroid/support/v7/widget/ft;->b:I

    iget v2, p0, Landroid/support/v7/widget/ft;->e:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a(I)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/ft;->b:I

    .line 2391
    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 2415
    iget-object v0, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 11531
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/fq;

    .line 2417
    iget-object v2, p0, Landroid/support/v7/widget/ft;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/do;->b(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ft;->c:I

    .line 2418
    iget-boolean v0, v1, Landroid/support/v7/widget/fq;->b:Z

    if-eqz v0, :cond_0

    .line 2419
    iget-object v0, p0, Landroid/support/v7/widget/ft;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v0, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;

    .line 11948
    iget-object v1, v1, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v1}, Landroid/support/v7/widget/ex;->c()I

    move-result v1

    .line 2420
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup;->d(I)Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;

    move-result-object v0

    .line 2421
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2422
    iget v1, p0, Landroid/support/v7/widget/ft;->c:I

    iget v2, p0, Landroid/support/v7/widget/ft;->e:I

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/StaggeredGridLayoutManager$LazySpanLookup$FullSpanItem;->a(I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/ft;->c:I

    .line 2425
    :cond_0
    return-void
.end method


# virtual methods
.method final a()I
    .locals 2

    .prologue
    .line 2395
    iget v0, p0, Landroid/support/v7/widget/ft;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2396
    iget v0, p0, Landroid/support/v7/widget/ft;->b:I

    .line 2399
    :goto_0
    return v0

    .line 2398
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/ft;->f()V

    .line 2399
    iget v0, p0, Landroid/support/v7/widget/ft;->b:I

    goto :goto_0
.end method

.method final a(I)I
    .locals 2

    .prologue
    .line 2370
    iget v0, p0, Landroid/support/v7/widget/ft;->b:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 2371
    iget p1, p0, Landroid/support/v7/widget/ft;->b:I

    .line 2377
    :cond_0
    :goto_0
    return p1

    .line 2373
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2376
    invoke-direct {p0}, Landroid/support/v7/widget/ft;->f()V

    .line 2377
    iget p1, p0, Landroid/support/v7/widget/ft;->b:I

    goto :goto_0
.end method

.method public final a(II)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2592
    const/4 v4, 0x0

    .line 2593
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 2594
    iget-object v0, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v5, v3

    .line 2595
    :goto_0
    if-ge v5, v6, :cond_1

    .line 2596
    iget-object v0, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2597
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2598
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    if-le v1, p1, :cond_0

    move v1, v2

    :goto_1
    iget-object v7, p0, Landroid/support/v7/widget/ft;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v7

    if-ne v1, v7, :cond_1

    .line 2595
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move-object v4, v0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2598
    goto :goto_1

    :cond_1
    move-object v0, v4

    .line 2615
    :goto_2
    return-object v0

    .line 2605
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_3
    if-ltz v6, :cond_5

    .line 2606
    iget-object v0, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2607
    invoke-virtual {v0}, Landroid/view/View;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2608
    invoke-static {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a(Landroid/view/View;)I

    move-result v1

    if-le v1, p1, :cond_3

    move v1, v2

    :goto_4
    iget-object v5, p0, Landroid/support/v7/widget/ft;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    invoke-static {v5}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->b(Landroid/support/v7/widget/StaggeredGridLayoutManager;)Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v2

    :goto_5
    if-ne v1, v5, :cond_5

    .line 2605
    add-int/lit8 v1, v6, -0x1

    move-object v4, v0

    move v6, v1

    goto :goto_3

    :cond_3
    move v1, v3

    .line 2608
    goto :goto_4

    :cond_4
    move v5, v3

    goto :goto_5

    :cond_5
    move-object v0, v4

    goto :goto_2
.end method

.method final a(Landroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 2437
    .line 12531
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fq;

    .line 2438
    iput-object p0, v0, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    .line 2439
    iget-object v1, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2440
    iput v3, p0, Landroid/support/v7/widget/ft;->b:I

    .line 2441
    iget-object v1, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2442
    iput v3, p0, Landroid/support/v7/widget/ft;->c:I

    .line 12919
    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v1}, Landroid/support/v7/widget/ex;->m()Z

    move-result v1

    .line 2444
    if-nez v1, :cond_1

    .line 12930
    iget-object v0, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->s()Z

    move-result v0

    .line 2444
    if-eqz v0, :cond_2

    .line 2445
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/ft;->d:I

    iget-object v1, p0, Landroid/support/v7/widget/ft;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/ft;->d:I

    .line 2447
    :cond_2
    return-void
.end method

.method final b()I
    .locals 2

    .prologue
    .line 2429
    iget v0, p0, Landroid/support/v7/widget/ft;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 2430
    iget v0, p0, Landroid/support/v7/widget/ft;->c:I

    .line 2433
    :goto_0
    return v0

    .line 2432
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/ft;->g()V

    .line 2433
    iget v0, p0, Landroid/support/v7/widget/ft;->c:I

    goto :goto_0
.end method

.method final b(I)I
    .locals 2

    .prologue
    .line 2403
    iget v0, p0, Landroid/support/v7/widget/ft;->c:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    .line 2404
    iget p1, p0, Landroid/support/v7/widget/ft;->c:I

    .line 2411
    :cond_0
    :goto_0
    return p1

    .line 2406
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2407
    if-eqz v0, :cond_0

    .line 2410
    invoke-direct {p0}, Landroid/support/v7/widget/ft;->g()V

    .line 2411
    iget p1, p0, Landroid/support/v7/widget/ft;->c:I

    goto :goto_0
.end method

.method final b(Landroid/view/View;)V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 2450
    .line 13531
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/fq;

    .line 2451
    iput-object p0, v0, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    .line 2452
    iget-object v1, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2453
    iput v3, p0, Landroid/support/v7/widget/ft;->c:I

    .line 2454
    iget-object v1, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2455
    iput v3, p0, Landroid/support/v7/widget/ft;->b:I

    .line 13919
    :cond_0
    iget-object v1, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v1}, Landroid/support/v7/widget/ex;->m()Z

    move-result v1

    .line 2457
    if-nez v1, :cond_1

    .line 13930
    iget-object v0, v0, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->s()Z

    move-result v0

    .line 2457
    if-eqz v0, :cond_2

    .line 2458
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/ft;->d:I

    iget-object v1, p0, Landroid/support/v7/widget/ft;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v1, v1, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/ft;->d:I

    .line 2460
    :cond_2
    return-void
.end method

.method final c()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 2485
    iget-object v0, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14491
    iput v1, p0, Landroid/support/v7/widget/ft;->b:I

    .line 14492
    iput v1, p0, Landroid/support/v7/widget/ft;->c:I

    .line 2487
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ft;->d:I

    .line 2488
    return-void
.end method

.method final c(I)V
    .locals 0

    .prologue
    .line 2496
    iput p1, p0, Landroid/support/v7/widget/ft;->b:I

    iput p1, p0, Landroid/support/v7/widget/ft;->c:I

    .line 2497
    return-void
.end method

.method final d()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 2500
    iget-object v0, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2501
    iget-object v0, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    add-int/lit8 v1, v2, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 14531
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/fq;

    .line 2503
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    .line 14919
    iget-object v3, v1, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v3}, Landroid/support/v7/widget/ex;->m()Z

    move-result v3

    .line 2504
    if-nez v3, :cond_0

    .line 14930
    iget-object v1, v1, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v1}, Landroid/support/v7/widget/ex;->s()Z

    move-result v1

    .line 2504
    if-eqz v1, :cond_1

    .line 2505
    :cond_0
    iget v1, p0, Landroid/support/v7/widget/ft;->d:I

    iget-object v3, p0, Landroid/support/v7/widget/ft;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v3, v3, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v3, v0}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/ft;->d:I

    .line 2507
    :cond_1
    const/4 v0, 0x1

    if-ne v2, v0, :cond_2

    .line 2508
    iput v4, p0, Landroid/support/v7/widget/ft;->b:I

    .line 2510
    :cond_2
    iput v4, p0, Landroid/support/v7/widget/ft;->c:I

    .line 2511
    return-void
.end method

.method final d(I)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 2535
    iget v0, p0, Landroid/support/v7/widget/ft;->b:I

    if-eq v0, v1, :cond_0

    .line 2536
    iget v0, p0, Landroid/support/v7/widget/ft;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/ft;->b:I

    .line 2538
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ft;->c:I

    if-eq v0, v1, :cond_1

    .line 2539
    iget v0, p0, Landroid/support/v7/widget/ft;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/ft;->c:I

    .line 2541
    :cond_1
    return-void
.end method

.method final e()V
    .locals 4

    .prologue
    const/high16 v3, -0x80000000

    .line 2514
    iget-object v0, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 15531
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/fq;

    .line 2516
    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v7/widget/fq;->a:Landroid/support/v7/widget/ft;

    .line 2517
    iget-object v2, p0, Landroid/support/v7/widget/ft;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 2518
    iput v3, p0, Landroid/support/v7/widget/ft;->c:I

    .line 15919
    :cond_0
    iget-object v2, v1, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v2}, Landroid/support/v7/widget/ex;->m()Z

    move-result v2

    .line 2520
    if-nez v2, :cond_1

    .line 15930
    iget-object v1, v1, Landroid/support/v7/widget/ei;->c:Landroid/support/v7/widget/ex;

    invoke-virtual {v1}, Landroid/support/v7/widget/ex;->s()Z

    move-result v1

    .line 2520
    if-eqz v1, :cond_2

    .line 2521
    :cond_1
    iget v1, p0, Landroid/support/v7/widget/ft;->d:I

    iget-object v2, p0, Landroid/support/v7/widget/ft;->f:Landroid/support/v7/widget/StaggeredGridLayoutManager;

    iget-object v2, v2, Landroid/support/v7/widget/StaggeredGridLayoutManager;->a:Landroid/support/v7/widget/do;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/do;->e(Landroid/view/View;)I

    move-result v0

    sub-int v0, v1, v0

    iput v0, p0, Landroid/support/v7/widget/ft;->d:I

    .line 2523
    :cond_2
    iput v3, p0, Landroid/support/v7/widget/ft;->b:I

    .line 2524
    return-void
.end method
