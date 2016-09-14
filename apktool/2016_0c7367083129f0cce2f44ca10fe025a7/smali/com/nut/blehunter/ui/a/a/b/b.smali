.class final Lcom/nut/blehunter/ui/a/a/b/b;
.super Ljava/lang/Object;
.source "EmptyWrapper.java"

# interfaces
.implements Lcom/nut/blehunter/ui/a/a/b/e;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/a/a/b/a;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/a/a/b/a;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/a/b/b;->a:Lcom/nut/blehunter/ui/a/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v7/widget/GridLayoutManager;Landroid/support/v7/widget/cr;I)I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/b/b;->a:Lcom/nut/blehunter/ui/a/a/b/a;

    .line 1014
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/a/a/b/a;->c()Z

    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 1781
    iget v0, p1, Landroid/support/v7/widget/GridLayoutManager;->b:I

    .line 55
    :goto_0
    return v0

    .line 52
    :cond_0
    if-eqz p2, :cond_1

    .line 53
    invoke-virtual {p2, p3}, Landroid/support/v7/widget/cr;->a(I)I

    move-result v0

    goto :goto_0

    .line 55
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
