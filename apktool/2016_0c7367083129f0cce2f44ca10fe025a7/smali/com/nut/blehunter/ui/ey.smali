.class final Lcom/nut/blehunter/ui/ey;
.super Lcom/nut/blehunter/rxApi/j;
.source "ResetPasswordActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/ResetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ResetPasswordActivity;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/nut/blehunter/ui/ey;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/nut/blehunter/ui/ey;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/ey;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 259
    iget-object v0, p0, Lcom/nut/blehunter/ui/ey;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0, p1}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->a(Lcom/nut/blehunter/ui/ResetPasswordActivity;Lcom/nut/blehunter/rxApi/model/ApiError;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/nut/blehunter/ui/ey;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/ey;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->b(Lcom/nut/blehunter/ui/ResetPasswordActivity;)I

    .line 273
    iget-object v0, p0, Lcom/nut/blehunter/ui/ey;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 274
    iget-object v0, p0, Lcom/nut/blehunter/ui/ey;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 275
    iget-object v0, p0, Lcom/nut/blehunter/ui/ey;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->a(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x0

    return v0
.end method
