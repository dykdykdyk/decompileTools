.class final Lcom/nut/blehunter/ui/ak;
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
    .line 197
    iput-object p1, p0, Lcom/nut/blehunter/ui/ak;->b:Lcom/nut/blehunter/ui/DialogContainerActivity;

    iput-object p2, p0, Lcom/nut/blehunter/ui/ak;->a:Lcom/nut/blehunter/entity/Nut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/nut/blehunter/ui/ak;->b:Lcom/nut/blehunter/ui/DialogContainerActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->a(Lcom/nut/blehunter/ui/DialogContainerActivity;)Z

    .line 201
    iget-object v0, p0, Lcom/nut/blehunter/ui/ak;->b:Lcom/nut/blehunter/ui/DialogContainerActivity;

    .line 1164
    const-string v1, "user_rating_reconnect"

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1165
    add-int/lit8 v1, v1, 0x1

    .line 1166
    const-string v2, "user_rating_reconnect"

    invoke-static {v0, v2, v1}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 201
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/ak;->b:Lcom/nut/blehunter/ui/DialogContainerActivity;

    invoke-static {v0}, Lcom/nut/blehunter/d/l;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nut/blehunter/ui/ak;->b:Lcom/nut/blehunter/ui/DialogContainerActivity;

    const-class v2, Lcom/nut/blehunter/ui/UserRatingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 204
    const-string v1, "type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v1, "name"

    iget-object v2, p0, Lcom/nut/blehunter/ui/ak;->a:Lcom/nut/blehunter/entity/Nut;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Nut;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/nut/blehunter/ui/ak;->b:Lcom/nut/blehunter/ui/DialogContainerActivity;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    :cond_0
    return-void
.end method
