.class final Lcom/nut/blehunter/ui/b/ah;
.super Ljava/lang/Object;
.source "NutListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/b/ac;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/b/ac;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/nut/blehunter/ui/b/ah;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ah;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b/ac;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nut/blehunter/a;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v2

    iget-object v2, v2, Lcom/nut/blehunter/entity/User;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    const-string v2, "URL"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v1, p0, Lcom/nut/blehunter/ui/b/ah;->a:Lcom/nut/blehunter/ui/b/ac;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/b/ac;->startActivity(Landroid/content/Intent;)V

    .line 231
    return-void
.end method
