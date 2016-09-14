.class final Lorg/android/agoo/b/e;
.super Lorg/android/agoo/service/SendMessage$Stub;
.source "MessageReceiverService.java"


# instance fields
.field final synthetic a:Lorg/android/agoo/b/d;


# direct methods
.method constructor <init>(Lorg/android/agoo/b/d;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lorg/android/agoo/b/e;->a:Lorg/android/agoo/b/d;

    invoke-direct {p0}, Lorg/android/agoo/service/SendMessage$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final doSend(Landroid/content/Intent;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    iget-object v0, p0, Lorg/android/agoo/b/e;->a:Lorg/android/agoo/b/d;

    invoke-virtual {v0}, Lorg/android/agoo/b/d;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/android/agoo/b/e;->a:Lorg/android/agoo/b/d;

    iget-object v2, p0, Lorg/android/agoo/b/e;->a:Lorg/android/agoo/b/d;

    invoke-virtual {v2}, Lorg/android/agoo/b/d;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/android/agoo/b/d;->getIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/android/agoo/b/b;->a(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x0

    return v0
.end method
