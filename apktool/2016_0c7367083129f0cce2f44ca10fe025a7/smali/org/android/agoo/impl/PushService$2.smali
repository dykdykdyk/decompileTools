.class Lorg/android/agoo/impl/PushService$2;
.super Landroid/content/BroadcastReceiver;
.source "PushService.java"


# instance fields
.field final synthetic a:Lorg/android/agoo/impl/PushService;


# direct methods
.method constructor <init>(Lorg/android/agoo/impl/PushService;)V
    .locals 0

    .prologue
    .line 569
    iput-object p1, p0, Lorg/android/agoo/impl/PushService$2;->a:Lorg/android/agoo/impl/PushService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 573
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 574
    const-string v1, "agoo_action_re_election"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lorg/android/agoo/impl/PushService$2;->a:Lorg/android/agoo/impl/PushService;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->c(Lorg/android/agoo/impl/PushService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :cond_0
    :goto_0
    return-void

    .line 577
    :catch_0
    move-exception v0

    .line 578
    const-string v1, "PushService"

    const-string v2, "onReceive"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
