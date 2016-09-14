.class final Lcom/nut/blehunter/ui/a/a/d;
.super Ljava/lang/Object;
.source "MultiItemTypeAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/a/a/a/c;

.field final synthetic b:Lcom/nut/blehunter/ui/a/a/c;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/a/a/c;Lcom/nut/blehunter/ui/a/a/a/c;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/nut/blehunter/ui/a/a/d;->b:Lcom/nut/blehunter/ui/a/a/c;

    iput-object p2, p0, Lcom/nut/blehunter/ui/a/a/d;->a:Lcom/nut/blehunter/ui/a/a/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/d;->b:Lcom/nut/blehunter/ui/a/a/c;

    iget-object v0, v0, Lcom/nut/blehunter/ui/a/a/c;->k:Lcom/nut/blehunter/ui/a/a/f;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/nut/blehunter/ui/a/a/d;->a:Lcom/nut/blehunter/ui/a/a/a/c;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/a/a/a/c;->d()I

    move-result v0

    .line 68
    iget-object v1, p0, Lcom/nut/blehunter/ui/a/a/d;->b:Lcom/nut/blehunter/ui/a/a/c;

    iget-object v1, v1, Lcom/nut/blehunter/ui/a/a/c;->k:Lcom/nut/blehunter/ui/a/a/f;

    invoke-interface {v1, v0}, Lcom/nut/blehunter/ui/a/a/f;->a(I)V

    .line 70
    :cond_0
    return-void
.end method
