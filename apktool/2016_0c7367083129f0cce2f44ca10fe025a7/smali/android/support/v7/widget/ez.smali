.class final Landroid/support/v7/widget/ez;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "RecyclerViewAccessibilityDelegate.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ey;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ey;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Landroid/support/v7/widget/ez;->a:Landroid/support/v7/widget/ey;

    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 88
    iget-object v0, p0, Landroid/support/v7/widget/ez;->a:Landroid/support/v7/widget/ey;

    .line 9030
    invoke-virtual {v0}, Landroid/support/v7/widget/ey;->a()Z

    move-result v0

    .line 88
    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ez;->a:Landroid/support/v7/widget/ey;

    iget-object v0, v0, Landroid/support/v7/widget/ey;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Landroid/support/v7/widget/ez;->a:Landroid/support/v7/widget/ey;

    iget-object v0, v0, Landroid/support/v7/widget/ey;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v0

    .line 90
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 92
    :cond_0
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const/4 v0, 0x1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/ez;->a:Landroid/support/v7/widget/ey;

    .line 10030
    invoke-virtual {v1}, Landroid/support/v7/widget/ey;->a()Z

    move-result v1

    .line 99
    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/ez;->a:Landroid/support/v7/widget/ey;

    iget-object v1, v1, Landroid/support/v7/widget/ey;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Landroid/support/v7/widget/ez;->a:Landroid/support/v7/widget/ey;

    iget-object v1, v1, Landroid/support/v7/widget/ey;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v1

    .line 10958
    iget-object v2, v1, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    iget-object v1, v1, Landroid/support/v7/widget/eg;->r:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->t:Landroid/support/v7/widget/eu;

    goto :goto_0
.end method
