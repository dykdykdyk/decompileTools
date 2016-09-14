.class final Landroid/support/v7/widget/ds;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 429
    iput-object p1, p0, Landroid/support/v7/widget/ds;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Landroid/support/v7/widget/ds;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Landroid/support/v7/widget/ds;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->r:Landroid/support/v7/widget/eb;

    invoke-virtual {v0}, Landroid/support/v7/widget/eb;->a()V

    .line 435
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/ds;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)Z

    .line 436
    return-void
.end method
