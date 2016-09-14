.class final Lcom/nut/blehunter/ui/cp;
.super Ljava/lang/Object;
.source "Main2Activity.java"

# interfaces
.implements Lcom/nut/blehunter/ui/a/m;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/Main2Activity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/Main2Activity;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/nut/blehunter/ui/cp;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .prologue
    .line 413
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nut/blehunter/ui/cp;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->l(Lcom/nut/blehunter/ui/Main2Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/cp;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->m(Lcom/nut/blehunter/ui/Main2Activity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_2

    .line 417
    iget-object v0, p0, Lcom/nut/blehunter/ui/cp;->a:Lcom/nut/blehunter/ui/Main2Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nut/blehunter/ui/cp;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const-class v3, Lcom/nut/blehunter/ui/AddFriendActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/Main2Activity;->startActivity(Landroid/content/Intent;)V

    .line 418
    iget-object v0, p0, Lcom/nut/blehunter/ui/cp;->a:Lcom/nut/blehunter/ui/Main2Activity;

    const-string v1, "tab_map_locate_friend_add"

    .line 1281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/cp;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/Main2Activity;->m(Lcom/nut/blehunter/ui/Main2Activity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nut/blehunter/entity/Friend;

    .line 422
    iget-object v1, p0, Lcom/nut/blehunter/ui/cp;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;)Lcom/nut/blehunter/entity/Friend;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/entity/Friend;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/nut/blehunter/ui/cp;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/Main2Activity;->n(Lcom/nut/blehunter/ui/Main2Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 426
    iget-object v1, p0, Lcom/nut/blehunter/ui/cp;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/Main2Activity;->o(Lcom/nut/blehunter/ui/Main2Activity;)V

    .line 428
    :cond_3
    iget-object v1, p0, Lcom/nut/blehunter/ui/cp;->a:Lcom/nut/blehunter/ui/Main2Activity;

    iget-object v2, p0, Lcom/nut/blehunter/ui/cp;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v2}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;)Lcom/nut/blehunter/entity/Friend;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/nut/blehunter/ui/Main2Activity;->a(Lcom/nut/blehunter/ui/Main2Activity;Lcom/nut/blehunter/entity/Friend;Lcom/nut/blehunter/entity/Friend;)V

    .line 429
    iget-object v1, p0, Lcom/nut/blehunter/ui/cp;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v1, v0}, Lcom/nut/blehunter/ui/Main2Activity;->d(Lcom/nut/blehunter/ui/Main2Activity;Lcom/nut/blehunter/entity/Friend;)V

    .line 430
    iget-object v1, p0, Lcom/nut/blehunter/ui/cp;->a:Lcom/nut/blehunter/ui/Main2Activity;

    iget-object v2, v0, Lcom/nut/blehunter/entity/Friend;->a:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nut/blehunter/ui/Main2Activity;->c(Lcom/nut/blehunter/ui/Main2Activity;Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/nut/blehunter/ui/cp;->a:Lcom/nut/blehunter/ui/Main2Activity;

    invoke-static {v1, v0}, Lcom/nut/blehunter/ui/Main2Activity;->b(Lcom/nut/blehunter/ui/Main2Activity;Lcom/nut/blehunter/entity/Friend;)V

    goto :goto_0
.end method
