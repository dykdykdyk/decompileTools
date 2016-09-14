.class public final Landroid/support/v7/widget/dy;
.super Landroid/database/Observable;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable",
        "<",
        "Landroid/support/v7/widget/dz;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10434
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 10458
    iget-object v0, p0, Landroid/support/v7/widget/dy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 10459
    iget-object v0, p0, Landroid/support/v7/widget/dy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/dz;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/dz;->a(I)V

    .line 10458
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 10461
    :cond_0
    return-void
.end method

.method public final a(II)V
    .locals 2

    .prologue
    .line 10484
    iget-object v0, p0, Landroid/support/v7/widget/dy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 10485
    iget-object v0, p0, Landroid/support/v7/widget/dy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/dz;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/dz;->a(II)V

    .line 10484
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 10487
    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 10436
    iget-object v0, p0, Landroid/support/v7/widget/dy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 10444
    iget-object v0, p0, Landroid/support/v7/widget/dy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 10445
    iget-object v0, p0, Landroid/support/v7/widget/dy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/dz;

    invoke-virtual {v0}, Landroid/support/v7/widget/dz;->a()V

    .line 10444
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 10447
    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    .prologue
    .line 10468
    iget-object v0, p0, Landroid/support/v7/widget/dy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 10469
    iget-object v0, p0, Landroid/support/v7/widget/dy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/dz;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/dz;->b(I)V

    .line 10468
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 10471
    :cond_0
    return-void
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 10478
    iget-object v0, p0, Landroid/support/v7/widget/dy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 10479
    iget-object v0, p0, Landroid/support/v7/widget/dy;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/dz;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/dz;->c(I)V

    .line 10478
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 10481
    :cond_0
    return-void
.end method
