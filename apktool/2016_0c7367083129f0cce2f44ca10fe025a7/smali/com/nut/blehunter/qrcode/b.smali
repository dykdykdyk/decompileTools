.class final Lcom/nut/blehunter/qrcode/b;
.super Ljava/lang/Object;
.source "CaptureActivity.java"

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
.field final synthetic a:Lcom/nut/blehunter/qrcode/CaptureActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/qrcode/CaptureActivity;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/nut/blehunter/qrcode/b;->a:Lcom/nut/blehunter/qrcode/CaptureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/b;->a:Lcom/nut/blehunter/qrcode/CaptureActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/b;->a:Lcom/nut/blehunter/qrcode/CaptureActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/aa;->b(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 418
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/b;->a:Lcom/nut/blehunter/qrcode/CaptureActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/qrcode/CaptureActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    :goto_0
    return-void

    .line 421
    :cond_0
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/f;->a(Ljava/lang/Throwable;)Lcom/nut/blehunter/rxApi/model/ApiError;

    move-result-object v0

    .line 422
    iget-object v1, p0, Lcom/nut/blehunter/qrcode/b;->a:Lcom/nut/blehunter/qrcode/CaptureActivity;

    iget v2, v0, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v0, v0, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 423
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/b;->a:Lcom/nut/blehunter/qrcode/CaptureActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 407
    check-cast p1, Ljava/lang/String;

    .line 1428
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/b;->a:Lcom/nut/blehunter/qrcode/CaptureActivity;

    invoke-static {p1, v3}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Z)Lcom/nut/blehunter/rxApi/model/ApiError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/qrcode/CaptureActivity;->a(Lcom/nut/blehunter/qrcode/CaptureActivity;Lcom/nut/blehunter/rxApi/model/ApiError;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1431
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/a;->b(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1432
    if-eqz v0, :cond_0

    .line 1435
    const-string v1, "nut"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1436
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1437
    const-class v1, Lcom/nut/blehunter/entity/Nut;

    .line 2049
    invoke-static {v0, v1}, Lcom/nut/blehunter/e;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 1437
    check-cast v0, Lcom/nut/blehunter/entity/Nut;

    .line 1438
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v1

    iget-object v2, v0, Lcom/nut/blehunter/entity/Nut;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/provider/l;->e(Ljava/lang/String;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1439
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1440
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1441
    invoke-static {}, Lcom/nut/blehunter/provider/l;->b()Lcom/nut/blehunter/provider/l;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Lcom/nut/blehunter/provider/l;->a(Ljava/util/List;Z)V

    .line 1443
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1444
    const-string v2, "device_id"

    iget-object v0, v0, Lcom/nut/blehunter/entity/Nut;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/b;->a:Lcom/nut/blehunter/qrcode/CaptureActivity;

    const/16 v2, 0x27

    invoke-virtual {v0, v2, v1}, Lcom/nut/blehunter/qrcode/CaptureActivity;->a(ILandroid/os/Bundle;)V

    .line 1447
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/b;->a:Lcom/nut/blehunter/qrcode/CaptureActivity;

    iget-object v1, p0, Lcom/nut/blehunter/qrcode/b;->a:Lcom/nut/blehunter/qrcode/CaptureActivity;

    const v2, 0x7f0600a1

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/qrcode/CaptureActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 1448
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/b;->a:Lcom/nut/blehunter/qrcode/CaptureActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/nut/blehunter/qrcode/b;->a:Lcom/nut/blehunter/qrcode/CaptureActivity;

    const-class v3, Lcom/nut/blehunter/ui/Main2Activity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/qrcode/CaptureActivity;->startActivity(Landroid/content/Intent;)V

    .line 1450
    iget-object v0, p0, Lcom/nut/blehunter/qrcode/b;->a:Lcom/nut/blehunter/qrcode/CaptureActivity;

    const-string v1, "find_mode_nut_qr_code_got"

    .line 2281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1451
    const-string v0, "NTGroupControlEvent"

    const-string v1, "ACCEPT_VIA_QRCODE"

    const-string v2, "SUCCEEDED"

    const-string v3, "1"

    invoke-static {v0, v1, v2, v3}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :cond_0
    return-void
.end method
