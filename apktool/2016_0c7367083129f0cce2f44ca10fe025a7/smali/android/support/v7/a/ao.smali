.class final Landroid/support/v7/a/ao;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImplV9.java"


# instance fields
.field final synthetic a:Landroid/support/v7/a/ah;


# direct methods
.method constructor <init>(Landroid/support/v7/a/ah;)V
    .locals 0

    .prologue
    .line 825
    iput-object p1, p0, Landroid/support/v7/a/ao;->a:Landroid/support/v7/a/ah;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 838
    iget-object v0, p0, Landroid/support/v7/a/ao;->a:Landroid/support/v7/a/ah;

    iget-object v0, v0, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 839
    iget-object v0, p0, Landroid/support/v7/a/ao;->a:Landroid/support/v7/a/ah;

    iget-object v0, v0, Landroid/support/v7/a/ah;->u:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 840
    iget-object v0, p0, Landroid/support/v7/a/ao;->a:Landroid/support/v7/a/ah;

    iput-object v2, v0, Landroid/support/v7/a/ah;->u:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 841
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Landroid/support/v7/a/ao;->a:Landroid/support/v7/a/ah;

    iget-object v0, v0, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Landroid/support/v7/a/ao;->a:Landroid/support/v7/a/ah;

    iget-object v0, v0, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 831
    iget-object v0, p0, Landroid/support/v7/a/ao;->a:Landroid/support/v7/a/ah;

    iget-object v0, v0, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 832
    iget-object v0, p0, Landroid/support/v7/a/ao;->a:Landroid/support/v7/a/ah;

    iget-object v0, v0, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 834
    :cond_0
    return-void
.end method
