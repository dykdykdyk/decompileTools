.class public Lcom/nut/blehunter/ui/SendMailActivity;
.super Lcom/nut/blehunter/ui/b;
.source "SendMailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/nut/blehunter/ui/b;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 42
    :pswitch_0
    const v0, 0x7f0d0144

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SendMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lcom/nut/blehunter/d/i;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 44
    const v0, 0x7f0601e7

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto :goto_0

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/nut/blehunter/ui/SendMailActivity;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/nut/blehunter/ui/SendMailActivity;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/nut/blehunter/ui/SendMailActivity;->b:Ljava/lang/String;

    .line 1055
    invoke-static {}, Lcom/nut/blehunter/rxApi/a;->a()Lcom/nut/blehunter/rxApi/service/AuthLoginService;

    move-result-object v3

    const-string v4, "mailCaptcha"

    invoke-static {v1, v2, v0}, Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;->createGetCaptchaRequestBodyWithEmail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Lcom/nut/blehunter/rxApi/service/AuthLoginService;->getCaptcha(Ljava/lang/String;Lcom/nut/blehunter/rxApi/model/GetCaptchaRequestBody;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/nut/blehunter/ui/gg;

    invoke-direct {v1, p0}, Lcom/nut/blehunter/ui/gg;-><init>(Lcom/nut/blehunter/ui/SendMailActivity;)V

    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0

    .line 40
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0145
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/nut/blehunter/ui/b;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SendMailActivity;->setContentView(I)V

    .line 30
    const v0, 0x7f0601d8

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SendMailActivity;->a(I)V

    .line 32
    invoke-virtual {p0}, Lcom/nut/blehunter/ui/SendMailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 33
    const-string v1, "country"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/nut/blehunter/ui/SendMailActivity;->a:Ljava/lang/String;

    .line 34
    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/ui/SendMailActivity;->b:Ljava/lang/String;

    .line 35
    const v0, 0x7f0d0145

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/ui/SendMailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method
