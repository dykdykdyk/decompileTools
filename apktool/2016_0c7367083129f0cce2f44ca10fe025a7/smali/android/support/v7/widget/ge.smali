.class final Landroid/support/v7/widget/ge;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/support/v7/view/menu/ae;


# instance fields
.field a:Landroid/support/v7/view/menu/o;

.field b:Landroid/support/v7/view/menu/s;

.field final synthetic c:Landroid/support/v7/widget/Toolbar;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/Toolbar;)V
    .locals 0

    .prologue
    .line 2283
    iput-object p1, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/Toolbar;B)V
    .locals 0

    .prologue
    .line 2283
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ge;-><init>(Landroid/support/v7/widget/Toolbar;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/support/v7/view/menu/o;)V
    .locals 2

    .prologue
    .line 2290
    iget-object v0, p0, Landroid/support/v7/widget/ge;->a:Landroid/support/v7/view/menu/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ge;->b:Landroid/support/v7/view/menu/s;

    if-eqz v0, :cond_0

    .line 2291
    iget-object v0, p0, Landroid/support/v7/widget/ge;->a:Landroid/support/v7/view/menu/o;

    iget-object v1, p0, Landroid/support/v7/widget/ge;->b:Landroid/support/v7/view/menu/s;

    invoke-virtual {v0, v1}, Landroid/support/v7/view/menu/o;->b(Landroid/support/v7/view/menu/s;)Z

    .line 2293
    :cond_0
    iput-object p2, p0, Landroid/support/v7/widget/ge;->a:Landroid/support/v7/view/menu/o;

    .line 2294
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/af;)V
    .locals 0

    .prologue
    .line 2327
    return-void
.end method

.method public final a(Landroid/support/v7/view/menu/o;Z)V
    .locals 0

    .prologue
    .line 2336
    return-void
.end method

.method public final a(Z)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 2304
    iget-object v1, p0, Landroid/support/v7/widget/ge;->b:Landroid/support/v7/view/menu/s;

    if-eqz v1, :cond_1

    .line 2307
    iget-object v1, p0, Landroid/support/v7/widget/ge;->a:Landroid/support/v7/view/menu/o;

    if-eqz v1, :cond_0

    .line 2308
    iget-object v1, p0, Landroid/support/v7/widget/ge;->a:Landroid/support/v7/view/menu/o;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/o;->size()I

    move-result v2

    move v1, v0

    .line 2309
    :goto_0
    if-ge v1, v2, :cond_0

    .line 2310
    iget-object v3, p0, Landroid/support/v7/widget/ge;->a:Landroid/support/v7/view/menu/o;

    invoke-virtual {v3, v1}, Landroid/support/v7/view/menu/o;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2311
    iget-object v4, p0, Landroid/support/v7/widget/ge;->b:Landroid/support/v7/view/menu/s;

    if-ne v3, v4, :cond_2

    .line 2312
    const/4 v0, 0x1

    .line 2318
    :cond_0
    if-nez v0, :cond_1

    .line 2320
    iget-object v0, p0, Landroid/support/v7/widget/ge;->b:Landroid/support/v7/view/menu/s;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/ge;->c(Landroid/support/v7/view/menu/s;)Z

    .line 2323
    :cond_1
    return-void

    .line 2309
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 2340
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/support/v7/view/menu/an;)Z
    .locals 1

    .prologue
    .line 2331
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/support/v7/view/menu/s;)Z
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2345
    iget-object v0, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->b(Landroid/support/v7/widget/Toolbar;)V

    .line 2346
    iget-object v0, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v0}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_0

    .line 2347
    iget-object v0, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2349
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1}, Landroid/support/v7/view/menu/s;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    .line 2350
    iput-object p1, p0, Landroid/support/v7/widget/ge;->b:Landroid/support/v7/view/menu/s;

    .line 2351
    iget-object v0, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    if-eq v0, v1, :cond_1

    .line 2352
    invoke-static {}, Landroid/support/v7/widget/Toolbar;->e()Landroid/support/v7/widget/gf;

    move-result-object v0

    .line 2353
    const v1, 0x800003

    iget-object v2, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v2}, Landroid/support/v7/widget/Toolbar;->d(Landroid/support/v7/widget/Toolbar;)I

    move-result v2

    and-int/lit8 v2, v2, 0x70

    or-int/2addr v1, v2

    iput v1, v0, Landroid/support/v7/widget/gf;->a:I

    .line 2354
    iput v5, v0, Landroid/support/v7/widget/gf;->b:I

    .line 2355
    iget-object v1, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2356
    iget-object v0, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 2359
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    .line 3113
    invoke-virtual {v2}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result v0

    .line 3115
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    .line 3116
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 3117
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/gf;

    .line 3118
    iget v0, v0, Landroid/support/v7/widget/gf;->b:I

    if-eq v0, v5, :cond_2

    iget-object v0, v2, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eq v3, v0, :cond_2

    .line 3119
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/Toolbar;->removeViewAt(I)V

    .line 3120
    iget-object v0, v2, Landroid/support/v7/widget/Toolbar;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3115
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 2360
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2361
    invoke-virtual {p1, v4}, Landroid/support/v7/view/menu/s;->d(Z)V

    .line 2363
    iget-object v0, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/view/d;

    if-eqz v0, :cond_4

    .line 2364
    iget-object v0, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    check-cast v0, Landroid/support/v7/view/d;

    invoke-interface {v0}, Landroid/support/v7/view/d;->a()V

    .line 2367
    :cond_4
    return v4
.end method

.method public final c(Landroid/support/v7/view/menu/s;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2374
    iget-object v0, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    instance-of v0, v0, Landroid/support/v7/view/d;

    if-eqz v0, :cond_0

    .line 2375
    iget-object v0, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    check-cast v0, Landroid/support/v7/view/d;

    invoke-interface {v0}, Landroid/support/v7/view/d;->b()V

    .line 2378
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2379
    iget-object v0, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    invoke-static {v1}, Landroid/support/v7/widget/Toolbar;->c(Landroid/support/v7/widget/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    .line 2380
    iget-object v0, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    iput-object v3, v0, Landroid/support/v7/widget/Toolbar;->d:Landroid/view/View;

    .line 2382
    iget-object v2, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    .line 3126
    iget-object v0, v2, Landroid/support/v7/widget/Toolbar;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3128
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 3129
    iget-object v0, v2, Landroid/support/v7/widget/Toolbar;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    .line 3128
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 3131
    :cond_1
    iget-object v0, v2, Landroid/support/v7/widget/Toolbar;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2383
    iput-object v3, p0, Landroid/support/v7/widget/ge;->b:Landroid/support/v7/view/menu/s;

    .line 2384
    iget-object v0, p0, Landroid/support/v7/widget/ge;->c:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->requestLayout()V

    .line 2385
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/view/menu/s;->d(Z)V

    .line 2387
    const/4 v0, 0x1

    return v0
.end method
