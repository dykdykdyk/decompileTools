.class public Lcom/nut/blehunter/wxapi/WXEntryActivity;
.super Landroid/app/Activity;
.source "WXEntryActivity.java"

# interfaces
.implements Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;


# instance fields
.field private a:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const v2, 0x7f060253

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030046

    invoke-virtual {p0, v0}, Lcom/nut/blehunter/wxapi/WXEntryActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0, v2}, Lcom/nut/blehunter/wxapi/WXEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;Z)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/wxapi/WXEntryActivity;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 35
    iget-object v0, p0, Lcom/nut/blehunter/wxapi/WXEntryActivity;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0, v2}, Lcom/nut/blehunter/wxapi/WXEntryActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 36
    iget-object v0, p0, Lcom/nut/blehunter/wxapi/WXEntryActivity;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-virtual {p0}, Lcom/nut/blehunter/wxapi/WXEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 37
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 43
    invoke-virtual {p0, p1}, Lcom/nut/blehunter/wxapi/WXEntryActivity;->setIntent(Landroid/content/Intent;)V

    .line 44
    iget-object v0, p0, Lcom/nut/blehunter/wxapi/WXEntryActivity;->a:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v0, p1, p0}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->handleIntent(Landroid/content/Intent;Lcom/tencent/mm/sdk/openapi/IWXAPIEventHandler;)Z

    .line 45
    return-void
.end method

.method public onReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)V
    .locals 0

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseReq;->getType()I

    .line 59
    return-void
.end method

.method public onResp(Lcom/tencent/mm/sdk/modelbase/BaseResp;)V
    .locals 3

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onResp="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, La/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p1}, Lcom/tencent/mm/sdk/modelbase/BaseResp;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 66
    :pswitch_0
    check-cast p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;

    .line 67
    iget v0, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->errCode:I

    packed-switch v0, :pswitch_data_1

    .line 81
    :goto_1
    invoke-virtual {p0}, Lcom/nut/blehunter/wxapi/WXEntryActivity;->finish()V

    goto :goto_0

    .line 69
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u5fae\u4fe1Code\u6210\u529fcode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nutspace.action.share_auth"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 71
    const-string v1, "code"

    iget-object v2, p1, Lcom/tencent/mm/sdk/modelmsg/SendAuth$Resp;->code:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_1

    .line 85
    :pswitch_2
    check-cast p1, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp;

    .line 86
    iget v0, p1, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Resp;->errCode:I

    sparse-switch v0, :sswitch_data_0

    .line 96
    :goto_2
    invoke-virtual {p0}, Lcom/nut/blehunter/wxapi/WXEntryActivity;->finish()V

    goto :goto_0

    .line 88
    :sswitch_0
    const v0, 0x7f0601b7

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->a(Landroid/content/Context;I)V

    goto :goto_2

    .line 91
    :sswitch_1
    const v0, 0x7f0601b6

    invoke-static {p0, v0}, Lcom/nut/blehunter/d/o;->b(Landroid/content/Context;I)V

    goto :goto_2

    .line 64
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 67
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 86
    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method
