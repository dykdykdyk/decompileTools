.class Lorg/android/agoo/impl/PushService$b;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/android/agoo/impl/PushService;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Bundle;

.field private d:Lcom/umeng/message/proguard/d;


# direct methods
.method public constructor <init>(Lorg/android/agoo/impl/PushService;Ljava/lang/String;Landroid/os/Bundle;Lcom/umeng/message/proguard/d;)V
    .locals 0

    .prologue
    .line 759
    iput-object p1, p0, Lorg/android/agoo/impl/PushService$b;->a:Lorg/android/agoo/impl/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    iput-object p2, p0, Lorg/android/agoo/impl/PushService$b;->b:Ljava/lang/String;

    .line 761
    iput-object p3, p0, Lorg/android/agoo/impl/PushService$b;->c:Landroid/os/Bundle;

    .line 762
    iput-object p4, p0, Lorg/android/agoo/impl/PushService$b;->d:Lcom/umeng/message/proguard/d;

    .line 763
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 769
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "running tid:"

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

    .line 770
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 771
    const-string v1, "org.agoo.android.intent.action.RECEIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    iget-object v1, p0, Lorg/android/agoo/impl/PushService$b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    iget-object v1, p0, Lorg/android/agoo/impl/PushService$b;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 774
    const-string v1, "type"

    const-string v2, "common-push"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    const-string v1, "message_source"

    const-string v2, "apoll"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 778
    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cast intent:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/android/agoo/impl/PushService$b;->c:Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    iget-object v1, p0, Lorg/android/agoo/impl/PushService$b;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v1}, Lorg/android/agoo/impl/PushService;->a(Lorg/android/agoo/impl/PushService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 781
    new-instance v1, Landroid/content/Intent;

    const-string v2, "org.android.agoo.client.MessageReceiverService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 782
    iget-object v2, p0, Lorg/android/agoo/impl/PushService$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 783
    iget-object v2, p0, Lorg/android/agoo/impl/PushService$b;->b:Ljava/lang/String;

    const-string v3, "com.umeng.message.UmengMessageIntentReceiverService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 784
    const-string v2, "PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "this message pack:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/android/agoo/impl/PushService$b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    const-string v2, "PushService"

    const-string v3, "start to service..."

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :try_start_0
    new-instance v2, Lorg/android/agoo/impl/PushService$a;

    iget-object v3, p0, Lorg/android/agoo/impl/PushService$b;->a:Lorg/android/agoo/impl/PushService;

    iget-object v4, p0, Lorg/android/agoo/impl/PushService$b;->c:Landroid/os/Bundle;

    const-string v5, "i"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/android/agoo/impl/PushService$b;->d:Lcom/umeng/message/proguard/d;

    invoke-direct {v2, v3, v4, v0, v5}, Lorg/android/agoo/impl/PushService$a;-><init>(Lorg/android/agoo/impl/PushService;Ljava/lang/String;Landroid/content/Intent;Lcom/umeng/message/proguard/d;)V

    .line 790
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$b;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->a(Lorg/android/agoo/impl/PushService;)Landroid/content/Context;

    move-result-object v0

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 791
    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start service ret:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    if-nez v0, :cond_0

    .line 794
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$b;->d:Lcom/umeng/message/proguard/d;

    iget-object v1, p0, Lorg/android/agoo/impl/PushService$b;->c:Landroid/os/Bundle;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "14"

    invoke-virtual {v0, v1, v2, v3}, Lcom/umeng/message/proguard/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 801
    :cond_0
    :goto_0
    return-void

    .line 796
    :catch_0
    move-exception v0

    .line 797
    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bindService error...e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
