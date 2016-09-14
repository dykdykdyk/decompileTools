.class final Lcom/nut/blehunter/ui/am;
.super Ljava/lang/Object;
.source "DialogContainerActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/DialogContainerActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/DialogContainerActivity;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/nut/blehunter/ui/am;->a:Lcom/nut/blehunter/ui/DialogContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 4

    .prologue
    .line 253
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 254
    iget-object v1, p0, Lcom/nut/blehunter/ui/am;->a:Lcom/nut/blehunter/ui/DialogContainerActivity;

    const-class v2, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 256
    const-string v1, "URL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nut/blehunter/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/#/changeBattery"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v1, p0, Lcom/nut/blehunter/ui/am;->a:Lcom/nut/blehunter/ui/DialogContainerActivity;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->startActivity(Landroid/content/Intent;)V

    .line 258
    iget-object v0, p0, Lcom/nut/blehunter/ui/am;->a:Lcom/nut/blehunter/ui/DialogContainerActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->a(Lcom/nut/blehunter/ui/DialogContainerActivity;)Z

    .line 259
    return-void
.end method
