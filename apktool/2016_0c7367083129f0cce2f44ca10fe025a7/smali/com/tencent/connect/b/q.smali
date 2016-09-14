.class final Lcom/tencent/connect/b/q;
.super Landroid/os/Handler;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/connect/b/j;

.field private b:Lcom/tencent/connect/b/p;


# direct methods
.method public constructor <init>(Lcom/tencent/connect/b/j;Lcom/tencent/connect/b/p;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/tencent/connect/b/q;->a:Lcom/tencent/connect/b/j;

    .line 169
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 170
    iput-object p2, p0, Lcom/tencent/connect/b/q;->b:Lcom/tencent/connect/b/p;

    .line 171
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1217
    :goto_0
    return-void

    .line 177
    :pswitch_0
    iget-object v2, p0, Lcom/tencent/connect/b/q;->b:Lcom/tencent/connect/b/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1211
    :try_start_0
    invoke-static {v0}, Lcom/tencent/open/utils/s;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1212
    invoke-virtual {v2, v1}, Lcom/tencent/connect/b/p;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1214
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 1215
    new-instance v1, Lcom/tencent/tauth/d;

    const/4 v3, -0x4

    const-string v4, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v1, v3, v4, v0}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/tencent/connect/b/p;->a(Lcom/tencent/tauth/d;)V

    goto :goto_0

    .line 181
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/connect/b/q;->b:Lcom/tencent/connect/b/p;

    invoke-virtual {v0}, Lcom/tencent/connect/b/p;->a()V

    goto :goto_0

    .line 187
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/connect/b/q;->a:Lcom/tencent/connect/b/j;

    invoke-static {v0}, Lcom/tencent/connect/b/j;->a(Lcom/tencent/connect/b/j;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/tencent/connect/b/j;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
