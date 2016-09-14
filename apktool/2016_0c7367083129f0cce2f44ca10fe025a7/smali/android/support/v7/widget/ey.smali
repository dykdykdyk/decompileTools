.class public final Landroid/support/v7/widget/ey;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# instance fields
.field final a:Landroid/support/v7/widget/RecyclerView;

.field final b:Landroid/support/v4/view/AccessibilityDelegateCompat;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 84
    new-instance v0, Landroid/support/v7/widget/ez;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ez;-><init>(Landroid/support/v7/widget/ey;)V

    iput-object v0, p0, Landroid/support/v7/widget/ey;->b:Landroid/support/v4/view/AccessibilityDelegateCompat;

    .line 35
    iput-object p1, p0, Landroid/support/v7/widget/ey;->a:Landroid/support/v7/widget/RecyclerView;

    .line 36
    return-void
.end method


# virtual methods
.method final a()Z
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Landroid/support/v7/widget/ey;->a:Landroid/support/v7/widget/RecyclerView;

    .line 9361
    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->j:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Landroid/support/v7/widget/RecyclerView;->m:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->c:Landroid/support/v7/widget/af;

    .line 9362
    invoke-virtual {v0}, Landroid/support/v7/widget/af;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 39
    goto :goto_0
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 66
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 67
    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/ey;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    .line 69
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/eg;->a(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 73
    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 56
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 57
    const-class v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Landroid/support/v7/widget/ey;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/support/v7/widget/ey;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 59
    iget-object v0, p0, Landroid/support/v7/widget/ey;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v0

    .line 12708
    iget-object v1, v0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    iget-object v2, v0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 12738
    iget-object v3, v0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    .line 12739
    invoke-static {v3, v5}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12740
    :cond_0
    const/16 v3, 0x2000

    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 12741
    invoke-virtual {p2, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 12743
    :cond_1
    iget-object v3, v0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    .line 12744
    invoke-static {v3, v4}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12745
    :cond_2
    const/16 v3, 0x1000

    invoke-virtual {p2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 12746
    invoke-virtual {p2, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 12750
    :cond_3
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/eg;->a(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v3

    .line 12751
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/eg;->b(Landroid/support/v7/widget/eo;Landroid/support/v7/widget/eu;)I

    move-result v0

    .line 12750
    invoke-static {v3, v0, v6, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    .line 12754
    invoke-virtual {p2, v0}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    .line 61
    :cond_4
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 44
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    .line 9950
    :cond_0
    :goto_0
    return v1

    .line 47
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ey;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ey;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Landroid/support/v7/widget/ey;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v4

    .line 9911
    iget-object v0, v4, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    iget-object v0, v4, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    .line 9927
    iget-object v0, v4, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 9931
    sparse-switch p2, :sswitch_data_0

    move v0, v1

    move v3, v1

    .line 9949
    :goto_1
    if-nez v3, :cond_2

    if-eqz v0, :cond_0

    .line 9952
    :cond_2
    iget-object v1, v4, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0, v3}, Landroid/support/v7/widget/RecyclerView;->scrollBy(II)V

    move v1, v2

    .line 48
    goto :goto_0

    .line 9933
    :sswitch_0
    iget-object v0, v4, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10496
    iget v0, v4, Landroid/support/v7/widget/eg;->A:I

    .line 9934
    invoke-virtual {v4}, Landroid/support/v7/widget/eg;->n()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/eg;->p()I

    move-result v3

    sub-int/2addr v0, v3

    neg-int v0, v0

    .line 9936
    :goto_2
    iget-object v3, v4, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v5}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11487
    iget v3, v4, Landroid/support/v7/widget/eg;->z:I

    .line 9937
    invoke-virtual {v4}, Landroid/support/v7/widget/eg;->m()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v4}, Landroid/support/v7/widget/eg;->o()I

    move-result v5

    sub-int/2addr v3, v5

    neg-int v3, v3

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_1

    .line 9941
    :sswitch_1
    iget-object v0, v4, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11496
    iget v0, v4, Landroid/support/v7/widget/eg;->A:I

    .line 9942
    invoke-virtual {v4}, Landroid/support/v7/widget/eg;->n()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v4}, Landroid/support/v7/widget/eg;->p()I

    move-result v3

    sub-int/2addr v0, v3

    .line 9944
    :goto_3
    iget-object v3, v4, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v3, v2}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12487
    iget v3, v4, Landroid/support/v7/widget/eg;->z:I

    .line 9945
    invoke-virtual {v4}, Landroid/support/v7/widget/eg;->m()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {v4}, Landroid/support/v7/widget/eg;->o()I

    move-result v5

    sub-int/2addr v3, v5

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_1

    :cond_3
    move v3, v0

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_2

    .line 9931
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method
