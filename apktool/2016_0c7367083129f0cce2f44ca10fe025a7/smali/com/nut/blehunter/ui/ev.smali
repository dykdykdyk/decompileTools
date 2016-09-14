.class final Lcom/nut/blehunter/ui/ev;
.super Ljava/lang/Object;
.source "RegisterActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/eu;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/eu;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/nut/blehunter/ui/ev;->a:Lcom/nut/blehunter/ui/eu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/nut/blehunter/ui/ev;->a:Lcom/nut/blehunter/ui/eu;

    iget-object v0, v0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->e(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/ev;->a:Lcom/nut/blehunter/ui/eu;

    iget-object v1, v1, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/RegisterActivity;->f(Lcom/nut/blehunter/ui/RegisterActivity;)Lcom/nut/blehunter/ui/widget/ClearEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/j;->a(Landroid/widget/TextView;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lcom/nut/blehunter/ui/ev;->a:Lcom/nut/blehunter/ui/eu;

    iget-object v0, v0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->g(Lcom/nut/blehunter/ui/RegisterActivity;)I

    .line 572
    iget-object v0, p0, Lcom/nut/blehunter/ui/ev;->a:Lcom/nut/blehunter/ui/eu;

    iget-object v0, v0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->h(Lcom/nut/blehunter/ui/RegisterActivity;)Z

    .line 573
    iget-object v0, p0, Lcom/nut/blehunter/ui/ev;->a:Lcom/nut/blehunter/ui/eu;

    iget-object v0, v0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    iget-object v0, v0, Lcom/nut/blehunter/ui/RegisterActivity;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/nut/blehunter/ui/ev;->a:Lcom/nut/blehunter/ui/eu;

    iget-object v0, v0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    iget-object v0, v0, Lcom/nut/blehunter/ui/RegisterActivity;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 576
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/ev;->a:Lcom/nut/blehunter/ui/eu;

    iget-object v0, v0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->b(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f060056

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 577
    iget-object v0, p0, Lcom/nut/blehunter/ui/ev;->a:Lcom/nut/blehunter/ui/eu;

    iget-object v0, v0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->b(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 581
    :goto_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/ev;->a:Lcom/nut/blehunter/ui/eu;

    iget-object v0, v0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->i(Lcom/nut/blehunter/ui/RegisterActivity;)V

    .line 582
    return-void

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/ev;->a:Lcom/nut/blehunter/ui/eu;

    iget-object v0, v0, Lcom/nut/blehunter/ui/eu;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/RegisterActivity;->b(Lcom/nut/blehunter/ui/RegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 562
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 566
    return-void
.end method
