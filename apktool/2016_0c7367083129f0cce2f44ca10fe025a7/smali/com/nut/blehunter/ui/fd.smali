.class final Lcom/nut/blehunter/ui/fd;
.super Ljava/lang/Object;
.source "ResetPasswordActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/fc;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/fc;)V
    .locals 0

    .prologue
    .line 441
    iput-object p1, p0, Lcom/nut/blehunter/ui/fd;->a:Lcom/nut/blehunter/ui/fc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/nut/blehunter/ui/fd;->a:Lcom/nut/blehunter/ui/fc;

    iget-object v0, v0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->d(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/fd;->a:Lcom/nut/blehunter/ui/fc;

    iget-object v1, v1, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->e(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Lcom/nut/blehunter/ui/widget/ClearEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/j;->b(Landroid/widget/TextView;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    iget-object v0, p0, Lcom/nut/blehunter/ui/fd;->a:Lcom/nut/blehunter/ui/fc;

    iget-object v0, v0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->f(Lcom/nut/blehunter/ui/ResetPasswordActivity;)I

    .line 454
    iget-object v0, p0, Lcom/nut/blehunter/ui/fd;->a:Lcom/nut/blehunter/ui/fc;

    iget-object v0, v0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->g(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Z

    .line 455
    iget-object v0, p0, Lcom/nut/blehunter/ui/fd;->a:Lcom/nut/blehunter/ui/fc;

    iget-object v0, v0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/nut/blehunter/ui/fd;->a:Lcom/nut/blehunter/ui/fc;

    iget-object v0, v0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ResetPasswordActivity;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/fd;->a:Lcom/nut/blehunter/ui/fc;

    iget-object v0, v0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->a(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f060056

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 459
    iget-object v0, p0, Lcom/nut/blehunter/ui/fd;->a:Lcom/nut/blehunter/ui/fc;

    iget-object v0, v0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->a(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 463
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/fd;->a:Lcom/nut/blehunter/ui/fc;

    iget-object v0, v0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->h(Lcom/nut/blehunter/ui/ResetPasswordActivity;)V

    .line 464
    return-void

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/fd;->a:Lcom/nut/blehunter/ui/fc;

    iget-object v0, v0, Lcom/nut/blehunter/ui/fc;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->a(Lcom/nut/blehunter/ui/ResetPasswordActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 444
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 448
    return-void
.end method
