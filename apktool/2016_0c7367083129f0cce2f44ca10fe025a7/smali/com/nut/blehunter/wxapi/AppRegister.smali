.class public Lcom/nut/blehunter/wxapi/AppRegister;
.super Landroid/content/BroadcastReceiver;
.source "AppRegister.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    .line 18
    invoke-static {}, Lcom/nut/blehunter/NutTrackerApplication;->a()Lcom/nut/blehunter/NutTrackerApplication;

    move-result-object v1

    const v2, 0x7f060253

    invoke-virtual {v1, v2}, Lcom/nut/blehunter/NutTrackerApplication;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 19
    return-void
.end method
