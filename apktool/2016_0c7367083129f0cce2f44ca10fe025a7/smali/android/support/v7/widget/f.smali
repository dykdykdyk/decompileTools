.class final Landroid/support/v7/widget/f;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "ActionBarOverlayLayout.java"


# instance fields
.field final synthetic a:Landroid/support/v7/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/ActionBarOverlayLayout;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->a(Landroid/support/v7/widget/ActionBarOverlayLayout;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 101
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->a(Landroid/support/v7/widget/ActionBarOverlayLayout;)Z

    .line 102
    return-void
.end method

.method public final onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->a(Landroid/support/v7/widget/ActionBarOverlayLayout;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 95
    iget-object v0, p0, Landroid/support/v7/widget/f;->a:Landroid/support/v7/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v7/widget/ActionBarOverlayLayout;->a(Landroid/support/v7/widget/ActionBarOverlayLayout;)Z

    .line 96
    return-void
.end method
