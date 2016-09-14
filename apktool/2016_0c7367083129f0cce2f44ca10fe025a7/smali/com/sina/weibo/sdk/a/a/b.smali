.class final Lcom/sina/weibo/sdk/a/a/b;
.super Ljava/lang/Object;
.source "SsoHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/a/a/a;


# direct methods
.method constructor <init>(Lcom/sina/weibo/sdk/a/a/a;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sina/weibo/sdk/a/a/b;->a:Lcom/sina/weibo/sdk/a/a/a;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .prologue
    .line 104
    invoke-static {p2}, Lcom/sina/a/b;->a(Landroid/os/IBinder;)Lcom/sina/a/a;

    move-result-object v0

    .line 106
    :try_start_0
    invoke-interface {v0}, Lcom/sina/a/a;->a()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-interface {v0}, Lcom/sina/a/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 110
    iget-object v2, p0, Lcom/sina/weibo/sdk/a/a/b;->a:Lcom/sina/weibo/sdk/a/a/a;

    .line 1076
    iget-object v2, v2, Lcom/sina/weibo/sdk/a/a/a;->c:Landroid/app/Activity;

    .line 110
    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sina/weibo/sdk/a/a/b;->a:Lcom/sina/weibo/sdk/a/a/a;

    .line 1096
    iget-object v3, v3, Lcom/sina/weibo/sdk/a/a/a;->g:Landroid/content/ServiceConnection;

    .line 110
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 112
    iget-object v2, p0, Lcom/sina/weibo/sdk/a/a/b;->a:Lcom/sina/weibo/sdk/a/a/a;

    .line 1377
    invoke-virtual {v2, v1, v0}, Lcom/sina/weibo/sdk/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 112
    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/sina/weibo/sdk/a/a/b;->a:Lcom/sina/weibo/sdk/a/a/a;

    .line 2072
    iget-object v0, v0, Lcom/sina/weibo/sdk/a/a/a;->a:Lcom/sina/weibo/sdk/a/a/d;

    .line 113
    iget-object v1, p0, Lcom/sina/weibo/sdk/a/a/b;->a:Lcom/sina/weibo/sdk/a/a/a;

    .line 2074
    iget-object v1, v1, Lcom/sina/weibo/sdk/a/a/a;->b:Lcom/sina/weibo/sdk/a/c;

    .line 113
    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/a/a/d;->a(Lcom/sina/weibo/sdk/a/c;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sina/weibo/sdk/a/a/b;->a:Lcom/sina/weibo/sdk/a/a/a;

    .line 1072
    iget-object v0, v0, Lcom/sina/weibo/sdk/a/a/a;->a:Lcom/sina/weibo/sdk/a/a/d;

    .line 99
    iget-object v1, p0, Lcom/sina/weibo/sdk/a/a/b;->a:Lcom/sina/weibo/sdk/a/a/a;

    .line 1074
    iget-object v1, v1, Lcom/sina/weibo/sdk/a/a/a;->b:Lcom/sina/weibo/sdk/a/c;

    .line 99
    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/a/a/d;->a(Lcom/sina/weibo/sdk/a/c;)V

    .line 100
    return-void
.end method
