.class final Lcom/tencent/open/utils/m;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/tencent/open/utils/l;


# direct methods
.method constructor <init>(Lcom/tencent/open/utils/l;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/tencent/open/utils/m;->b:Lcom/tencent/open/utils/l;

    iput-object p2, p0, Lcom/tencent/open/utils/m;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/utils/m;->b:Lcom/tencent/open/utils/l;

    invoke-static {v0}, Lcom/tencent/open/utils/l;->a(Lcom/tencent/open/utils/l;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "http://cgi.connect.qq.com/qqconnectopen/openapi/policy_conf"

    const-string v2, "GET"

    iget-object v3, p0, Lcom/tencent/open/utils/m;->a:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/open/utils/HttpUtils;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/open/utils/t;

    move-result-object v0

    .line 196
    iget-object v0, v0, Lcom/tencent/open/utils/t;->a:Ljava/lang/String;

    .line 204
    invoke-static {v0}, Lcom/tencent/open/utils/s;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/tencent/open/utils/m;->b:Lcom/tencent/open/utils/l;

    invoke-static {v1, v0}, Lcom/tencent/open/utils/l;->a(Lcom/tencent/open/utils/l;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :goto_0
    iget-object v0, p0, Lcom/tencent/open/utils/m;->b:Lcom/tencent/open/utils/l;

    invoke-static {v0}, Lcom/tencent/open/utils/l;->b(Lcom/tencent/open/utils/l;)I

    .line 210
    return-void

    .line 207
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
