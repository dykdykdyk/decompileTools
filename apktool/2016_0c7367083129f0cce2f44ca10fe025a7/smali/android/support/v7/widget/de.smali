.class final Landroid/support/v7/widget/de;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/cz;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/cz;)V
    .locals 0

    .prologue
    .line 1345
    iput-object p1, p0, Landroid/support/v7/widget/de;->a:Landroid/support/v7/widget/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/cz;B)V
    .locals 0

    .prologue
    .line 1345
    invoke-direct {p0, p1}, Landroid/support/v7/widget/de;-><init>(Landroid/support/v7/widget/cz;)V

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .prologue
    .line 1350
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    .prologue
    .line 1354
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/de;->a:Landroid/support/v7/widget/cz;

    .line 1355
    invoke-virtual {v0}, Landroid/support/v7/widget/cz;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/de;->a:Landroid/support/v7/widget/cz;

    iget-object v0, v0, Landroid/support/v7/widget/cz;->m:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Landroid/support/v7/widget/de;->a:Landroid/support/v7/widget/cz;

    invoke-static {v0}, Landroid/support/v7/widget/cz;->c(Landroid/support/v7/widget/cz;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/de;->a:Landroid/support/v7/widget/cz;

    invoke-static {v1}, Landroid/support/v7/widget/cz;->b(Landroid/support/v7/widget/cz;)Landroid/support/v7/widget/dg;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1357
    iget-object v0, p0, Landroid/support/v7/widget/de;->a:Landroid/support/v7/widget/cz;

    invoke-static {v0}, Landroid/support/v7/widget/cz;->b(Landroid/support/v7/widget/cz;)Landroid/support/v7/widget/dg;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/dg;->run()V

    .line 1359
    :cond_0
    return-void
.end method
