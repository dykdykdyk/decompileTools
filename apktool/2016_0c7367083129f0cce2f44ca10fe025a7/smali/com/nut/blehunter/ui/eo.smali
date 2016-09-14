.class final Lcom/nut/blehunter/ui/eo;
.super Lcom/nut/blehunter/rxApi/j;
.source "RegisterActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/RegisterActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/RegisterActivity;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/nut/blehunter/ui/eo;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/nut/blehunter/ui/eo;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    :goto_0
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/eo;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 335
    iget-object v0, p0, Lcom/nut/blehunter/ui/eo;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0, p1}, Lcom/nut/blehunter/ui/RegisterActivity;->a(Lcom/nut/blehunter/ui/RegisterActivity;Lcom/nut/blehunter/rxApi/model/ApiError;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/nut/blehunter/ui/eo;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/eo;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->a(Lcom/nut/blehunter/ui/RegisterActivity;)I

    .line 349
    iget-object v0, p0, Lcom/nut/blehunter/ui/eo;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 350
    iget-object v0, p0, Lcom/nut/blehunter/ui/eo;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    iget-object v0, v0, Lcom/nut/blehunter/ui/RegisterActivity;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 351
    iget-object v0, p0, Lcom/nut/blehunter/ui/eo;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->b(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method
