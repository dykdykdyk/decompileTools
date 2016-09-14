.class public final Lcom/nut/blehunter/ui/a/a/b/a;
.super Landroid/support/v7/widget/dx;
.source "EmptyWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/widget/dx",
        "<",
        "Landroid/support/v7/widget/ex;",
        ">;"
    }
.end annotation


# instance fields
.field public c:I

.field private d:Landroid/support/v7/widget/dx;

.field private e:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/dx;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/support/v7/widget/dx;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/a/b/a;->d:Landroid/support/v7/widget/dx;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/a/a/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const v0, 0x7ffffffe

    .line 76
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/b/a;->d:Landroid/support/v7/widget/dx;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/dx;->a(I)I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ex;
    .locals 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/a/a/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/b/a;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/a/a/b/a;->e:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/a/a/a/c;->a(Landroid/content/Context;Landroid/view/View;)Lcom/nut/blehunter/ui/a/a/a/c;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    .line 37
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/nut/blehunter/ui/a/a/b/a;->c:I

    invoke-static {v0, p1, v1}, Lcom/nut/blehunter/ui/a/a/a/c;->a(Landroid/content/Context;Landroid/view/ViewGroup;I)Lcom/nut/blehunter/ui/a/a/a/c;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/b/a;->d:Landroid/support/v7/widget/dx;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/dx;->a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/ex;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView;)V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/b/a;->d:Landroid/support/v7/widget/dx;

    new-instance v1, Lcom/nut/blehunter/ui/a/a/b/b;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/a/a/b/b;-><init>(Lcom/nut/blehunter/ui/a/a/b/a;)V

    .line 3014
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/dx;->a(Landroid/support/v7/widget/RecyclerView;)V

    .line 3016
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/eg;

    move-result-object v0

    .line 3017
    instance-of v2, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_0

    .line 3018
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .line 3270
    iget-object v2, v0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/cr;

    .line 3021
    new-instance v3, Lcom/nut/blehunter/ui/a/a/b/d;

    invoke-direct {v3, v1, v0, v2}, Lcom/nut/blehunter/ui/a/a/b/d;-><init>(Lcom/nut/blehunter/ui/a/a/b/e;Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/cr;)V

    .line 4261
    iput-object v3, v0, Landroid/support/v7/widget/GridLayoutManager;->g:Landroid/support/v7/widget/cr;

    .line 4781
    iget v1, v0, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 3027
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/GridLayoutManager;->a(I)V

    .line 60
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ex;)V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/b/a;->d:Landroid/support/v7/widget/dx;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/dx;->a(Landroid/support/v7/widget/ex;)V

    .line 65
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/a/a/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5032
    iget-object v0, p1, Landroid/support/v7/widget/ex;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 5034
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/support/v7/widget/fq;

    if-eqz v1, :cond_0

    .line 5037
    check-cast v0, Landroid/support/v7/widget/fq;

    .line 5328
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/fq;->b:Z

    .line 68
    :cond_0
    return-void
.end method

.method public final a(Landroid/support/v7/widget/ex;I)V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/a/a/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/b/a;->d:Landroid/support/v7/widget/dx;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/dx;->a(Landroid/support/v7/widget/ex;I)V

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/a/a/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 90
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/b/a;->d:Landroid/support/v7/widget/dx;

    invoke-virtual {v0}, Landroid/support/v7/widget/dx;->b()I

    move-result v0

    goto :goto_0
.end method

.method final c()Z
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/b/a;->e:Landroid/view/View;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nut/blehunter/ui/a/a/b/a;->c:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/b/a;->d:Landroid/support/v7/widget/dx;

    invoke-virtual {v0}, Landroid/support/v7/widget/dx;->b()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
