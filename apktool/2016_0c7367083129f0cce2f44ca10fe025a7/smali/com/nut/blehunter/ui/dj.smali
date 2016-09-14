.class final Lcom/nut/blehunter/ui/dj;
.super Lcom/nut/blehunter/rxApi/j;
.source "MeEditActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/MeEditActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/MeEditActivity;)V
    .locals 0

    .prologue
    .line 388
    iput-object p1, p0, Lcom/nut/blehunter/ui/dj;->a:Lcom/nut/blehunter/ui/MeEditActivity;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/nut/blehunter/ui/dj;->a:Lcom/nut/blehunter/ui/MeEditActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 411
    iget-object v0, p0, Lcom/nut/blehunter/ui/dj;->a:Lcom/nut/blehunter/ui/MeEditActivity;

    const v1, 0x7f060051

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    .line 412
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/dj;->a:Lcom/nut/blehunter/ui/MeEditActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 393
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 394
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/nut/blehunter/entity/ThirdAccount;

    .line 1049
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 394
    check-cast v0, Lcom/nut/blehunter/entity/ThirdAccount;

    .line 396
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v1

    .line 397
    new-instance v2, Lcom/nut/blehunter/entity/Wechat;

    invoke-direct {v2}, Lcom/nut/blehunter/entity/Wechat;-><init>()V

    .line 398
    iget-object v3, v0, Lcom/nut/blehunter/entity/ThirdAccount;->e:Ljava/lang/String;

    iput-object v3, v2, Lcom/nut/blehunter/entity/Wechat;->a:Ljava/lang/String;

    .line 399
    iget-object v0, v0, Lcom/nut/blehunter/entity/ThirdAccount;->f:Ljava/lang/String;

    iput-object v0, v2, Lcom/nut/blehunter/entity/Wechat;->b:Ljava/lang/String;

    .line 400
    iput-object v2, v1, Lcom/nut/blehunter/entity/User;->f:Lcom/nut/blehunter/entity/Wechat;

    .line 401
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    iget-object v2, p0, Lcom/nut/blehunter/ui/dj;->a:Lcom/nut/blehunter/ui/MeEditActivity;

    invoke-virtual {v0, v2, v1}, Lcom/nut/blehunter/entity/o;->a(Landroid/content/Context;Lcom/nut/blehunter/entity/User;)V

    .line 402
    iget-object v0, p0, Lcom/nut/blehunter/ui/dj;->a:Lcom/nut/blehunter/ui/MeEditActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/MeEditActivity;->c()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
