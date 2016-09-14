.class final Lcom/nut/blehunter/ui/ag;
.super Ljava/lang/Object;
.source "DialogContainerActivity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/b/a/d;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/entity/Nut;

.field final synthetic b:Lcom/nut/blehunter/ui/DialogContainerActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/DialogContainerActivity;Lcom/nut/blehunter/entity/Nut;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/nut/blehunter/ui/ag;->b:Lcom/nut/blehunter/ui/DialogContainerActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/ag;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 3

    .prologue
    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 294
    iget-object v1, p0, Lcom/nut/blehunter/ui/ag;->b:Lcom/nut/blehunter/ui/DialogContainerActivity;

    const-class v2, Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 295
    const-string v1, "nut"

    iget-object v2, p0, Lcom/nut/blehunter/ui/ag;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 296
    iget-object v1, p0, Lcom/nut/blehunter/ui/ag;->b:Lcom/nut/blehunter/ui/DialogContainerActivity;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->startActivity(Landroid/content/Intent;)V

    .line 297
    iget-object v0, p0, Lcom/nut/blehunter/ui/ag;->b:Lcom/nut/blehunter/ui/DialogContainerActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->a(Lcom/nut/blehunter/ui/DialogContainerActivity;)Z

    .line 298
    return-void
.end method
