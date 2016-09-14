.class final Lcom/nut/blehunter/ui/fa;
.super Lcom/nut/blehunter/rxApi/j;
.source "ResetPasswordActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/ResetPasswordActivity;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/ResetPasswordActivity;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/nut/blehunter/ui/fa;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-direct {p0}, Lcom/nut/blehunter/rxApi/j;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nut/blehunter/rxApi/model/ApiError;)V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/nut/blehunter/ui/fa;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/fa;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 329
    iget-object v0, p0, Lcom/nut/blehunter/ui/fa;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0, p1}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->a(Lcom/nut/blehunter/ui/ResetPasswordActivity;Lcom/nut/blehunter/rxApi/model/ApiError;)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Lcom/nut/blehunter/ui/fa;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-virtual {v0}, Lcom/nut/blehunter/ui/ResetPasswordActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/nut/blehunter/ui/fa;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    invoke-static {v0}, Lcom/nut/blehunter/ui/b/a/k;->b(Landroid/support/v4/app/FragmentActivity;)V

    .line 320
    iget-object v0, p0, Lcom/nut/blehunter/ui/fa;->a:Lcom/nut/blehunter/ui/ResetPasswordActivity;

    .line 1352
    new-instance v1, Lcom/nut/blehunter/ui/b/a/b;

    invoke-direct {v1, v0}, Lcom/nut/blehunter/ui/b/a/b;-><init>(Landroid/content/Context;)V

    .line 1353
    const v2, 0x7f0600e5

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->a(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 1354
    const v2, 0x7f0600ca

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/ui/b/a/b;->b(I)Lcom/nut/blehunter/ui/b/a/b;

    .line 1355
    const v2, 0x7f06008c

    new-instance v3, Lcom/nut/blehunter/ui/fb;

    invoke-direct {v3, v0}, Lcom/nut/blehunter/ui/fb;-><init>(Lcom/nut/blehunter/ui/ResetPasswordActivity;)V

    invoke-virtual {v1, v2, v3}, Lcom/nut/blehunter/ui/b/a/b;->a(ILcom/nut/blehunter/ui/b/a/d;)Lcom/nut/blehunter/ui/b/a/b;

    .line 1363
    invoke-virtual {v1}, Lcom/nut/blehunter/ui/b/a/b;->a()Lcom/nut/blehunter/ui/b/a/a;

    move-result-object v1

    .line 2060
    const-string v2, "baseDialog"

    invoke-virtual {v1, v0, v2}, Lcom/nut/blehunter/ui/b/a/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x0

    return v0
.end method
