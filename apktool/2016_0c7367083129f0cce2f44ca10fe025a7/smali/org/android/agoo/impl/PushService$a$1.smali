.class Lorg/android/agoo/impl/PushService$a$1;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/android/agoo/impl/PushService$a;


# direct methods
.method constructor <init>(Lorg/android/agoo/impl/PushService$a;)V
    .locals 0

    .prologue
    .line 729
    iput-object p1, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 733
    :try_start_0
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnected running tid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService$a;->b(Lorg/android/agoo/impl/PushService$a;)Lorg/android/agoo/service/SendMessage;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v1}, Lorg/android/agoo/impl/PushService$a;->a(Lorg/android/agoo/impl/PushService$a;)Landroid/content/Intent;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/android/agoo/service/SendMessage;->doSend(Landroid/content/Intent;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 740
    const-string v0, "PushService"

    const-string v1, "send finish. close this connection"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService$a;->e(Lorg/android/agoo/impl/PushService$a;)Lorg/android/agoo/service/SendMessage;

    .line 742
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    iget-object v0, v0, Lorg/android/agoo/impl/PushService$a;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->a(Lorg/android/agoo/impl/PushService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v1}, Lorg/android/agoo/impl/PushService$a;->f(Lorg/android/agoo/impl/PushService$a;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 743
    :goto_0
    return-void

    .line 735
    :catch_0
    move-exception v0

    .line 736
    :try_start_1
    const-string v1, "PushService"

    const-string v2, "send error"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 738
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService$a;->d(Lorg/android/agoo/impl/PushService$a;)Lcom/umeng/message/proguard/d;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v1}, Lorg/android/agoo/impl/PushService$a;->c(Lorg/android/agoo/impl/PushService$a;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "14"

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/message/proguard/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 740
    const-string v0, "PushService"

    const-string v1, "send finish. close this connection"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService$a;->e(Lorg/android/agoo/impl/PushService$a;)Lorg/android/agoo/service/SendMessage;

    .line 742
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    iget-object v0, v0, Lorg/android/agoo/impl/PushService$a;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->a(Lorg/android/agoo/impl/PushService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v1}, Lorg/android/agoo/impl/PushService$a;->f(Lorg/android/agoo/impl/PushService$a;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 740
    :catchall_0
    move-exception v0

    const-string v1, "PushService"

    const-string v2, "send finish. close this connection"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v1, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v1}, Lorg/android/agoo/impl/PushService$a;->e(Lorg/android/agoo/impl/PushService$a;)Lorg/android/agoo/service/SendMessage;

    .line 742
    iget-object v1, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    iget-object v1, v1, Lorg/android/agoo/impl/PushService$a;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v1}, Lorg/android/agoo/impl/PushService;->a(Lorg/android/agoo/impl/PushService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/impl/PushService$a$1;->a:Lorg/android/agoo/impl/PushService$a;

    invoke-static {v2}, Lorg/android/agoo/impl/PushService$a;->f(Lorg/android/agoo/impl/PushService$a;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method
