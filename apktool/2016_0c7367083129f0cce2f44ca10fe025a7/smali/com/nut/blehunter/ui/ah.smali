.class final Lcom/nut/blehunter/ui/ah;
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
    .line 137
    iput-object p1, p0, Lcom/nut/blehunter/ui/ah;->b:Lcom/nut/blehunter/ui/DialogContainerActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/ah;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 3

    .prologue
    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    iget-object v1, p0, Lcom/nut/blehunter/ui/ah;->b:Lcom/nut/blehunter/ui/DialogContainerActivity;

    const-class v2, Lcom/nut/blehunter/ui/NutDetailActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 142
    const-string v1, "nut"

    iget-object v2, p0, Lcom/nut/blehunter/ui/ah;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/nut/blehunter/ui/ah;->b:Lcom/nut/blehunter/ui/DialogContainerActivity;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->startActivity(Landroid/content/Intent;)V

    .line 144
    iget-object v0, p0, Lcom/nut/blehunter/ui/ah;->b:Lcom/nut/blehunter/ui/DialogContainerActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->a(Lcom/nut/blehunter/ui/DialogContainerActivity;)Z

    .line 145
    return-void
.end method
