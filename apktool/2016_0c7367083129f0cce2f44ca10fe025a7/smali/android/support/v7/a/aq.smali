.class final Landroid/support/v7/a/aq;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Landroid/support/v7/view/c;


# instance fields
.field final synthetic a:Landroid/support/v7/a/ah;

.field private b:Landroid/support/v7/view/c;


# direct methods
.method public constructor <init>(Landroid/support/v7/a/ah;Landroid/support/v7/view/c;)V
    .locals 0

    .prologue
    .line 1770
    iput-object p1, p0, Landroid/support/v7/a/aq;->a:Landroid/support/v7/a/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1771
    iput-object p2, p0, Landroid/support/v7/a/aq;->b:Landroid/support/v7/view/c;

    .line 1772
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/view/b;)V
    .locals 3

    .prologue
    .line 1791
    iget-object v0, p0, Landroid/support/v7/a/aq;->b:Landroid/support/v7/view/c;

    invoke-interface {v0, p1}, Landroid/support/v7/view/c;->a(Landroid/support/v7/view/b;)V

    .line 1792
    iget-object v0, p0, Landroid/support/v7/a/aq;->a:Landroid/support/v7/a/ah;

    iget-object v0, v0, Landroid/support/v7/a/ah;->s:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1793
    iget-object v0, p0, Landroid/support/v7/a/aq;->a:Landroid/support/v7/a/ah;

    iget-object v0, v0, Landroid/support/v7/a/ah;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/a/aq;->a:Landroid/support/v7/a/ah;

    iget-object v1, v1, Landroid/support/v7/a/ah;->t:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1796
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/aq;->a:Landroid/support/v7/a/ah;

    iget-object v0, v0, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    .line 1797
    iget-object v0, p0, Landroid/support/v7/a/aq;->a:Landroid/support/v7/a/ah;

    invoke-static {v0}, Landroid/support/v7/a/ah;->e(Landroid/support/v7/a/ah;)V

    .line 1798
    iget-object v0, p0, Landroid/support/v7/a/aq;->a:Landroid/support/v7/a/ah;

    iget-object v1, p0, Landroid/support/v7/a/aq;->a:Landroid/support/v7/a/ah;

    iget-object v1, v1, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/a/ah;->u:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1799
    iget-object v0, p0, Landroid/support/v7/a/aq;->a:Landroid/support/v7/a/ah;

    iget-object v0, v0, Landroid/support/v7/a/ah;->u:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    new-instance v1, Landroid/support/v7/a/ar;

    invoke-direct {v1, p0}, Landroid/support/v7/a/ar;-><init>(Landroid/support/v7/a/aq;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 1814
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/aq;->a:Landroid/support/v7/a/ah;

    iget-object v0, v0, Landroid/support/v7/a/ah;->f:Landroid/support/v7/a/t;

    if-eqz v0, :cond_2

    .line 1815
    iget-object v0, p0, Landroid/support/v7/a/aq;->a:Landroid/support/v7/a/ah;

    iget-object v0, v0, Landroid/support/v7/a/ah;->f:Landroid/support/v7/a/t;

    iget-object v0, p0, Landroid/support/v7/a/aq;->a:Landroid/support/v7/a/ah;

    iget-object v0, v0, Landroid/support/v7/a/ah;->q:Landroid/support/v7/view/b;

    .line 1817
    :cond_2
    iget-object v0, p0, Landroid/support/v7/a/aq;->a:Landroid/support/v7/a/ah;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/support/v7/a/ah;->q:Landroid/support/v7/view/b;

    .line 1818
    return-void
.end method

.method public final a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1776
    iget-object v0, p0, Landroid/support/v7/a/aq;->b:Landroid/support/v7/view/c;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/c;->a(Landroid/support/v7/view/b;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final a(Landroid/support/v7/view/b;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 1786
    iget-object v0, p0, Landroid/support/v7/a/aq;->b:Landroid/support/v7/view/c;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/c;->a(Landroid/support/v7/view/b;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final b(Landroid/support/v7/view/b;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 1781
    iget-object v0, p0, Landroid/support/v7/a/aq;->b:Landroid/support/v7/view/c;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/view/c;->b(Landroid/support/v7/view/b;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
