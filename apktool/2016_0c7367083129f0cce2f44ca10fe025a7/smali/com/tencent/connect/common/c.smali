.class public final Lcom/tencent/connect/common/c;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Lcom/tencent/connect/common/c;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/connect/common/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/connect/common/c;->a:Lcom/tencent/connect/common/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/connect/common/c;->b:Ljava/util/Map;

    .line 33
    iget-object v0, p0, Lcom/tencent/connect/common/c;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/connect/common/c;->b:Ljava/util/Map;

    .line 36
    :cond_0
    return-void
.end method

.method public static a()Lcom/tencent/connect/common/c;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/tencent/connect/common/c;->a:Lcom/tencent/connect/common/c;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/tencent/connect/common/c;

    invoke-direct {v0}, Lcom/tencent/connect/common/c;-><init>()V

    sput-object v0, Lcom/tencent/connect/common/c;->a:Lcom/tencent/connect/common/c;

    .line 29
    :cond_0
    sget-object v0, Lcom/tencent/connect/common/c;->a:Lcom/tencent/connect/common/c;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/tencent/tauth/b;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 88
    if-nez p1, :cond_0

    .line 89
    const-string v0, "openSDK_LOG.UIListenerManager"

    const-string v2, "getListnerWithAction action is null!"

    invoke-static {v0, v2}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 101
    :goto_0
    return-object v0

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/tencent/connect/common/c;->b:Ljava/util/Map;

    monitor-enter v2

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/tencent/connect/common/c;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/connect/common/d;

    .line 96
    iget-object v3, p0, Lcom/tencent/connect/common/c;->b:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    monitor-exit v2

    .line 98
    if-nez v0, :cond_1

    move-object v0, v1

    .line 99
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 101
    :cond_1
    iget-object v0, v0, Lcom/tencent/connect/common/d;->b:Lcom/tencent/tauth/b;

    goto :goto_0
.end method

