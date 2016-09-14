.class final Landroid/support/v7/widget/du;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/go;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Landroid/support/v7/widget/du;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/ex;)V
    .locals 3

    .prologue
    .line 481
    iget-object v0, p0, Landroid/support/v7/widget/du;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/eg;

    iget-object v1, p1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/du;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/eg;->a(Landroid/view/View;Landroid/support/v7/widget/eo;)V

    .line 482
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;Landroid/support/v7/widget/ed;)V
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Landroid/support/v7/widget/du;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/eo;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/eo;->b(Landroid/support/v7/widget/ex;)V

    .line 456
    iget-object v0, p0, Landroid/support/v7/widget/du;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;Landroid/support/v7/widget/ed;)V

    .line 457
    return-void
.end method

.method public final b(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;Landroid/support/v7/widget/ed;)V
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Landroid/support/v7/widget/du;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;Landroid/support/v7/widget/ed;)V

    .line 462
    return-void
.end method

.method public final c(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;Landroid/support/v7/widget/ed;)V
    .locals 1

    .prologue
    .line 467
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ex;->a(Z)V

    .line 468
    iget-object v0, p0, Landroid/support/v7/widget/du;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->f(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    iget-object v0, p0, Landroid/support/v7/widget/du;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/support/v7/widget/eb;->a(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;Landroid/support/v7/widget/ed;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Landroid/support/v7/widget/du;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)V

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 475
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/du;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/eb;->c(Landroid/support/v7/widget/ex;Landroid/support/v7/widget/ed;Landroid/support/v7/widget/ed;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Landroid/support/v7/widget/du;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->g(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method
