.class final Lcom/nut/blehunter/ui/z;
.super Landroid/text/style/ClickableSpan;
.source "BindPhoneActivity.java"


# instance fields
.field final synthetic a:Lcom/nut/blehunter/ui/BindPhoneActivity;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nut/blehunter/ui/BindPhoneActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/nut/blehunter/ui/z;->a:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 359
    iput-object p2, p0, Lcom/nut/blehunter/ui/z;->b:Ljava/lang/String;

    .line 360
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 369
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/nut/blehunter/ui/z;->a:Lcom/nut/blehunter/ui/BindPhoneActivity;

    const-class v2, Lcom/nut/blehunter/ui/JumpWebViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 370
    const-string v1, "URL"

    iget-object v2, p0, Lcom/nut/blehunter/ui/z;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    iget-object v1, p0, Lcom/nut/blehunter/ui/z;->a:Lcom/nut/blehunter/ui/BindPhoneActivity;

    invoke-virtual {v1, v0}, Lcom/nut/blehunter/ui/BindPhoneActivity;->startActivity(Landroid/content/Intent;)V

    .line 372
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 365
    return-void
.end method
