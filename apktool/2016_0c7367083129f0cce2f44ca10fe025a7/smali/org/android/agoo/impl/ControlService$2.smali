.class Lorg/android/agoo/impl/ControlService$2;
.super Ljava/lang/Object;
.source "ControlService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lorg/android/agoo/impl/ControlService;


# direct methods
.method constructor <init>(Lorg/android/agoo/impl/ControlService;)V
    .locals 0

    .prologue
    .line 1389
    iput-object p1, p0, Lorg/android/agoo/impl/ControlService$2;->a:Lorg/android/agoo/impl/ControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .prologue
    .line 1394
    :try_start_0
    invoke-static {p2}, Lcom/umeng/message/proguard/x;->a(Landroid/os/IBinder;)Lcom/umeng/message/proguard/w;

    move-result-object v0

    .line 1395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1396
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1397
    const-string v4, "packageName"

    iget-object v5, p0, Lorg/android/agoo/impl/ControlService$2;->a:Lorg/android/agoo/impl/ControlService;

    invoke-static {v5}, Lorg/android/agoo/impl/ControlService;->a(Lorg/android/agoo/impl/ControlService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1398
    const-string v4, "data"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1399
    const-string v4, "from"

    const-string v5, "agoo"

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1400
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/umeng/message/proguard/w;->a(Ljava/lang/String;)V

    .line 1401
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "ippConnection target time["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1401
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1409
    :goto_0
    :try_start_1
    iget-object v0, p0, Lorg/android/agoo/impl/ControlService$2;->a:Lorg/android/agoo/impl/ControlService;

    invoke-static {v0}, Lorg/android/agoo/impl/ControlService;->a(Lorg/android/agoo/impl/ControlService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1410
    const-string v0, "ControlService"

    const-string v1, "ippConnection [unbind]"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-object v0, p0, Lorg/android/agoo/impl/ControlService$2;->a:Lorg/android/agoo/impl/ControlService;

    invoke-static {v0}, Lorg/android/agoo/impl/ControlService;->a(Lorg/android/agoo/impl/ControlService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/impl/ControlService$2;->a:Lorg/android/agoo/impl/ControlService;

    invoke-static {v1}, Lorg/android/agoo/impl/ControlService;->c(Lorg/android/agoo/impl/ControlService;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1416
    :cond_0
    :goto_1
    return-void

    .line 1404
    :catch_0
    move-exception v0

    .line 1405
    const-string v1, "ControlService"

    const-string v2, "ippConnection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1413
    :catch_1
    move-exception v0

    .line 1414
    const-string v1, "ControlService"

    const-string v2, "ippConnection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 1419
    const-string v0, "ControlService"

    const-string v1, "ippConnection onServiceDisconnected  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    return-void
.end method
