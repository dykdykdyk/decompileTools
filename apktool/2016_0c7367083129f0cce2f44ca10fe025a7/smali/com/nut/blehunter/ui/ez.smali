.class final Lcom/nut/blehunter/ui/ez;
.super Lcom/nut/blehunter/rxApi/j;
.source "ResetPasswordActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/ResetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ResetPasswordActivity;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/nut/blehunter/ui/ez;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/nut/blehunter/ui/ez;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/ez;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 289
    iget-object v0, p0, Lcom/nut/blehunter/ui/ez;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0, p1}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->a(Lcom/nut/blehunter/ui/ResetPasswordActivity;Lcom/nut/blehunter/rxApi/model/ApiError;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/nut/blehunter/ui/ez;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/ez;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 298
    iget-object v0, p0, Lcom/nut/blehunter/ui/ez;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    const v1, 0x7f060198

    invoke-static {v0, v1}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    .line 299
    iget-object v0, p0, Lcom/nut/blehunter/ui/ez;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->setResult(I)V

    .line 300
    iget-object v0, p0, Lcom/nut/blehunter/ui/ez;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->finish()V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    return v0
.end method
