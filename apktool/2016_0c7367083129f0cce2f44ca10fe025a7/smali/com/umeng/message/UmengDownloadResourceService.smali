.class public Lcom/umeng/message/UmengDownloadResourceService;
.super Landroid/app/Service;
.source "UmengDownloadResourceService.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static d:Ljava/lang/Thread;


# instance fields
.field a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field b:Landroid/content/Context;

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/umeng/message/UmengDownloadResourceService;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/UmengDownloadResourceService;->TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 178
    return-void
.end method

.method private a(Lcom/umeng/message/a/a;I)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 160
    .line 1158
    iget-object v0, p1, Lcom/umeng/message/a/a;->v:Lorg/json/JSONObject;

    .line 160
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    iget-object v1, p1, Lcom/umeng/message/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    .line 163
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/umeng/message/UmengDownloadResourceService;->b:Landroid/content/Context;

    const-class v4, Lcom/umeng/message/UmengDownloadResourceService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    const-string v3, "body"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    const-string v0, "id"

    iget-object v3, p1, Lcom/umeng/message/a/a;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v0, "task_id"

    iget-object v3, p1, Lcom/umeng/message/a/a;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    const-string v0, "OPERATIOIN"

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 169
    const-string v0, "RETRY_TIME"

    invoke-virtual {v2, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 170
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->b:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 173
    sget-object v2, Lcom/umeng/message/UmengDownloadResourceService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "PendingIntent: msgId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/umeng/message/a/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",requestCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",retryTime:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/umeng/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-object v0
.end method

.method static synthetic a()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/umeng/message/UmengDownloadResourceService;->d:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic a(Ljava/io/File;J)V
    .locals 9

    .prologue
    .line 33
    .line 1363
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 1364
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1365
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1366
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    sub-long/2addr v4, v6

    cmp-long v4, v4, p1

    if-lez v4, :cond_2

    .line 1368
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1365
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static checkDir(Ljava/io/File;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 315
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    .line 1334
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_0
    const-wide/16 v4, 0x0

    .line 315
    :cond_1
    cmp-long v2, v4, p1

    if-lez v2, :cond_3

    .line 317
    sget-object v2, Lcom/umeng/message/UmengDownloadResourceService;->d:Ljava/lang/Thread;

    if-nez v2, :cond_2

    .line 318
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/umeng/message/UmengDownloadResourceService$1;

    move-wide/from16 v0, p3

    invoke-direct {v3, p0, v0, v1}, Lcom/umeng/message/UmengDownloadResourceService$1;-><init>(Ljava/io/File;J)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v2, Lcom/umeng/message/UmengDownloadResourceService;->d:Ljava/lang/Thread;

    .line 326
    :cond_2
    sget-object v3, Lcom/umeng/message/UmengDownloadResourceService;->d:Ljava/lang/Thread;

    monitor-enter v3

    .line 327
    :try_start_0
    sget-object v2, Lcom/umeng/message/UmengDownloadResourceService;->d:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 328
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    :cond_3
    return-void

    .line 1335
    :cond_4
    const-wide/16 v2, 0x0

    .line 1337
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    .line 1338
    invoke-virtual {v6}, Ljava/util/Stack;->clear()V

    .line 1340
    invoke-virtual {v6, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v4, v2

    .line 1342
    :goto_0
    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1343
    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 1345
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    .line 1346
    array-length v8, v7

    const/4 v2, 0x0

    move-wide v12, v4

    move v4, v2

    move-wide v2, v12

    :goto_1
    if-ge v4, v8, :cond_6

    aget-object v5, v7, v4

    .line 1348
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1349
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    add-long/2addr v2, v10

    .line 1346
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    move-wide v4, v2

    .line 1351
    goto :goto_0

    .line 328
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static getMessageResourceFolder(Landroid/content/Context;Lcom/umeng/message/a/a;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/umeng_push/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/umeng/message/a/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/umeng/message/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    :cond_0
    return-object v0
.end method


# virtual methods
.method public checkCache()V
    .locals 6

    .prologue
    .line 299
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService;->b:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/umeng/message/UmengDownloadResourceService;->getMessageResourceFolder(Landroid/content/Context;Lcom/umeng/message/a/a;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    const-wide/32 v2, 0x100000

    const-wide/32 v4, 0x5265c00

    invoke-static {v0, v2, v3, v4, v5}, Lcom/umeng/message/UmengDownloadResourceService;->checkDir(Ljava/io/File;JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public close(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 287
    if-eqz p1, :cond_0

    .line 288
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteAlarm(Lcom/umeng/message/a/a;I)V
    .locals 2

    .prologue
    .line 152
    sget-object v0, Lcom/umeng/message/UmengDownloadResourceService;->TAG:Ljava/lang/String;

    const-string v1, "deleteAlarm"

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->a(Lcom/umeng/message/a/a;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 154
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/umeng/message/UmengDownloadResourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 155
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 156
    return-void
.end method

.method public downloadResource(Lcom/umeng/message/a/a;I)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 133
    new-instance v0, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;-><init>(Lcom/umeng/message/UmengDownloadResourceService;Lcom/umeng/message/a/a;I)V

    .line 134
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 135
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/umeng/message/UmengDownloadResourceService$DownloadResourceTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public notification(Lcom/umeng/message/a/a;)V
    .locals 3

    .prologue
    .line 118
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getMessageHandler()Lcom/umeng/message/UHandler;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_0

    .line 120
    const-string v1, "autoupdate"

    iget-object v2, p1, Lcom/umeng/message/a/a;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lcom/umeng/message/PushAgent;->getMessageHandler()Lcom/umeng/message/UHandler;

    move-result-object v0

    check-cast v0, Lcom/umeng/message/UmengMessageHandler;

    .line 123
    if-eqz v0, :cond_0

    .line 124
    iget-object v1, p0, Lcom/umeng/message/UmengDownloadResourceService;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/umeng/message/UmengMessageHandler;->dealWithNotificationMessage(Landroid/content/Context;Lcom/umeng/message/a/a;)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    invoke-interface {v0, p0, p1}, Lcom/umeng/message/UHandler;->handleMessage(Landroid/content/Context;Lcom/umeng/message/a/a;)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->a:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 69
    iput-object p0, p0, Lcom/umeng/message/UmengDownloadResourceService;->b:Landroid/content/Context;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->c:Ljava/util/ArrayList;

    .line 71
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 114
    :goto_0
    return v0

    .line 80
    :cond_0
    const-string v0, "OPERATIOIN"

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 81
    const-string v1, "RETRY_TIME"

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 82
    const-string v2, "body"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 86
    :try_start_0
    new-instance v3, Lcom/umeng/message/a/a;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/umeng/message/a/a;-><init>(Lorg/json/JSONObject;)V

    .line 87
    const-string v2, "id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/umeng/message/a/a;->b:Ljava/lang/String;

    .line 88
    const-string v2, "task_id"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/umeng/message/a/a;->c:Ljava/lang/String;

    .line 89
    iget-object v2, p0, Lcom/umeng/message/UmengDownloadResourceService;->c:Ljava/util/ArrayList;

    iget-object v4, v3, Lcom/umeng/message/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/umeng/message/UmengDownloadResourceService;->c:Ljava/util/ArrayList;

    iget-object v4, v3, Lcom/umeng/message/a/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    packed-switch v0, :pswitch_data_0

    .line 114
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0

    .line 95
    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/umeng/message/UmengDownloadResourceService;->TAG:Ljava/lang/String;

    const-string v2, "Start Download Resource"

    invoke-static {v0, v2}, Lcom/umeng/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    add-int/lit8 v0, v1, -0x1

    .line 97
    invoke-virtual {p0, v3, v0}, Lcom/umeng/message/UmengDownloadResourceService;->setAlarm(Lcom/umeng/message/a/a;I)V

    .line 98
    invoke-virtual {p0}, Lcom/umeng/message/UmengDownloadResourceService;->checkCache()V

    .line 99
    invoke-virtual {p0, v3, v0}, Lcom/umeng/message/UmengDownloadResourceService;->downloadResource(Lcom/umeng/message/a/a;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 102
    :pswitch_1
    :try_start_2
    invoke-virtual {p0, v3, v1}, Lcom/umeng/message/UmengDownloadResourceService;->deleteAlarm(Lcom/umeng/message/a/a;I)V

    .line 103
    sget-object v0, Lcom/umeng/message/UmengDownloadResourceService;->TAG:Ljava/lang/String;

    const-string v1, "Show Notification After Downloaded Resource"

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0, v3}, Lcom/umeng/message/UmengDownloadResourceService;->notification(Lcom/umeng/message/a/a;)V

    .line 105
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->c:Ljava/util/ArrayList;

    iget-object v1, v3, Lcom/umeng/message/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/umeng/message/UmengDownloadResourceService;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/umeng/message/UmengDownloadResourceService;->stopSelf()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAlarm(Lcom/umeng/message/a/a;I)V
    .locals 8

    .prologue
    .line 142
    sget-object v0, Lcom/umeng/message/UmengDownloadResourceService;->TAG:Ljava/lang/String;

    const-string v1, "setAlarm"

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->a(Lcom/umeng/message/a/a;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 144
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/umeng/message/UmengDownloadResourceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 145
    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    add-long/2addr v4, v6

    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 147
    return-void
.end method
