.class public Lcom/nut/blehunter/push/umeng/UmengPushIntentService;
.super Lcom/umeng/message/UmengBaseIntentService;
.source "UmengPushIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/umeng/message/UmengBaseIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method protected final onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/umeng/message/UmengBaseIntentService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 26
    :try_start_0
    const-string v0, "body"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Lcom/umeng/message/a/a;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/umeng/message/a/a;-><init>(Lorg/json/JSONObject;)V

    .line 28
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/umeng/message/UTrack;->trackMsgClick(Lcom/umeng/message/a/a;)V

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "message="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "custom="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/umeng/message/a/a;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, La/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v0, v1, Lcom/umeng/message/a/a;->n:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/nut/blehunter/push/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
