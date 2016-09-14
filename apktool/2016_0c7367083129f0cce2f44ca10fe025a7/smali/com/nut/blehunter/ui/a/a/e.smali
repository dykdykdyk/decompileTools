.class final Lcom/nut/blehunter/ui/a/a/e;
.super Ljava/lang/Object;
.source "MultiItemTypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/a/a/a/c;

.field final synthetic b:Lcom/nut/blehunter/ui/a/a/c;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/a/a/c;Lcom/nut/blehunter/ui/a/a/a/c;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/a/e;->b:Lcom/nut/blehunter/ui/a/a/c;

    iput-object p2, p0, Lcom/nut/blehunter/ui/a/a/e;->a:Lcom/nut/blehunter/ui/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/e;->b:Lcom/nut/blehunter/ui/a/a/c;

    iget-object v0, v0, Lcom/nut/blehunter/ui/a/a/c;->k:Lcom/nut/blehunter/ui/a/a/f;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/e;->a:Lcom/nut/blehunter/ui/a/a/a/c;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/a/a/a/c;->d()I

    move-result v0

    .line 78
    iget-object v1, p0, Lcom/nut/blehunter/ui/a/a/e;->b:Lcom/nut/blehunter/ui/a/a/c;

    iget-object v1, v1, Lcom/nut/blehunter/ui/a/a/c;->k:Lcom/nut/blehunter/ui/a/a/f;

    invoke-interface {v1, p1, v0}, Lcom/nut/blehunter/ui/a/a/f;->a(Landroid/view/View;I)Z

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
