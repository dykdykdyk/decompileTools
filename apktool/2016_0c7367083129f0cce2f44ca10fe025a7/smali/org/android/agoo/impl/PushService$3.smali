.class Lorg/android/agoo/impl/PushService$3;
.super Lorg/android/agoo/service/IMessageService$Stub;
.source "PushService.java"


# instance fields
.field final synthetic a:Lorg/android/agoo/impl/PushService;


# direct methods
.method constructor <init>(Lorg/android/agoo/impl/PushService;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lorg/android/agoo/impl/PushService$3;->a:Lorg/android/agoo/impl/PushService;

    invoke-direct {p0}, Lorg/android/agoo/service/IMessageService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ping()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 659
    const/4 v0, 0x1

    return v0
.end method

.method public probe()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 664
    const-string v0, "PushService"

    const-string v1, "messageServiceBinder [probe]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    new-instance v0, Lorg/android/agoo/impl/PushService$3$1;

    invoke-direct {v0, p0}, Lorg/android/agoo/impl/PushService$3$1;-><init>(Lorg/android/agoo/impl/PushService$3;)V

    invoke-static {v0}, Lcom/umeng/message/proguard/v;->a(Ljava/lang/Runnable;)V

    .line 698
    return-void
.end method
