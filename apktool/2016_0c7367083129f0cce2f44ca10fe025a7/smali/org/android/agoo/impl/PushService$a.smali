.class Lorg/android/agoo/impl/PushService$a;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lorg/android/agoo/impl/PushService;

.field private b:Landroid/content/Intent;

.field private c:Lcom/umeng/message/proguard/d;

.field private d:Ljava/lang/String;

.field private e:Lorg/android/agoo/service/SendMessage;

.field private f:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Lorg/android/agoo/impl/PushService;Ljava/lang/String;Landroid/content/Intent;Lcom/umeng/message/proguard/d;)V
    .locals 0

    .prologue
    .line 710
    iput-object p1, p0, Lorg/android/agoo/impl/PushService$a;->a:Lorg/android/agoo/impl/PushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    iput-object p2, p0, Lorg/android/agoo/impl/PushService$a;->d:Ljava/lang/String;

    .line 712
    iput-object p3, p0, Lorg/android/agoo/impl/PushService$a;->b:Landroid/content/Intent;

    .line 713
    iput-object p4, p0, Lorg/android/agoo/impl/PushService$a;->c:Lcom/umeng/message/proguard/d;

    .line 714
    iput-object p0, p0, Lorg/android/agoo/impl/PushService$a;->f:Landroid/content/ServiceConnection;

    .line 715
    return-void
.end method

.method static synthetic a(Lorg/android/agoo/impl/PushService$a;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a;->b:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic b(Lorg/android/agoo/impl/PushService$a;)Lorg/android/agoo/service/SendMessage;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a;->e:Lorg/android/agoo/service/SendMessage;

    return-object v0
.end method

.method static synthetic c(Lorg/android/agoo/impl/PushService$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lorg/android/agoo/impl/PushService$a;)Lcom/umeng/message/proguard/d;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a;->c:Lcom/umeng/message/proguard/d;

    return-object v0
.end method

.method static synthetic e(Lorg/android/agoo/impl/PushService$a;)Lorg/android/agoo/service/SendMessage;
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/impl/PushService$a;->e:Lorg/android/agoo/service/SendMessage;

    return-object v0
.end method

.method static synthetic f(Lorg/android/agoo/impl/PushService$a;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a;->f:Landroid/content/ServiceConnection;

    return-object v0
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 724
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MessageConnection conneted:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-static {p2}, Lorg/android/agoo/service/SendMessage$Stub;->asInterface(Landroid/os/IBinder;)Lorg/android/agoo/service/SendMessage;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/impl/PushService$a;->e:Lorg/android/agoo/service/SendMessage;

    .line 726
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onConnected current tid:"

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

    .line 727
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MessageConnection sent:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/android/agoo/impl/PushService$a;->b:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a;->e:Lorg/android/agoo/service/SendMessage;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$a;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->c(Lorg/android/agoo/impl/PushService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lorg/android/agoo/impl/PushService$a$1;

    invoke-direct {v1, p0}, Lorg/android/agoo/impl/PushService$a$1;-><init>(Lorg/android/agoo/impl/PushService$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 749
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 719
    const-string v0, "PushService"

    const-string v1, "MessageConnection disConnected"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    return-void
.end method
