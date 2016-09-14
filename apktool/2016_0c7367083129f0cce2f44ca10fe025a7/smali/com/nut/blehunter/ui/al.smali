.class final Lcom/nut/blehunter/ui/al;
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
    .line 224
    iput-object p1, p0, Lcom/nut/blehunter/ui/al;->a:Lcom/nut/blehunter/ui/DialogContainerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/DialogFragment;I)V
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/nut/blehunter/ui/al;->a:Lcom/nut/blehunter/ui/DialogContainerActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->a(Lcom/nut/blehunter/ui/DialogContainerActivity;)Z

    .line 228
    iget-object v0, p0, Lcom/nut/blehunter/ui/al;->a:Lcom/nut/blehunter/ui/DialogContainerActivity;

    .line 1157
    const-string v1, "user_rating_call"

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 1158
    add-int/lit8 v1, v1, 0x1

    .line 1159
    const-string v2, "user_rating_call"

    invoke-static {v0, v2, v1}, Lcom/nut/blehunter/d/l;->b(Landroid/content/Context;Ljava/lang/String;I)V

    .line 228
    const/4 v0, 0x3

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/al;->a:Lcom/nut/blehunter/ui/DialogContainerActivity;

    invoke-static {v0}, Lcom/nut/blehunter/d/l;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nut/blehunter/ui/al;->a:Lcom/nut/blehunter/ui/DialogContainerActivity;

    const-class v2, Lcom/nut/blehunter/ui/UserRatingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 231
    const-string v1, "type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    iget-object v1, p0, Lcom/nut/blehunter/ui/al;->a:Lcom/nut/blehunter/ui/DialogContainerActivity;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/DialogContainerActivity;->startActivity(Landroid/content/Intent;)V

    .line 234
    :cond_0
    return-void
.end method
