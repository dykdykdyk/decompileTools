.class final Landroid/support/v7/a/an;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "AppCompatDelegateImplV9.java"


# instance fields
.field final synthetic a:Landroid/support/v7/a/am;


# direct methods
.method constructor <init>(Landroid/support/v7/a/am;)V
    .locals 0

    .prologue
    .line 782
    iput-object p1, p0, Landroid/support/v7/a/an;->a:Landroid/support/v7/a/am;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 790
    iget-object v0, p0, Landroid/support/v7/a/an;->a:Landroid/support/v7/a/am;

    iget-object v0, v0, Landroid/support/v7/a/am;->a:Landroid/support/v7/a/ah;

    iget-object v0, v0, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 791
    iget-object v0, p0, Landroid/support/v7/a/an;->a:Landroid/support/v7/a/am;

    iget-object v0, v0, Landroid/support/v7/a/am;->a:Landroid/support/v7/a/ah;

    iget-object v0, v0, Landroid/support/v7/a/ah;->u:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 792
    iget-object v0, p0, Landroid/support/v7/a/an;->a:Landroid/support/v7/a/am;

    iget-object v0, v0, Landroid/support/v7/a/am;->a:Landroid/support/v7/a/ah;

    iput-object v2, v0, Landroid/support/v7/a/ah;->u:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 793
    return-void
.end method

.method public final onAnimationStart(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Landroid/support/v7/a/an;->a:Landroid/support/v7/a/am;

    iget-object v0, v0, Landroid/support/v7/a/am;->a:Landroid/support/v7/a/ah;

    iget-object v0, v0, Landroid/support/v7/a/ah;->r:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    .line 786
    return-void
.end method
