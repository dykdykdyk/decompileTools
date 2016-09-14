.class final Lcom/sina/weibo/sdk/b/c;
.super Landroid/os/Handler;
.source "AppInstallCmdExecutor.java"


# instance fields
.field final synthetic a:Lcom/sina/weibo/sdk/b/b;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/b/b;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/sina/weibo/sdk/b/c;->a:Lcom/sina/weibo/sdk/b/b;

    .line 72
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    .line 78
    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v1, p0, Lcom/sina/weibo/sdk/b/c;->a:Lcom/sina/weibo/sdk/b/b;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sina/weibo/sdk/b/a;

    invoke-static {v1, v0}, Lcom/sina/weibo/sdk/b/b;->a(Lcom/sina/weibo/sdk/b/b;Lcom/sina/weibo/sdk/b/a;)V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/sina/weibo/sdk/b/c;->a:Lcom/sina/weibo/sdk/b/b;

    invoke-static {v0}, Lcom/sina/weibo/sdk/b/b;->a(Lcom/sina/weibo/sdk/b/b;)Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 84
    iget-object v0, p0, Lcom/sina/weibo/sdk/b/c;->a:Lcom/sina/weibo/sdk/b/b;

    invoke-static {v0}, Lcom/sina/weibo/sdk/b/b;->b(Lcom/sina/weibo/sdk/b/b;)V

    goto :goto_0

    .line 78
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
