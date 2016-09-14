.class final Lcom/nut/blehunter/ui/a/a/b/d;
.super Landroid/support/v7/widget/cr;
.source "WrapperUtils.java"


# instance fields
.field final synthetic b:Lcom/nut/blehunter/ui/a/a/b/e;

.field final synthetic c:Landroid/support/v7/widget/GridLayoutManager;

.field final synthetic d:Landroid/support/v7/widget/cr;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/a/a/b/e;Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/cr;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/a/b/d;->b:Lcom/nut/blehunter/ui/a/a/b/e;

    iput-object p2, p0, Lcom/nut/blehunter/ui/a/a/b/d;->c:Landroid/support/v7/widget/GridLayoutManager;

    iput-object p3, p0, Lcom/nut/blehunter/ui/a/a/b/d;->d:Landroid/support/v7/widget/cr;

    invoke-direct {p0}, Landroid/support/v7/widget/cr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/b/d;->b:Lcom/nut/blehunter/ui/a/a/b/e;

    iget-object v1, p0, Lcom/nut/blehunter/ui/a/a/b/d;->c:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/nut/blehunter/ui/a/a/b/d;->d:Landroid/support/v7/widget/cr;

    invoke-interface {v0, v1, v2, p1}, Lcom/nut/blehunter/ui/a/a/b/e;->a(Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/cr;I)I

    move-result v0

    return v0
.end method
