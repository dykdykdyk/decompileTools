.class Lorg/android/agoo/impl/PushService$3$1;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/android/agoo/impl/PushService$3;


# direct methods
.method constructor <init>(Lorg/android/agoo/impl/PushService$3;)V
    .locals 0

    .prologue
    .line 665
    iput-object p1, p0, Lorg/android/agoo/impl/PushService$3$1;->a:Lorg/android/agoo/impl/PushService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 670
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/impl/PushService$3$1;->a:Lorg/android/agoo/impl/PushService$3;

    iget-object v1, v1, Lorg/android/agoo/impl/PushService$3;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v1}, Lorg/android/agoo/impl/PushService;->a(Lorg/android/agoo/impl/PushService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 671
    const-string v0, "PushService"

    const-string v1, "messageServiceBinder [probe][deviceToken==null]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :goto_0
    return-void

    .line 675
    :cond_0
    iget-object v1, p0, Lorg/android/agoo/impl/PushService$3$1;->a:Lorg/android/agoo/impl/PushService$3;

    iget-object v1, v1, Lorg/android/agoo/impl/PushService$3;->a:Lorg/android/agoo/impl/PushService;

    .line 676
    invoke-static {v1}, Lorg/android/agoo/impl/PushService;->a(Lorg/android/agoo/impl/PushService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 677
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/android/agoo/impl/PushService$3$1;->a:Lorg/android/agoo/impl/PushService$3;

    iget-object v2, v2, Lorg/android/agoo/impl/PushService$3;->a:Lorg/android/agoo/impl/PushService;

    .line 678
    invoke-static {v2}, Lorg/android/agoo/impl/PushService;->a(Lorg/android/agoo/impl/PushService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 680
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$3$1;->a:Lorg/android/agoo/impl/PushService$3;

    iget-object v0, v0, Lorg/android/agoo/impl/PushService$3;->a:Lorg/android/agoo/impl/PushService;

    const-string v1, "ERROR_NEED_ELECTION"

    invoke-virtual {v0, v1}, Lorg/android/agoo/impl/PushService;->onHandleError(Ljava/lang/String;)V

    .line 681
    const-string v0, "PushService"

    const-string v1, "messageServiceBinder [probe][need_election]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 695
    :catch_0
    move-exception v0

    goto :goto_0

    .line 683
    :cond_1
    iget-object v1, p0, Lorg/android/agoo/impl/PushService$3$1;->a:Lorg/android/agoo/impl/PushService$3;

    iget-object v1, v1, Lorg/android/agoo/impl/PushService$3;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v1}, Lorg/android/agoo/impl/PushService;->d(Lorg/android/agoo/impl/PushService;)Lcom/umeng/message/proguard/d;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/android/agoo/impl/PushService$3$1;->a:Lorg/android/agoo/impl/PushService$3;

    iget-object v1, v1, Lorg/android/agoo/impl/PushService$3;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v1}, Lorg/android/agoo/impl/PushService;->d(Lorg/android/agoo/impl/PushService;)Lcom/umeng/message/proguard/d;

    move-result-object v1

    .line 1919
    iget-boolean v2, v1, Lcom/umeng/message/proguard/d;->b:Z

    if-eqz v2, :cond_3

    .line 683
    :goto_1
    if-nez v0, :cond_5

    .line 685
    :cond_2
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$3$1;->a:Lorg/android/agoo/impl/PushService$3;

    iget-object v0, v0, Lorg/android/agoo/impl/PushService$3;->a:Lorg/android/agoo/impl/PushService;

    const-string v1, "command_restart_sudo"

    invoke-virtual {v0, v1}, Lorg/android/agoo/impl/PushService;->onHandleCommand(Ljava/lang/String;)V

    .line 686
    const-string v0, "PushService"

    const-string v1, "messageServiceBinder [probe][restart_sudo]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1922
    :cond_3
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/umeng/message/proguard/d;->b:Z

    .line 1923
    iget-boolean v2, v1, Lcom/umeng/message/proguard/d;->c:Z

    if-eqz v2, :cond_4

    .line 1924
    const-string v2, "action_ping"

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Lcom/umeng/message/proguard/d;->a(Ljava/lang/String;J)V

    .line 1925
    const-string v2, "action_ping_unlock"

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Lcom/umeng/message/proguard/d;->a(Ljava/lang/String;J)V

    goto :goto_1

    .line 1928
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 689
    :cond_5
    const-string v0, "PushService"

    const-string v1, "messageServiceBinder [probe][successfully]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
