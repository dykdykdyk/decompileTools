.class final Lcom/tencent/open/e;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/open/a;

.field private b:Lcom/tencent/open/d;


# direct methods
.method public constructor <init>(Lcom/tencent/open/a;Lcom/tencent/open/d;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/tencent/open/e;->a:Lcom/tencent/open/a;

    .line 93
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 94
    iput-object p2, p0, Lcom/tencent/open/e;->b:Lcom/tencent/open/d;

    .line 95
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 99
    const-string v0, "openSDK_LOG.TDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "--handleMessage--msg.WHAT = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1154
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 102
    :pswitch_1
    iget-object v2, p0, Lcom/tencent/open/e;->b:Lcom/tencent/open/d;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1149
    :try_start_0
    invoke-static {v0}, Lcom/tencent/open/utils/s;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1150
    invoke-virtual {v2, v1}, Lcom/tencent/open/d;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1152
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1153
    new-instance v1, Lcom/tencent/tauth/d;

    const/4 v3, -0x4

    const-string v4, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v1, v3, v4, v0}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/tencent/open/d;->a(Lcom/tencent/tauth/d;)V

    goto :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/open/e;->b:Lcom/tencent/open/d;

    invoke-virtual {v0}, Lcom/tencent/open/d;->a()V

    goto :goto_0

    .line 112
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/open/e;->a:Lcom/tencent/open/a;

    invoke-static {v0}, Lcom/tencent/open/a;->a(Lcom/tencent/open/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/e;->a:Lcom/tencent/open/a;

    invoke-static {v0}, Lcom/tencent/open/a;->a(Lcom/tencent/open/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/tencent/open/e;->a:Lcom/tencent/open/a;

    invoke-static {v0}, Lcom/tencent/open/a;->a(Lcom/tencent/open/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/open/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :pswitch_4
    iget-object v0, p0, Lcom/tencent/open/e;->a:Lcom/tencent/open/a;

    invoke-static {v0}, Lcom/tencent/open/a;->a(Lcom/tencent/open/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/open/e;->a:Lcom/tencent/open/a;

    invoke-static {v0}, Lcom/tencent/open/a;->a(Lcom/tencent/open/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/tencent/open/e;->a:Lcom/tencent/open/a;

    invoke-static {v0}, Lcom/tencent/open/a;->a(Lcom/tencent/open/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/tencent/open/a;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
