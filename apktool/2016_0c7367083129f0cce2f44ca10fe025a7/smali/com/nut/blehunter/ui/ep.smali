.class final Lcom/nut/blehunter/ui/ep;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Lrx/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/k",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/RegisterActivity;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/nut/blehunter/ui/ep;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/nut/blehunter/ui/ep;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/ep;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/nut/blehunter/ui/ep;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/f;->a(Ljava/lang/Throwable;)Lcom/nut/blehunter/rxApi/model/ApiError;

    move-result-object v0

    .line 389
    iget-object v1, p0, Lcom/nut/blehunter/ui/ep;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    iget v2, v0, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v0, v0, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/nut/blehunter/ui/ep;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 374
    check-cast p1, Ljava/lang/String;

    .line 1395
    iget-object v0, p0, Lcom/nut/blehunter/ui/ep;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Z)Lcom/nut/blehunter/rxApi/model/ApiError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/RegisterActivity;->a(Lcom/nut/blehunter/ui/RegisterActivity;Lcom/nut/blehunter/rxApi/model/ApiError;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1398
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1399
    if-eqz v0, :cond_1

    .line 1400
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/nut/blehunter/entity/User;

    .line 2049
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 1400
    check-cast v0, Lcom/nut/blehunter/entity/User;

    .line 1401
    if-eqz v0, :cond_1

    .line 1402
    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->o:Ljava/lang/String;

    const-class v2, Lcom/nut/blehunter/entity/aa;

    .line 3049
    invoke-static {v1, v2}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 1402
    check-cast v1, Lcom/nut/blehunter/entity/aa;

    iput-object v1, v0, Lcom/nut/blehunter/entity/User;->s:Lcom/nut/blehunter/entity/aa;

    .line 1403
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/entity/o;->a(Lcom/nut/blehunter/entity/User;)V

    .line 1404
    iget-object v1, p0, Lcom/nut/blehunter/ui/ep;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/RegisterActivity;->c(Lcom/nut/blehunter/ui/RegisterActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1405
    iget-object v1, v0, Lcom/nut/blehunter/entity/User;->d:Lcom/nut/blehunter/entity/Mobile;

    if-eqz v1, :cond_0

    .line 1406
    iget-object v1, p0, Lcom/nut/blehunter/ui/ep;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    iget-object v2, v0, Lcom/nut/blehunter/entity/User;->d:Lcom/nut/blehunter/entity/Mobile;

    iget-object v2, v2, Lcom/nut/blehunter/entity/Mobile;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->d:Lcom/nut/blehunter/entity/Mobile;

    iget-object v0, v0, Lcom/nut/blehunter/entity/Mobile;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/nut/blehunter/ui/RegisterActivity;->a(Lcom/nut/blehunter/ui/RegisterActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/ep;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/RegisterActivity;->setResult(I)V

    .line 1409
    iget-object v0, p0, Lcom/nut/blehunter/ui/ep;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->finish()V

    :cond_1
    :goto_0
    return-void

    .line 1411
    :cond_2
    iget-object v0, p0, Lcom/nut/blehunter/ui/ep;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    .line 3435
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, v0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 3436
    invoke-virtual {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03005f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(Landroid/view/View;)Lcom/nut/blehunter/ui/b/a/b;

    .line 3438
    const v2, 0x7f06008c

    new-instance v3, Lcom/nut/blehunter/ui/er;

    invoke-direct {v3, v0}, Lcom/nut/blehunter/ui/er;-><init>(Lcom/nut/blehunter/ui/RegisterActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 3446
    const v2, 0x7f0600e5

    invoke-virtual {v0, v2}, Lcom/nut/blehunter/ui/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0600b8

    invoke-virtual {v0, v3}, Lcom/nut/blehunter/ui/RegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/nut/blehunter/ui/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/nut/blehunter/ui/b/a/b;)Lcom/nut/blehunter/ui/b/a/f;

    move-result-object v1

    .line 4060
    const-string v2, "baseDialog"

    invoke-virtual {v1, v0, v2}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
