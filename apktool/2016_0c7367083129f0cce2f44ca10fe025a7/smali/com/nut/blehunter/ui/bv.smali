.class final Lcom/nut/blehunter/ui/bv;
.super Ljava/lang/Object;
.source "LoginActivity.java"

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
.field final synthetic a:Lcom/nut/blehunter/ui/LoginActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/LoginActivity;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/nut/blehunter/ui/bv;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/nut/blehunter/ui/bv;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/LoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/bv;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 548
    invoke-static {}, Lcom/nut/blehunter/ui/LoginActivity;->c()V

    .line 549
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 550
    iget-object v0, p0, Lcom/nut/blehunter/ui/bv;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/LoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/f;->a(Ljava/lang/Throwable;)Lcom/nut/blehunter/rxApi/model/ApiError;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/nut/blehunter/ui/bv;->a:Lcom/nut/blehunter/ui/LoginActivity;

    iget v2, v0, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v0, v0, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/nut/blehunter/ui/bv;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 537
    check-cast p1, Ljava/lang/String;

    .line 1560
    iget-object v0, p0, Lcom/nut/blehunter/ui/bv;->a:Lcom/nut/blehunter/ui/LoginActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Z)Lcom/nut/blehunter/rxApi/model/ApiError;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/ui/LoginActivity;->a(Lcom/nut/blehunter/ui/LoginActivity;Lcom/nut/blehunter/rxApi/model/ApiError;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    invoke-static {}, Lcom/nut/blehunter/ui/LoginActivity;->c()V

    .line 1562
    :goto_0
    return-void

    .line 1564
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/bv;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LoginActivity;->a(Lcom/nut/blehunter/ui/LoginActivity;)V

    .line 1566
    invoke-static {}, Lcom/nut/blehunter/entity/o;->a()Lcom/nut/blehunter/entity/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/o;->b()Lcom/nut/blehunter/entity/User;

    move-result-object v0

    .line 1567
    iget-object v1, p0, Lcom/nut/blehunter/ui/bv;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/LoginActivity;->b(Lcom/nut/blehunter/ui/LoginActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1568
    iget-object v1, p0, Lcom/nut/blehunter/ui/bv;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/nut/blehunter/ui/LoginActivity;->a(Lcom/nut/blehunter/ui/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/bv;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/LoginActivity;->b(Lcom/nut/blehunter/ui/LoginActivity;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1571
    iget-object v1, p0, Lcom/nut/blehunter/ui/bv;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/entity/User;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nut/blehunter/ui/LoginActivity;->a(Lcom/nut/blehunter/ui/LoginActivity;Ljava/lang/String;)V

    .line 1573
    :cond_2
    const-string v1, "NTAccountEvent"

    const-string v2, "LOGIN_SUCCESSFUL"

    const-string v3, "USER_ID"

    iget-object v0, v0, Lcom/nut/blehunter/entity/User;->a:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/nut/blehunter/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    iget-object v0, p0, Lcom/nut/blehunter/ui/bv;->a:Lcom/nut/blehunter/ui/LoginActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/LoginActivity;->setResult(I)V

    .line 1576
    iget-object v0, p0, Lcom/nut/blehunter/ui/bv;->a:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/LoginActivity;->finish()V

    goto :goto_0
.end method
