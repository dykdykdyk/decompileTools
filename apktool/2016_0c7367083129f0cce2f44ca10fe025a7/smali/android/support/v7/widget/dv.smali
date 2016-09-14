.class final Landroid/support/v7/widget/dv;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/bs;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 641
    iput-object p1, p0, Landroid/support/v7/widget/dv;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Landroid/support/v7/widget/dv;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public final a(Landroid/view/View;)I
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Landroid/support/v7/widget/dv;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final a(I)V
    .locals 2

    .prologue
    .line 660
    iget-object v0, p0, Landroid/support/v7/widget/dv;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 661
    if-eqz v0, :cond_0

    .line 662
    iget-object v1, p0, Landroid/support/v7/widget/dv;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v1, v0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 664
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/dv;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->removeViewAt(I)V

    .line 665
    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 649
    iget-object v0, p0, Landroid/support/v7/widget/dv;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->addView(Landroid/view/View;I)V

    .line 650
    iget-object v0, p0, Landroid/support/v7/widget/dv;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 651
    return-void
.end method

.method public final a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    .prologue
    .line 689
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 690
    if-eqz v0, :cond_1

    .line 691
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->n()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 692
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Called attach on a child which is not detached: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 698
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->i()V

    .line 700
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/dv;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 701
    return-void
.end method

.method public final b(Landroid/view/View;)Landroid/support/v7/widget/ex;
    .locals 1

    .prologue
    .line 683
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Landroid/support/v7/widget/dv;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 674
    .line 1644
    iget-object v0, p0, Landroid/support/v7/widget/dv;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v1

    .line 675
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 676
    iget-object v2, p0, Landroid/support/v7/widget/dv;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/dv;->b(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 675
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 678
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/dv;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->removeAllViews()V

    .line 679
    return-void
.end method

.method public final c(I)V
    .locals 4

    .prologue
    .line 705
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/dv;->b(I)Landroid/view/View;

    move-result-object v0

    .line 706
    if-eqz v0, :cond_1

    .line 707
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 708
    if-eqz v0, :cond_1

    .line 709
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 710
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "called detach on an already detached child "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 716
    :cond_0
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ex;->b(I)V

    .line 719
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/dv;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;I)V

    .line 720
    return-void
.end method

.method public final c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 724
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 725
    if-eqz v0, :cond_0

    .line 726
    invoke-static {v0}, Landroid/support/v7/widget/ex;->a(Landroid/support/v7/widget/ex;)V

    .line 728
    :cond_0
    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 732
    invoke-static {p1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 733
    if-eqz v0, :cond_0

    .line 734
    invoke-static {v0}, Landroid/support/v7/widget/ex;->b(Landroid/support/v7/widget/ex;)V

    .line 736
    :cond_0
    return-void
.end method
