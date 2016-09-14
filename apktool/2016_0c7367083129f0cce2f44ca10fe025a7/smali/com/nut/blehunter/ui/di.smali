.class final Lcom/nut/blehunter/ui/di;
.super Lcom/nut/blehunter/rxApi/j;
.source "MeEditActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/MeEditActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/MeEditActivity;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/nut/blehunter/ui/di;->a:Lcom/nut/blehunter/ui/MeEditActivity;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 2

    .prologue
    .line 378
    iget-object v0, p0, Lcom/nut/blehunter/ui/di;->a:Lcom/nut/blehunter/ui/MeEditActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 379
    iget-object v0, p0, Lcom/nut/blehunter/ui/di;->a:Lcom/nut/blehunter/ui/MeEditActivity;

    const v1, 0x7f0601ed

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    .line 380
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/nut/blehunter/ui/di;->a:Lcom/nut/blehunter/ui/MeEditActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 370
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 371
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/nut/blehunter/entity/User;->f:Lcom/nut/blehunter/entity/Wechat;

    .line 372
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    iget-object v2, p0, Lcom/nut/blehunter/ui/di;->a:Lcom/nut/blehunter/ui/MeEditActivity;

    invoke-virtual {v1, v2, v0}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;Lcom/nut/blehunter/entity/User;)V

    .line 373
    iget-object v0, p0, Lcom/nut/blehunter/ui/di;->a:Lcom/nut/blehunter/ui/MeEditActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/MeEditActivity;->c()V

    .line 374
    return-void
.end method
