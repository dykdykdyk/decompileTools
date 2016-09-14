.class final Landroid/support/v7/a/bl;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;


# instance fields
.field final synthetic a:Landroid/support/v7/a/bi;


# direct methods
.method constructor <init>(Landroid/support/v7/a/bi;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Landroid/support/v7/a/bl;->a:Landroid/support/v7/a/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/v7/a/bl;->a:Landroid/support/v7/a/bi;

    invoke-static {v0}, Landroid/support/v7/a/bi;->c(Landroid/support/v7/a/bi;)Landroid/support/v7/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 164
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 165
    return-void
.end method
