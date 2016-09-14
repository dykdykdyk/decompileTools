.class public final Landroid/support/v7/widget/et;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# instance fields
.field a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Landroid/view/animation/Interpolator;

.field private f:Z

.field private g:I


# direct methods
.method static synthetic a(Landroid/support/v7/widget/et;Landroid/support/v7/widget/RecyclerView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 10235
    .line 11310
    iget v0, p0, Landroid/support/v7/widget/et;->a:I

    if-ltz v0, :cond_0

    .line 11311
    iget v0, p0, Landroid/support/v7/widget/et;->a:I

    .line 11312
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v7/widget/et;->a:I

    .line 11313
    invoke-static {p1, v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;I)V

    .line 11314
    iput-boolean v5, p0, Landroid/support/v7/widget/et;->f:Z

    .line 11335
    :goto_0
    return-void

    .line 11317
    :cond_0
    iget-boolean v0, p0, Landroid/support/v7/widget/et;->f:Z

    if-eqz v0, :cond_6

    .line 11342
    iget-object v0, p0, Landroid/support/v7/widget/et;->e:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/support/v7/widget/et;->d:I

    if-gtz v0, :cond_1

    .line 11343
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11345
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/et;->d:I

    if-gtz v0, :cond_2

    .line 11346
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11319
    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/et;->e:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_5

    .line 11320
    iget v0, p0, Landroid/support/v7/widget/et;->d:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_4

    .line 11321
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->x(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ew;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/et;->b:I

    iget v2, p0, Landroid/support/v7/widget/et;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ew;->a(II)V

    .line 11328
    :goto_1
    iget v0, p0, Landroid/support/v7/widget/et;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v7/widget/et;->g:I

    .line 11329
    iget v0, p0, Landroid/support/v7/widget/et;->g:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    .line 11332
    const-string v0, "RecyclerView"

    const-string v1, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11335
    :cond_3
    iput-boolean v5, p0, Landroid/support/v7/widget/et;->f:Z

    goto :goto_0

    .line 11323
    :cond_4
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->x(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ew;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/et;->b:I

    iget v2, p0, Landroid/support/v7/widget/et;->c:I

    iget v3, p0, Landroid/support/v7/widget/et;->d:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v7/widget/ew;->a(III)V

    goto :goto_1

    .line 11326
    :cond_5
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->x(Landroid/support/v7/widget/RecyclerView;)Landroid/support/v7/widget/ew;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/et;->b:I

    iget v2, p0, Landroid/support/v7/widget/et;->c:I

    iget v3, p0, Landroid/support/v7/widget/et;->d:I

    iget-object v4, p0, Landroid/support/v7/widget/et;->e:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/ew;->a(IIILandroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 11337
    :cond_6
    iput v5, p0, Landroid/support/v7/widget/et;->g:I

    goto :goto_0
.end method
