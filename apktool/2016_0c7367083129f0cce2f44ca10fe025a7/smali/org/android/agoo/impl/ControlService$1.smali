.class Lorg/android/agoo/impl/ControlService$1;
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
    .line 1357
    iput-object p1, p0, Lorg/android/agoo/impl/ControlService$1;->a:Lorg/android/agoo/impl/ControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 1360
    const/4 v0, 0x0

    .line 1362
    :try_start_0
    invoke-static {p2}, Lorg/android/agoo/service/IMessageService$Stub;->asInterface(Landroid/os/IBinder;)Lorg/android/agoo/service/IMessageService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 1367
    :goto_0
    if-eqz v0, :cond_0

    .line 1368
    :try_start_1
    const-string v1, "ControlService"

    const-string v2, "messageService.proble"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    invoke-interface {v0}, Lorg/android/agoo/service/IMessageService;->probe()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1375
    :cond_0
    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/android/agoo/impl/ControlService$1;->a:Lorg/android/agoo/impl/ControlService;

    invoke-static {v0}, Lorg/android/agoo/impl/ControlService;->a(Lorg/android/agoo/impl/ControlService;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1376
    const-string v0, "ControlService"

    const-string v1, "messageConnection [unbind]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    iget-object v0, p0, Lorg/android/agoo/impl/ControlService$1;->a:Lorg/android/agoo/impl/ControlService;

    invoke-static {v0}, Lorg/android/agoo/impl/ControlService;->a(Lorg/android/agoo/impl/ControlService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/impl/ControlService$1;->a:Lorg/android/agoo/impl/ControlService;

    invoke-static {v1}, Lorg/android/agoo/impl/ControlService;->b(Lorg/android/agoo/impl/ControlService;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 1382
    :cond_1
    :goto_2
    return-void

    .line 1371
    :catch_0
    move-exception v0

    .line 1372
    const-string v1, "ControlService"

    const-string v2, "messageConnection"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1379
    :catch_1
    move-exception v0

    .line 1380
    const-string v1, "ControlService"

    const-string v2, "messageDisconnected"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 1385
    const-string v0, "ControlService"

    const-string v1, "messageDisconnectedon ServiceDisconnected"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    return-void
.end method
