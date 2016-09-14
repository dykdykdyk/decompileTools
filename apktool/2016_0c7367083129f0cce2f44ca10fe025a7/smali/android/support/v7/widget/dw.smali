.class final Landroid/support/v7/widget/dw;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/ag;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 741
    iput-object p1, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Landroid/support/v7/widget/ah;)V
    .locals 3

    .prologue
    .line 784
    iget v0, p1, Landroid/support/v7/widget/ah;->a:I

    packed-switch v0, :pswitch_data_0

    .line 799
    :goto_0
    :pswitch_0
    return-void

    .line 786
    :pswitch_1
    iget-object v0, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget v1, p1, Landroid/support/v7/widget/ah;->b:I

    iget v2, p1, Landroid/support/v7/widget/ah;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/eg;->a(II)V

    goto :goto_0

    .line 789
    :pswitch_2
    iget-object v0, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget v1, p1, Landroid/support/v7/widget/ah;->b:I

    iget v2, p1, Landroid/support/v7/widget/ah;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/eg;->b(II)V

    goto :goto_0

    .line 792
    :pswitch_3
    iget-object v0, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget v1, p1, Landroid/support/v7/widget/ah;->b:I

    iget v2, p1, Landroid/support/v7/widget/ah;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/eg;->c(II)V

    goto :goto_0

    .line 796
    :pswitch_4
    iget-object v0, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget v1, p1, Landroid/support/v7/widget/ah;->b:I

    iget v2, p1, Landroid/support/v7/widget/ah;->d:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/eg;->d(II)V

    goto :goto_0

    .line 784
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final a(I)Landroid/support/v7/widget/ex;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 744
    iget-object v4, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 11101
    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0}, Landroid/support/v7/widget/bq;->b()I

    move-result v5

    .line 11103
    const/4 v0, 0x0

    move v3, v0

    move-object v1, v2

    :goto_0
    if-ge v3, v5, :cond_0

    .line 11104
    iget-object v0, v4, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/bq;->c(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v0

    .line 11105
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->m()Z

    move-result v6

    if-nez v6, :cond_4

    .line 11107
    iget v6, v0, Landroid/support/v7/widget/ex;->b:I

    if-ne v6, p1, :cond_4

    .line 11113
    iget-object v1, v4, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    iget-object v6, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/bq;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11103
    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 745
    :cond_1
    if-nez v0, :cond_3

    move-object v0, v2

    .line 756
    :cond_2
    :goto_2
    return-object v0

    .line 750
    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    iget-object v3, v0, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/bq;->d(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    .line 754
    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method public final a(II)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 761
    iget-object v0, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    .line 762
    iget-object v0, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->u:Z

    .line 763
    iget-object v0, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 11547
    iget v1, v0, Landroid/support/v7/widget/eu;->e:I

    .line 763
    add-int/2addr v1, p2

    .line 12547
    iput v1, v0, Landroid/support/v7/widget/eu;->e:I

    .line 764
    return-void
.end method

.method public final a(IILjava/lang/Object;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 774
    iget-object v2, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 12816
    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0}, Landroid/support/v7/widget/bq;->b()I

    move-result v3

    .line 12817
    add-int v4, p1, p2

    .line 12819
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 12820
    iget-object v0, v2, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/bq;->c(I)Landroid/view/View;

    move-result-object v0

    .line 12821
    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v5

    .line 12822
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/support/v7/widget/ex;->b()Z

    move-result v6

    if-nez v6, :cond_0

    .line 12825
    iget v6, v5, Landroid/support/v7/widget/ex;->b:I

    if-lt v6, p1, :cond_0

    iget v6, v5, Landroid/support/v7/widget/ex;->b:I

    if-ge v6, v4, :cond_0

    .line 12828
    invoke-virtual {v5, v8}, Landroid/support/v7/widget/ex;->b(I)V

    .line 12829
    invoke-virtual {v5, p3}, Landroid/support/v7/widget/ex;->a(Ljava/lang/Object;)V

    .line 12831
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ei;

    iput-boolean v7, v0, Landroid/support/v7/widget/ei;->e:Z

    .line 12819
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 12834
    :cond_1
    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    .line 13629
    add-int v3, p1, p2

    .line 13630
    iget-object v0, v2, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 13631
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_3

    .line 13632
    iget-object v0, v2, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 13633
    if-eqz v0, :cond_2

    .line 13637
    invoke-virtual {v0}, Landroid/support/v7/widget/ex;->c()I

    move-result v4

    .line 13638
    if-lt v4, p1, :cond_2

    if-ge v4, v3, :cond_2

    .line 13639
    invoke-virtual {v0, v8}, Landroid/support/v7/widget/ex;->b(I)V

    .line 13640
    invoke-virtual {v2, v1}, Landroid/support/v7/widget/eo;->c(I)V

    .line 13631
    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_1

    .line 775
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v7, v0, Landroid/support/v7/widget/RecyclerView;->v:Z

    .line 776
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ah;)V
    .locals 0

    .prologue
    .line 780
    invoke-direct {p0, p1}, Landroid/support/v7/widget/dw;->c(Landroid/support/v7/widget/ah;)V

    .line 781
    return-void
.end method

.method public final b(II)V
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/widget/RecyclerView;->a(IIZ)V

    .line 769
    iget-object v0, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->u:Z

    .line 770
    return-void
.end method

.method public final b(Landroid/support/v7/widget/ah;)V
    .locals 0

    .prologue
    .line 803
    invoke-direct {p0, p1}, Landroid/support/v7/widget/dw;->c(Landroid/support/v7/widget/ah;)V

    .line 804
    return-void
.end method

.method public final c(II)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 808
    iget-object v2, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 13763
    iget-object v1, v2, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v1}, Landroid/support/v7/widget/bq;->b()I

    move-result v3

    move v1, v0

    .line 13764
    :goto_0
    if-ge v1, v3, :cond_1

    .line 13765
    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v4, v1}, Landroid/support/v7/widget/bq;->c(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v4

    .line 13766
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/support/v7/widget/ex;->b()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, v4, Landroid/support/v7/widget/ex;->b:I

    if-lt v5, p1, :cond_0

    .line 13771
    invoke-virtual {v4, p2, v0}, Landroid/support/v7/widget/ex;->a(IZ)V

    .line 13772
    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 14547
    iput-boolean v6, v4, Landroid/support/v7/widget/eu;->f:Z

    .line 13764
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13775
    :cond_1
    iget-object v3, v2, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    .line 14566
    iget-object v1, v3, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v0

    .line 14567
    :goto_1
    if-ge v1, v4, :cond_3

    .line 14568
    iget-object v0, v3, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 14569
    if-eqz v0, :cond_2

    iget v5, v0, Landroid/support/v7/widget/ex;->b:I

    if-lt v5, p1, :cond_2

    .line 14574
    invoke-virtual {v0, p2, v6}, Landroid/support/v7/widget/ex;->a(IZ)V

    .line 14567
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 13776
    :cond_3
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 809
    iget-object v0, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v6, v0, Landroid/support/v7/widget/RecyclerView;->u:Z

    .line 810
    return-void
.end method

.method public final d(II)V
    .locals 11

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 814
    iget-object v7, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    .line 14729
    iget-object v0, v7, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v0}, Landroid/support/v7/widget/bq;->b()I

    move-result v8

    .line 14731
    if-ge p1, p2, :cond_1

    move v0, v1

    move v3, p2

    move v4, p1

    :goto_0
    move v5, v6

    .line 14741
    :goto_1
    if-ge v5, v8, :cond_3

    .line 14742
    iget-object v9, v7, Landroid/support/v7/widget/RecyclerView;->d:Landroid/support/v7/widget/bq;

    invoke-virtual {v9, v5}, Landroid/support/v7/widget/bq;->c(I)Landroid/view/View;

    move-result-object v9

    invoke-static {v9}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Landroid/support/v7/widget/ex;

    move-result-object v9

    .line 14743
    if-eqz v9, :cond_0

    iget v10, v9, Landroid/support/v7/widget/ex;->b:I

    if-lt v10, v4, :cond_0

    iget v10, v9, Landroid/support/v7/widget/ex;->b:I

    if-gt v10, v3, :cond_0

    .line 14750
    iget v10, v9, Landroid/support/v7/widget/ex;->b:I

    if-ne v10, p1, :cond_2

    .line 14751
    sub-int v10, p2, p1

    invoke-virtual {v9, v10, v6}, Landroid/support/v7/widget/ex;->a(IZ)V

    .line 14756
    :goto_2
    iget-object v9, v7, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 15547
    iput-boolean v2, v9, Landroid/support/v7/widget/eu;->f:Z

    .line 14741
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    move v3, p1

    move v4, p2

    .line 14738
    goto :goto_0

    .line 14753
    :cond_2
    invoke-virtual {v9, v0, v6}, Landroid/support/v7/widget/ex;->a(IZ)V

    goto :goto_2

    .line 14758
    :cond_3
    iget-object v8, v7, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    .line 16538
    if-ge p1, p2, :cond_5

    move v3, p2

    move v4, p1

    .line 16547
    :goto_3
    iget-object v0, v8, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v5, v6

    .line 16548
    :goto_4
    if-ge v5, v9, :cond_7

    .line 16549
    iget-object v0, v8, Landroid/support/v7/widget/eo;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/ex;

    .line 16550
    if-eqz v0, :cond_4

    iget v10, v0, Landroid/support/v7/widget/ex;->b:I

    if-lt v10, v4, :cond_4

    iget v10, v0, Landroid/support/v7/widget/ex;->b:I

    if-gt v10, v3, :cond_4

    .line 16553
    iget v10, v0, Landroid/support/v7/widget/ex;->b:I

    if-ne v10, p1, :cond_6

    .line 16554
    sub-int v10, p2, p1

    invoke-virtual {v0, v10, v6}, Landroid/support/v7/widget/ex;->a(IZ)V

    .line 16548
    :cond_4
    :goto_5
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_4

    :cond_5
    move v1, v2

    move v3, p1

    move v4, p2

    .line 16545
    goto :goto_3

    .line 16556
    :cond_6
    invoke-virtual {v0, v1, v6}, Landroid/support/v7/widget/ex;->a(IZ)V

    goto :goto_5

    .line 14759
    :cond_7
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->requestLayout()V

    .line 816
    iget-object v0, p0, Landroid/support/v7/widget/dw;->a:Landroid/support/v7/widget/RecyclerView;

    iput-boolean v2, v0, Landroid/support/v7/widget/RecyclerView;->u:Z

    .line 817
    return-void
.end method
