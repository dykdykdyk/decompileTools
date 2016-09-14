.class final Landroid/support/v7/widget/ee;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Landroid/support/v7/widget/ec;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 10816
    iput-object p1, p0, Landroid/support/v7/widget/ee;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;B)V
    .locals 0

    .prologue
    .line 10816
    invoke-direct {p0, p1}, Landroid/support/v7/widget/ee;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/ex;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 10820
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ex;->a(Z)V

    .line 10821
    iget-object v0, p1, Landroid/support/v7/widget/ex;->g:Landroid/support/v7/widget/ex;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/ex;->h:Landroid/support/v7/widget/ex;

    if-nez v0, :cond_0

    .line 10822
    iput-object v1, p1, Landroid/support/v7/widget/ex;->g:Landroid/support/v7/widget/ex;

    .line 10826
    :cond_0
    iput-object v1, p1, Landroid/support/v7/widget/ex;->h:Landroid/support/v7/widget/ex;

    .line 10827
    invoke-static {p1}, Landroid/support/v7/widget/ex;->g(Landroid/support/v7/widget/ex;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10828
    iget-object v0, p0, Landroid/support/v7/widget/ee;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/ex;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10829
    iget-object v0, p0, Landroid/support/v7/widget/ee;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 10832
    :cond_1
    return-void
.end method
