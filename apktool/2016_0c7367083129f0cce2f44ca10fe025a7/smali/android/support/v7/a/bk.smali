.class final Landroid/support/v7/a/bk;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "WindowDecorActionBar.java"


# instance fields
.field final synthetic a:Landroid/support/v7/a/bi;


# direct methods
.method constructor <init>(Landroid/support/v7/a/bi;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Landroid/support/v7/a/bk;->a:Landroid/support/v7/a/bi;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Landroid/support/v7/a/bk;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->d(Landroid/support/v7/a/bi;)Landroid/support/v7/view/l;

    .line 155
    iget-object v0, p0, Landroid/support/v7/a/bk;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->c(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->requestLayout()V

    .line 156
    return-void
.end method
