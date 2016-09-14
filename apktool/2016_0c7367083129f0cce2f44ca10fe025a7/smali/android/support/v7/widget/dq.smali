.class final Landroid/support/v7/widget/dq;
.super Landroid/support/v7/widget/do;
.source "OrientationHelper.java"


# direct methods
.method constructor <init>(Landroid/support/v7/widget/eg;)V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/do;-><init>(Landroid/support/v7/widget/eg;B)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 395
    .line 396
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 397
    invoke-static {p1}, Landroid/support/v7/widget/eg;->f(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/ei;->topMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/eg;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/eg;->h(I)V

    .line 363
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/eg;

    invoke-virtual {v0}, Landroid/support/v7/widget/eg;->n()I

    move-result v0

    return v0
.end method

.method public final b(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 388
    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 390
    invoke-static {p1}, Landroid/support/v7/widget/eg;->h(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/ei;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/eg;

    .line 8496
    iget v0, v0, Landroid/support/v7/widget/eg;->A:I

    .line 352
    iget-object v1, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/eg;

    invoke-virtual {v1}, Landroid/support/v7/widget/eg;->p()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final c(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/dq;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 403
    iget-object v0, p0, Landroid/support/v7/widget/dq;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/eg;

    .line 9496
    iget v0, v0, Landroid/support/v7/widget/eg;->A:I

    .line 357
    return v0
.end method

.method public final d(Landroid/view/View;)I
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/eg;

    iget-object v1, p0, Landroid/support/v7/widget/dq;->c:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 409
    iget-object v0, p0, Landroid/support/v7/widget/dq;->c:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public final e()I
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/eg;

    .line 10496
    iget v0, v0, Landroid/support/v7/widget/eg;->A:I

    .line 414
    iget-object v1, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/eg;

    invoke-virtual {v1}, Landroid/support/v7/widget/eg;->n()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/eg;

    .line 415
    invoke-virtual {v1}, Landroid/support/v7/widget/eg;->p()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final e(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 372
    .line 373
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 374
    invoke-static {p1}, Landroid/support/v7/widget/eg;->d(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/ei;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/ei;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/eg;

    invoke-virtual {v0}, Landroid/support/v7/widget/eg;->p()I

    move-result v0

    return v0
.end method

.method public final f(Landroid/view/View;)I
    .locals 3

    .prologue
    .line 380
    .line 381
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    .line 382
    invoke-static {p1}, Landroid/support/v7/widget/eg;->c(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/ei;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/ei;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/eg;

    .line 11478
    iget v0, v0, Landroid/support/v7/widget/eg;->y:I

    .line 430
    return v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Landroid/support/v7/widget/dq;->a:Landroid/support/v7/widget/eg;

    .line 12460
    iget v0, v0, Landroid/support/v7/widget/eg;->x:I

    .line 435
    return v0
.end method
