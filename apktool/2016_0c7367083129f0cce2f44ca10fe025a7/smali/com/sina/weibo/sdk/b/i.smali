.class public Lcom/sina/weibo/sdk/b/i;
.super Ljava/lang/Object;
.source "WbAppActivator.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lcom/sina/weibo/sdk/b/i;


# instance fields
.field private b:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private volatile e:Ljava/util/concurrent/locks/ReentrantLock;

.field private f:Lcom/sina/weibo/sdk/b/e;

.field private g:Lcom/sina/weibo/sdk/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/sina/weibo/sdk/b/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sina/weibo/sdk/b/i;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/b/i;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/b/i;->b:Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/sina/weibo/sdk/b/e;

    iget-object v1, p0, Lcom/sina/weibo/sdk/b/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/b/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/b/i;->f:Lcom/sina/weibo/sdk/b/e;

    .line 46
    new-instance v0, Lcom/sina/weibo/sdk/b/b;

    iget-object v1, p0, Lcom/sina/weibo/sdk/b/i;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/sina/weibo/sdk/b/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sina/weibo/sdk/b/i;->g:Lcom/sina/weibo/sdk/b/b;

    .line 47
    iput-object p2, p0, Lcom/sina/weibo/sdk/b/i;->d:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lcom/sina/weibo/sdk/b/i;
    .locals 2

    .prologue
    .line 51
    const-class v1, Lcom/sina/weibo/sdk/b/i;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sina/weibo/sdk/b/i;->c:Lcom/sina/weibo/sdk/b/i;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/sina/weibo/sdk/b/i;

    invoke-direct {v0, p0, p1}, Lcom/sina/weibo/sdk/b/i;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/sina/weibo/sdk/b/i;->c:Lcom/sina/weibo/sdk/b/i;

    .line 54
    :cond_0
    sget-object v0, Lcom/sina/weibo/sdk/b/i;->c:Lcom/sina/weibo/sdk/b/i;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/b/i;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sina/weibo/sdk/b/i;->e:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic a(Lcom/sina/weibo/sdk/b/i;Ljava/util/List;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3129
    if-eqz p1, :cond_3

    .line 3130
    iget-object v0, p0, Lcom/sina/weibo/sdk/b/i;->g:Lcom/sina/weibo/sdk/b/b;

    .line 3176
    iget-boolean v1, v0, Lcom/sina/weibo/sdk/b/b;->e:Z

    if-nez v1, :cond_0

    .line 3179
    iput-boolean v4, v0, Lcom/sina/weibo/sdk/b/b;->e:Z

    .line 3180
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/sina/weibo/sdk/b/b;->b:Landroid/os/HandlerThread;

    .line 3181
    iget-object v1, v0, Lcom/sina/weibo/sdk/b/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 3183
    iget-object v1, v0, Lcom/sina/weibo/sdk/b/b;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/sina/weibo/sdk/b/b;->c:Landroid/os/Looper;

    .line 3184
    new-instance v1, Lcom/sina/weibo/sdk/b/c;

    iget-object v2, v0, Lcom/sina/weibo/sdk/b/b;->c:Landroid/os/Looper;

    invoke-direct {v1, v0, v2}, Lcom/sina/weibo/sdk/b/c;-><init>(Lcom/sina/weibo/sdk/b/b;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/sina/weibo/sdk/b/b;->d:Lcom/sina/weibo/sdk/b/c;

    .line 3131
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 3134
    iget-object v0, p0, Lcom/sina/weibo/sdk/b/i;->g:Lcom/sina/weibo/sdk/b/b;

    .line 4188
    iget-object v1, v0, Lcom/sina/weibo/sdk/b/b;->b:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/sina/weibo/sdk/b/b;->d:Lcom/sina/weibo/sdk/b/c;

    if-nez v1, :cond_7

    .line 4189
    :cond_2
    sget-object v0, Lcom/sina/weibo/sdk/b/b;->a:Ljava/lang/String;

    const-string v1, "no thread running. please call start method first!"

    invoke-static {v0, v1}, Lcom/sina/weibo/sdk/d/i;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4190
    :cond_3
    :goto_1
    return-void

    .line 3131
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/b/a;

    .line 3132
    iget-object v2, p0, Lcom/sina/weibo/sdk/b/i;->g:Lcom/sina/weibo/sdk/b/b;

    .line 3199
    iget-object v3, v2, Lcom/sina/weibo/sdk/b/b;->b:Landroid/os/HandlerThread;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/sina/weibo/sdk/b/b;->d:Lcom/sina/weibo/sdk/b/c;

    if-nez v3, :cond_6

    .line 3200
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "no thread running. please call start method first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3202
    :cond_6
    if-eqz v0, :cond_1

    .line 3203
    iget-object v3, v2, Lcom/sina/weibo/sdk/b/b;->d:Lcom/sina/weibo/sdk/b/c;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/b/c;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 3204
    iput v4, v3, Landroid/os/Message;->what:I

    .line 3205
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3206
    iget-object v0, v2, Lcom/sina/weibo/sdk/b/b;->d:Lcom/sina/weibo/sdk/b/c;

    invoke-virtual {v0, v3}, Lcom/sina/weibo/sdk/b/c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 4192
    :cond_7
    iget-object v1, v0, Lcom/sina/weibo/sdk/b/b;->d:Lcom/sina/weibo/sdk/b/c;

    invoke-virtual {v1}, Lcom/sina/weibo/sdk/b/c;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 4193
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 4194
    iget-object v0, v0, Lcom/sina/weibo/sdk/b/b;->d:Lcom/sina/weibo/sdk/b/c;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/b/c;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/b/i;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/sina/weibo/sdk/b/i;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sina/weibo/sdk/b/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    .line 2112
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2113
    invoke-static {p0, v0}, Lcom/sina/weibo/sdk/d/p;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2115
    new-instance v2, Lcom/sina/weibo/sdk/net/k;

    invoke-direct {v2, p1}, Lcom/sina/weibo/sdk/net/k;-><init>(Ljava/lang/String;)V

    .line 2116
    const-string v3, "appkey"

    invoke-virtual {v2, v3, p1}, Lcom/sina/weibo/sdk/net/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2117
    const-string v3, "packagename"

    invoke-virtual {v2, v3, v0}, Lcom/sina/weibo/sdk/net/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2118
    const-string v0, "key_hash"

    invoke-virtual {v2, v0, v1}, Lcom/sina/weibo/sdk/net/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2119
    const-string v0, "version"

    const-string v1, "0031405000"

    invoke-virtual {v2, v0, v1}, Lcom/sina/weibo/sdk/net/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    const-string v0, "http://api.weibo.cn/2/client/common_config"

    const-string v1, "GET"

    .line 3046
    invoke-static {p0, v0, v1, v2}, Lcom/sina/weibo/sdk/net/HttpManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/k;)Ljava/lang/String;

    move-result-object v0

    .line 110
    return-object v0
.end method

.method static synthetic b(Lcom/sina/weibo/sdk/b/i;Ljava/util/List;)V
    .locals 6

    .prologue
    .line 5143
    if-eqz p1, :cond_1

    .line 5144
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 142
    :cond_1
    return-void

    .line 5144
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sina/weibo/sdk/b/d;

    .line 5145
    iget-object v2, p0, Lcom/sina/weibo/sdk/b/i;->f:Lcom/sina/weibo/sdk/b/e;

    .line 6058
    if-eqz v0, :cond_0

    .line 7058
    iget-object v3, v0, Lcom/sina/weibo/sdk/b/g;->e:Ljava/lang/String;

    .line 6058
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 8058
    iget-object v3, v0, Lcom/sina/weibo/sdk/b/d;->b:Ljava/lang/String;

    .line 6059
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6062
    iget-object v3, v2, Lcom/sina/weibo/sdk/b/e;->b:Lcom/sina/weibo/sdk/b/f;

    invoke-virtual {v3}, Lcom/sina/weibo/sdk/b/f;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 6063
    const/4 v4, 0x1

    iput v4, v3, Landroid/os/Message;->what:I

    .line 6064
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6065
    iget-object v2, v2, Lcom/sina/weibo/sdk/b/e;->b:Lcom/sina/weibo/sdk/b/f;

    .line 8074
    iget-wide v4, v0, Lcom/sina/weibo/sdk/b/g;->g:J

    .line 6065
    invoke-virtual {v2, v3, v4, v5}, Lcom/sina/weibo/sdk/b/f;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/sina/weibo/sdk/b/i;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sina/weibo/sdk/b/i;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    const-wide/32 v2, 0x36ee80

    const-wide/16 v0, 0x0

    const/4 v8, 0x0

    .line 61
    iget-object v4, p0, Lcom/sina/weibo/sdk/b/i;->b:Landroid/content/Context;

    .line 1159
    const-string v5, "com_sina_weibo_sdk"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1170
    if-eqz v4, :cond_0

    .line 1171
    const-string v5, "frequency_get_cmd"

    invoke-interface {v4, v5, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1195
    :cond_0
    if-eqz v4, :cond_1

    .line 1196
    const-string v5, "last_time_get_cmd"

    invoke-interface {v4, v5, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 64
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 65
    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 66
    sget-object v2, Lcom/sina/weibo/sdk/b/i;->a:Ljava/lang/String;

    const-string v3, "it\'s only %d ms from last time get cmd"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sina/weibo/sdk/d/i;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sina/weibo/sdk/b/j;

    invoke-direct {v1, p0, v4}, Lcom/sina/weibo/sdk/b/j;-><init>(Lcom/sina/weibo/sdk/b/i;Landroid/content/SharedPreferences;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