.method public final a(ILcom/tencent/tauth/b;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-static {p1}, Lcom/tencent/open/utils/o;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    const-string v0, "openSDK_LOG.UIListenerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setListener action is null! rquestCode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 53
    :goto_0
    return-object v0

    .line 46
    :cond_0
    iget-object v2, p0, Lcom/tencent/connect/common/c;->b:Ljava/util/Map;

    monitor-enter v2

    .line 47
    :try_start_0
    iget-object v3, p0, Lcom/tencent/connect/common/c;->b:Ljava/util/Map;

    new-instance v4, Lcom/tencent/connect/common/d;

    invoke-direct {v4, p0, p1, p2}, Lcom/tencent/connect/common/d;-><init>(Lcom/tencent/connect/common/c;ILcom/tencent/tauth/b;)V

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/connect/common/d;

    .line 48
    monitor-exit v2

    .line 50
    if-nez v0, :cond_1

    move-object v0, v1

    .line 51
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 53
    :cond_1
    iget-object v0, v0, Lcom/tencent/connect/common/d;->b:Lcom/tencent/tauth/b;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/tencent/tauth/b;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 58
    .line 1414
    const-string v0, "shareToQQ"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1415
    const/16 v0, 0x2777

    .line 59
    :goto_0
    if-ne v0, v2, :cond_7

    .line 60
    const-string v0, "openSDK_LOG.UIListenerManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setListnerWithAction fail, action = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 72
    :goto_1
    return-object v0

    .line 1416
    :cond_0
    const-string v0, "shareToQzone"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1417
    const/16 v0, 0x2778

    goto :goto_0

    .line 1418
    :cond_1
    const-string v0, "addToQQFavorites"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1419
    const/16 v0, 0x2779

    goto :goto_0

    .line 1420
    :cond_2
    const-string v0, "sendToMyComputer"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1421
    const/16 v0, 0x277a

    goto :goto_0

    .line 1422
    :cond_3
    const-string v0, "shareToTroopBar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1423
    const/16 v0, 0x277b

    goto :goto_0

    .line 1424
    :cond_4
    const-string v0, "action_login"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1425
    const/16 v0, 0x2b5d

    goto :goto_0

    .line 1426
    :cond_5
    const-string v0, "action_request"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1427
    const/16 v0, 0x2774

    goto :goto_0

    :cond_6
    move v0, v2

    .line 1429
    goto :goto_0

    .line 65
    :cond_7
    iget-object v2, p0, Lcom/tencent/connect/common/c;->b:Ljava/util/Map;

    monitor-enter v2

    .line 66
    :try_start_0
    iget-object v3, p0, Lcom/tencent/connect/common/c;->b:Ljava/util/Map;

    new-instance v4, Lcom/tencent/connect/common/d;

    invoke-direct {v4, p0, v0, p2}, Lcom/tencent/connect/common/d;-><init>(Lcom/tencent/connect/common/c;ILcom/tencent/tauth/b;)V

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/connect/common/d;

    .line 67
    monitor-exit v2

    .line 69
    if-nez v0, :cond_8

    move-object v0, v1

    .line 70
    goto :goto_1

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 72
    :cond_8
    iget-object v0, v0, Lcom/tencent/connect/common/d;->b:Lcom/tencent/tauth/b;

    goto :goto_1
.end method

.method public final a(IILandroid/content/Intent;Lcom/tencent/tauth/b;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v6, -0x6

    const/4 v0, 0x0

    const/4 v5, -0x4

    .line 183
    const-string v2, "openSDK_LOG.UIListenerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onActivityResult req="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " res="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/h;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    invoke-static {p1}, Lcom/tencent/open/utils/o;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 2079
    if-nez v2, :cond_1

    .line 2080
    const-string v2, "openSDK_LOG.UIListenerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getListner action is null! rquestCode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2081
    const/4 v2, 0x0

    .line 187
    :goto_0
    if-nez v2, :cond_11

    .line 188
    if-eqz p4, :cond_4

    .line 2170
    const/16 v2, 0x2b5d

    if-ne p1, v2, :cond_2

    .line 2172
    const-string v2, "openSDK_LOG.UIListenerManager"

    const-string v3, "\u767b\u5f55\u7684\u63a5\u53e3\u56de\u8c03\u4e0d\u80fd\u91cd\u65b0\u6784\u5efa\uff0c\u6682\u65f6\u65e0\u6cd5\u63d0\u4f9b\uff0c\u5148\u8bb0\u5f55\u4e0b\u6765\u8fd9\u79cd\u60c5\u51b5\u662f\u5426\u5b58\u5728"

    invoke-static {v2, v3}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_0
    :goto_1
    const/4 v2, -0x1

    if-ne p2, v2, :cond_10

    .line 197
    if-nez p3, :cond_5

    .line 198
    new-instance v0, Lcom/tencent/tauth/d;

    const-string v2, "onActivityResult intent data is null."

    const-string v3, "onActivityResult intent data is null."

    invoke-direct {v0, v6, v2, v3}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    move v0, v1

    .line 274
    :goto_2
    return v0

    .line 2084
    :cond_1
    invoke-virtual {p0, v2}, Lcom/tencent/connect/common/c;->a(Ljava/lang/String;)Lcom/tencent/tauth/b;

    move-result-object v2

    goto :goto_0

    .line 2173
    :cond_2
    const/16 v2, 0x2b61

    if-ne p1, v2, :cond_3

    .line 2174
    const-string v2, "openSDK_LOG.UIListenerManager"

    const-string v3, "Social Api \u7684\u63a5\u53e3\u56de\u8c03\u9700\u8981\u4f7f\u7528param\u6765\u91cd\u65b0\u6784\u5efa\uff0c\u6682\u65f6\u65e0\u6cd5\u63d0\u4f9b\uff0c\u5148\u8bb0\u5f55\u4e0b\u6765\u8fd9\u79cd\u60c5\u51b5\u662f\u5426\u5b58\u5728"

    invoke-static {v2, v3}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2175
    :cond_3
    const/16 v2, 0x2b62

    if-ne p1, v2, :cond_0

    .line 2176
    const-string v2, "openSDK_LOG.UIListenerManager"

    const-string v3, "Social Api \u7684H5\u63a5\u53e3\u56de\u8c03\u9700\u8981\u4f7f\u7528param\u6765\u91cd\u65b0\u6784\u5efa\uff0c\u6682\u65f6\u65e0\u6cd5\u63d0\u4f9b\uff0c\u5148\u8bb0\u5f55\u4e0b\u6765\u8fd9\u79cd\u60c5\u51b5\u662f\u5426\u5b58\u5728"

    invoke-static {v2, v3}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 191
    :cond_4
    const-string v1, "openSDK_LOG.UIListenerManager"

    const-string v2, "onActivityResult can\'t find the listener"

    invoke-static {v1, v2}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 203
    :cond_5
    const-string v2, "key_action"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    const-string v3, "action_login"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 206
    const-string v2, "key_error_code"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 207
    if-nez v0, :cond_8

    .line 208
    const-string v0, "key_response"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    if-eqz v2, :cond_7

    .line 211
    :try_start_0
    invoke-static {v2}, Lcom/tencent/open/utils/s;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 212
    invoke-interface {p4, v0}, Lcom/tencent/tauth/b;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    move v0, v1

    .line 274
    goto :goto_2

    .line 213
    :catch_0
    move-exception v0

    .line 214
    new-instance v3, Lcom/tencent/tauth/d;

    const-string v4, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v3, v5, v4, v2}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v3}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    .line 216
    const-string v2, "openSDK_LOG.UIListenerManager"

    const-string v3, "OpenUi, onActivityResult, json error"

    invoke-static {v2, v3, v0}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 220
    :cond_7
    const-string v0, "openSDK_LOG.UIListenerManager"

    const-string v2, "OpenUi, onActivityResult, onComplete"

    invoke-static {v0, v2}, Lcom/tencent/open/a/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p4, v0}, Lcom/tencent/tauth/b;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 225
    :cond_8
    const-string v2, "openSDK_LOG.UIListenerManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OpenUi, onActivityResult, onError = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/open/a/h;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v2, "key_error_msg"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    const-string v3, "key_error_detail"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    new-instance v4, Lcom/tencent/tauth/d;

    invoke-direct {v4, v0, v2, v3}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v4}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    goto :goto_3

    .line 230
    :cond_9
    const-string v3, "action_share"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 231
    const-string v0, "result"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    const-string v2, "response"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    const-string v3, "cancel"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 235
    invoke-interface {p4}, Lcom/tencent/tauth/b;->a()V

    goto :goto_3

    .line 236
    :cond_a
    const-string v3, "error"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 237
    new-instance v0, Lcom/tencent/tauth/d;

    const-string v3, "unknown error"

    invoke-direct {v0, v6, v3, v2}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    goto :goto_3

    .line 239
    :cond_b
    const-string v3, "complete"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 241
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    if-nez v2, :cond_c

    const-string v0, "{\"ret\": 0}"

    :goto_4
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-interface {p4, v3}, Lcom/tencent/tauth/b;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    .line 244
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 245
    new-instance v0, Lcom/tencent/tauth/d;

    const-string v3, "json error"

    invoke-direct {v0, v5, v3, v2}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    goto/16 :goto_3

    :cond_c
    move-object v0, v2

    .line 241
    goto :goto_4

    .line 250
    :cond_d
    const-string v2, "key_error_code"

    invoke-virtual {p3, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 251
    if-nez v0, :cond_f

    .line 252
    const-string v0, "key_response"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_e

    .line 255
    :try_start_2
    invoke-static {v0}, Lcom/tencent/open/utils/s;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 256
    invoke-interface {p4, v2}, Lcom/tencent/tauth/b;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_3

    .line 258
    :catch_2
    move-exception v2

    new-instance v2, Lcom/tencent/tauth/d;

    const-string v3, "\u670d\u52a1\u5668\u8fd4\u56de\u6570\u636e\u683c\u5f0f\u6709\u8bef!"

    invoke-direct {v2, v5, v3, v0}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v2}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    goto/16 :goto_3

    .line 262
    :cond_e
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p4, v0}, Lcom/tencent/tauth/b;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 265
    :cond_f
    const-string v2, "key_error_msg"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    const-string v3, "key_error_detail"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    new-instance v4, Lcom/tencent/tauth/d;

    invoke-direct {v4, v0, v2, v3}, Lcom/tencent/tauth/d;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v4}, Lcom/tencent/tauth/b;->a(Lcom/tencent/tauth/d;)V

    goto/16 :goto_3

    .line 271
    :cond_10
    invoke-interface {p4}, Lcom/tencent/tauth/b;->a()V

    goto/16 :goto_3

    :cond_11
    move-object p4, v2

    goto/16 :goto_1
.end method
