.class final Lcom/nut/blehunter/ui/cb;
.super Ljava/lang/Object;
.source "LoginActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/ca;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ca;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/nut/blehunter/ui/cb;->a:Lcom/nut/blehunter/ui/ca;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 746
    iget-object v0, p0, Lcom/nut/blehunter/ui/cb;->a:Lcom/nut/blehunter/ui/ca;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LoginActivity;->c(Lcom/nut/blehunter/ui/LoginActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/cb;->a:Lcom/nut/blehunter/ui/ca;

    iget-object v1, v1, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v1}, Lcom/nut/blehunter/ui/LoginActivity;->f(Lcom/nut/blehunter/ui/LoginActivity;)Lcom/nut/blehunter/ui/widget/ClearEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/j;->b(Landroid/widget/TextView;Landroid/widget/EditText;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/nut/blehunter/ui/cb;->a:Lcom/nut/blehunter/ui/ca;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LoginActivity;->f(Lcom/nut/blehunter/ui/LoginActivity;)Lcom/nut/blehunter/ui/widget/ClearEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/cb;->a:Lcom/nut/blehunter/ui/ca;

    iget-object v1, v1, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/ClearEditText;->setTextColor(I)V

    .line 751
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/cb;->a:Lcom/nut/blehunter/ui/ca;

    iget-object v0, v0, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/LoginActivity;->f(Lcom/nut/blehunter/ui/LoginActivity;)Lcom/nut/blehunter/ui/widget/ClearEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/nut/blehunter/ui/cb;->a:Lcom/nut/blehunter/ui/ca;

    iget-object v1, v1, Lcom/nut/blehunter/ui/ca;->b:Lcom/nut/blehunter/ui/LoginActivity;

    invoke-virtual {v1}, Lcom/nut/blehunter/ui/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/widget/ClearEditText;->setTextColor(I)V

    goto :goto_0
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 738
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 742
    return-void
.end method
