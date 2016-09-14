.class final Lcom/nut/blehunter/ui/el;
.super Ljava/lang/Object;
.source "NutSettingActivity.java"

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
.field final synthetic a:Lcom/nut/blehunter/ui/NutSettingActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/NutSettingActivity;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/nut/blehunter/ui/el;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompleted()V
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/nut/blehunter/ui/el;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    :goto_0
    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/el;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    goto :goto_0
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .prologue
    .line 601
    invoke-static {p1}, Lcom/nut/blehunter/rxApi/f;->a(Ljava/lang/Throwable;)Lcom/nut/blehunter/rxApi/model/ApiError;

    move-result-object v0

    .line 602
    iget-object v1, p0, Lcom/nut/blehunter/ui/el;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    iget v2, v0, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v0, v0, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    .line 603
    return-void
.end method

.method public final synthetic onNext(Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 590
    check-cast p1, Ljava/lang/String;

    .line 1607
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/nut/blehunter/rxApi/a;->a(Ljava/lang/String;Z)Lcom/nut/blehunter/rxApi/model/ApiError;

    move-result-object v0

    .line 1608
    if-nez v0, :cond_0

    .line 1609
    iget-object v0, p0, Lcom/nut/blehunter/ui/el;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->a(Lcom/nut/blehunter/ui/NutSettingActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->F:I

    .line 1610
    iget-object v0, p0, Lcom/nut/blehunter/ui/el;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->a(Lcom/nut/blehunter/ui/NutSettingActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v0

    iput v1, v0, Lcom/nut/blehunter/entity/Nut;->G:I

    .line 1611
    iget-object v0, p0, Lcom/nut/blehunter/ui/el;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->b(Lcom/nut/blehunter/ui/NutSettingActivity;)V

    .line 1612
    iget-object v0, p0, Lcom/nut/blehunter/ui/el;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/NutSettingActivity;->c(Lcom/nut/blehunter/ui/NutSettingActivity;)V

    .line 1613
    invoke-static {}, Lcom/nut/blehunter/provider/k;->b()Lcom/nut/blehunter/provider/k;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/el;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/NutSettingActivity;->a(Lcom/nut/blehunter/ui/NutSettingActivity;)Lcom/nut/blehunter/entity/Nut;

    move-result-object v1

    iget-object v1, v1, Lcom/nut/blehunter/entity/Nut;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/provider/k;->d(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1615
    :cond_0
    iget-object v1, p0, Lcom/nut/blehunter/ui/el;->a:Lcom/nut/blehunter/ui/NutSettingActivity;

    iget v2, v0, Lcom/nut/blehunter/rxApi/model/ApiError;->errorCode:I

    iget-object v0, v0, Lcom/nut/blehunter/rxApi/model/ApiError;->errorMsg:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/nut/blehunter/rxApi/f;->a(Landroid/support/v4/app/FragmentActivity;ILjava/lang/String;)V

    goto :goto_0
.end method
