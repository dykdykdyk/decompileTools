.class final Landroid/support/v7/a/bj;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# instance fields
.field final synthetic a:Landroid/support/v7/a/bi;


# direct methods
.method constructor <init>(Landroid/support/v7/a/bi;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Landroid/support/v7/a/bj;->a:Landroid/support/v7/a/bi;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 137
    iget-object v0, p0, Landroid/support/v7/a/bj;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->a(Landroid/support/v7/a/bi;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/a/bj;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->b(Landroid/support/v7/a/bi;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Landroid/support/v7/a/bj;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->b(Landroid/support/v7/a/bi;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 139
    iget-object v0, p0, Landroid/support/v7/a/bj;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->c(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 141
    :cond_0
    iget-object v0, p0, Landroid/support/v7/a/bj;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->c(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Landroid/support/v7/a/bj;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->c(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 143
    iget-object v0, p0, Landroid/support/v7/a/bj;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->d(Landroid/support/v7/a/bi;)Landroid/support/v7/view/l;

    .line 144
    iget-object v0, p0, Landroid/support/v7/a/bj;->a:Landroid/support/v7/a/bi;

    .line 1309
    iget-object v1, v0, Landroid/support/v7/a/bi;->c:Landroid/support/v7/view/c;

    if-eqz v1, :cond_1

    .line 1310
    iget-object v1, v0, Landroid/support/v7/a/bi;->c:Landroid/support/v7/view/c;

    iget-object v2, v0, Landroid/support/v7/a/bi;->b:Landroid/support/v7/view/b;

    invoke-interface {v1, v2}, Landroid/support/v7/view/c;->a(Landroid/support/v7/view/b;)V

    .line 1311
    iput-object v3, v0, Landroid/support/v7/a/bi;->b:Landroid/support/v7/view/b;

    .line 1312
    iput-object v3, v0, Landroid/support/v7/a/bi;->c:Landroid/support/v7/view/c;

    .line 145
    :cond_1
    iget-object v0, p0, Landroid/support/v7/a/bj;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->e(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Landroid/support/v7/a/bj;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->e(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 148
    :cond_2
    return-void
.end method
