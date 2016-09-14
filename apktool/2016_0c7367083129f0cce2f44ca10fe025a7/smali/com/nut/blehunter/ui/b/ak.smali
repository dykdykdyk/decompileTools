.class final Lcom/nut/blehunter/ui/b/ak;
.super Ljava/lang/Object;
.source "NutListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/a;

.field final synthetic b:Lcom/nut/blehunter/ui/b/aj;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/aj;Lcom/nut/blehunter/entity/a;)V
    .locals 0

    .prologue
    .line 555
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/ak;->b:Lcom/nut/blehunter/ui/b/aj;

    iput-object p2, p0, Lcom/nut/blehunter/ui/b/ak;->a:Lcom/nut/blehunter/entity/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 558
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ak;->b:Lcom/nut/blehunter/ui/b/aj;

    invoke-static {v1}, Lcom/nut/blehunter/ui/b/aj;->a(Lcom/nut/blehunter/ui/b/aj;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 559
    const-string v1, "URL"

    iget-object v2, p0, Lcom/nut/blehunter/ui/b/ak;->a:Lcom/nut/blehunter/entity/a;

    iget-object v2, v2, Lcom/nut/blehunter/entity/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 560
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ak;->b:Lcom/nut/blehunter/ui/b/aj;

    invoke-static {v1}, Lcom/nut/blehunter/ui/b/aj;->a(Lcom/nut/blehunter/ui/b/aj;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 561
    return-void
.end method
