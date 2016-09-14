.class final Lcom/nut/blehunter/ui/et;
.super Landroid/text/style/ClickableSpan;
.source "RegisterActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/RegisterActivity;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/RegisterActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/nut/blehunter/ui/et;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 302
    iput-object p2, p0, Lcom/nut/blehunter/ui/et;->b:Ljava/lang/String;

    .line 303
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 312
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nut/blehunter/ui/et;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const-class v2, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    const-string v1, "URL"

    iget-object v2, p0, Lcom/nut/blehunter/ui/et;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    iget-object v1, p0, Lcom/nut/blehunter/ui/et;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/RegisterActivity;->startActivity(Landroid/content/Intent;)V

    .line 315
    iget-object v0, p0, Lcom/nut/blehunter/ui/et;->b:Ljava/lang/String;

    sget-object v1, Lcom/nut/blehunter/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/nut/blehunter/ui/et;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const-string v1, "register_user_agreement"

    .line 1281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/nut/blehunter/ui/et;->b:Ljava/lang/String;

    sget-object v1, Lcom/nut/blehunter/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/nut/blehunter/ui/et;->a:Lcom/nut/blehunter/ui/RegisterActivity;

    const-string v1, "register_privary_policy"

    .line 2281
    invoke-static {v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 308
    return-void
.end method
