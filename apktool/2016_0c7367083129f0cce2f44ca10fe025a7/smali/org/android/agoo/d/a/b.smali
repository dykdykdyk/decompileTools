.class public Lorg/android/agoo/d/a/b;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"


# instance fields
.field private volatile a:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/d/a/b;->a:Landroid/os/Handler;

    .line 37
    new-instance v0, Lorg/android/agoo/d/a/c;

    invoke-direct {v0, p0}, Lorg/android/agoo/d/a/c;-><init>(Lorg/android/agoo/d/a/b;)V

    iput-object v0, p0, Lorg/android/agoo/d/a/b;->a:Landroid/os/Handler;

    .line 42
    return-void
.end method


# virtual methods
.method final a(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 159
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/d/a/b;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lorg/android/agoo/d/a/b;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 162
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 163
    :try_start_1
    iput p1, v0, Landroid/os/Message;->what:I

    .line 164
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method final a()V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/android/agoo/d/a/b;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/a/b;->b(Landroid/os/Message;)V

    .line 85
    return-void
.end method

.method final a(Landroid/os/Message;)V
    .locals 7

    .prologue
    .line 124
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1119
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1098
    :try_start_1
    instance-of v1, v0, Lorg/android/agoo/d/a/d;

    if-eqz v1, :cond_1

    .line 1099
    check-cast v0, Lorg/android/agoo/d/a/d;

    .line 1100
    iget v1, v0, Lorg/android/agoo/d/a/d;->a:I

    .line 1101
    iget-object v2, v0, Lorg/android/agoo/d/a/d;->c:Ljava/util/Map;

    .line 1102
    iget-object v3, v0, Lorg/android/agoo/d/a/d;->d:Ljava/lang/String;

    .line 1103
    const-string v4, "AsyncHttpResponseHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onHandleMessage["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    const/16 v4, 0xc8

    if-ne v1, v4, :cond_0

    .line 1105
    invoke-virtual {p0, v2, v3}, Lorg/android/agoo/d/a/b;->a(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1116
    :catch_0
    move-exception v0

    .line 1117
    :try_start_2
    const-string v1, "AsyncHttpResponseHandler"

    const-string v2, "onHandleMessage"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1118
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/android/agoo/d/a/b;->onFailure(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 142
    :catch_1
    move-exception v0

    goto :goto_0

    .line 1107
    :cond_0
    :try_start_3
    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    iget-object v0, v0, Lorg/android/agoo/d/a/d;->b:Ljava/lang/String;

    invoke-direct {v4, v1, v0}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v4, v2, v3}, Lorg/android/agoo/d/a/b;->onFailure(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 1111
    :cond_1
    const-string v0, "AsyncHttpResponseHandler"

    const-string v1, "onHandleMessage"

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "!result instanceof IResponse"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/umeng/message/proguard/bn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "!result instanceof IResponse"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/android/agoo/d/a/b;->onFailure(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 129
    :pswitch_1
    :try_start_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Throwable;

    .line 2088
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/android/agoo/d/a/b;->onFailure(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :pswitch_2
    invoke-virtual {p0}, Lorg/android/agoo/d/a/b;->onStart()V

    goto :goto_0

    .line 135
    :pswitch_3
    invoke-virtual {p0}, Lorg/android/agoo/d/a/b;->onFinish()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 124
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/android/agoo/d/a/b;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/a/b;->b(Landroid/os/Message;)V

    .line 77
    return-void
.end method

.method public a(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0, p1, p2}, Lorg/android/agoo/d/a/b;->onSuccess(Ljava/util/Map;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method final a(Lorg/apache/http/HttpResponse;)V
    .locals 9

    .prologue
    const/4 v0, 0x0

    .line 175
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 176
    new-instance v2, Lorg/android/agoo/d/a/d;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/android/agoo/d/a/d;-><init>(Lorg/android/agoo/d/a/b;B)V

    .line 177
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/android/agoo/d/a/d;->b:Ljava/lang/String;

    .line 178
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    .line 2194
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 2196
    array-length v5, v3

    :goto_0
    if-ge v0, v5, :cond_1

    aget-object v6, v3, v0

    .line 2197
    invoke-interface {v6}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2198
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2201
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 2202
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2205
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2196
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_1
    iput-object v4, v2, Lorg/android/agoo/d/a/d;->c:Ljava/util/Map;

    .line 179
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    iput v0, v2, Lorg/android/agoo/d/a/d;->a:I

    .line 181
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_2

    .line 183
    new-instance v1, Lorg/apache/http/entity/BufferedHttpEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/BufferedHttpEntity;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 184
    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lorg/android/agoo/d/a/d;->d:Ljava/lang/String;

    .line 3072
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lorg/android/agoo/d/a/b;->a(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/android/agoo/d/a/b;->b(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_1
    return-void

    .line 187
    :catch_0
    move-exception v0

    .line 188
    invoke-virtual {p0, v0}, Lorg/android/agoo/d/a/b;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method final b(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/d/a/b;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    iget-object v0, p0, Lorg/android/agoo/d/a/b;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual {p0, p1}, Lorg/android/agoo/d/a/b;->a(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 61
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lorg/android/agoo/d/a/b;->onFailure(Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public onFailure(Ljava/lang/Throwable;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0, p1, p3}, Lorg/android/agoo/d/a/b;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public final onFinish()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public final onStart()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    return-void
.end method

.method public onSuccess(Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0, p2}, Lorg/android/agoo/d/a/b;->onSuccess(Ljava/lang/String;)V

    .line 65
    return-void
.end method
