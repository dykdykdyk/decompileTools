.class public final Lcom/tencent/open/a/a;
.super Lcom/tencent/open/a/k;
.source "ProGuard"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field a:Landroid/os/HandlerThread;

.field private c:Lcom/tencent/open/a/b;

.field private d:Ljava/io/FileWriter;

.field private e:Ljava/io/File;

.field private f:[C

.field private volatile g:Lcom/tencent/open/a/i;

.field private volatile h:Lcom/tencent/open/a/i;

.field private volatile i:Lcom/tencent/open/a/i;

.field private volatile j:Lcom/tencent/open/a/i;

.field private volatile k:Z

.field private l:Landroid/os/Handler;


# direct methods
.method private constructor <init>(ILcom/tencent/open/a/j;Lcom/tencent/open/a/b;)V
    .locals 3

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/tencent/open/a/k;-><init>(ILcom/tencent/open/a/j;)V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/open/a/a;->k:Z

    .line 1333
    iput-object p3, p0, Lcom/tencent/open/a/a;->c:Lcom/tencent/open/a/b;

    .line 95
    new-instance v0, Lcom/tencent/open/a/i;

    invoke-direct {v0}, Lcom/tencent/open/a/i;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/a/a;->g:Lcom/tencent/open/a/i;

    .line 96
    new-instance v0, Lcom/tencent/open/a/i;

    invoke-direct {v0}, Lcom/tencent/open/a/i;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/i;

    .line 98
    iget-object v0, p0, Lcom/tencent/open/a/a;->g:Lcom/tencent/open/a/i;

    iput-object v0, p0, Lcom/tencent/open/a/a;->i:Lcom/tencent/open/a/i;

    .line 99
    iget-object v0, p0, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/i;

    iput-object v0, p0, Lcom/tencent/open/a/a;->j:Lcom/tencent/open/a/i;

    .line 2296
    iget v0, p3, Lcom/tencent/open/a/b;->b:I

    .line 101
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/tencent/open/a/a;->f:[C

    .line 105
    invoke-direct {p0}, Lcom/tencent/open/a/a;->c()Ljava/io/Writer;

    .line 107
    new-instance v0, Landroid/os/HandlerThread;

    .line 3238
    iget-object v1, p3, Lcom/tencent/open/a/b;->a:Ljava/lang/String;

    .line 3359
    iget v2, p3, Lcom/tencent/open/a/b;->c:I

    .line 107
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/open/a/a;->a:Landroid/os/HandlerThread;

    .line 109
    iget-object v0, p0, Lcom/tencent/open/a/a;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/tencent/open/a/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/a/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/open/a/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/open/a/a;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/tencent/open/a/a;->l:Landroid/os/Handler;

    .line 122
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/tencent/open/a/b;)V
    .locals 2

    .prologue
    .line 73
    sget v0, Lcom/tencent/open/a/c;->b:I

    sget-object v1, Lcom/tencent/open/a/j;->a:Lcom/tencent/open/a/j;

    invoke-direct {p0, v0, v1, p1}, Lcom/tencent/open/a/a;-><init>(ILcom/tencent/open/a/j;Lcom/tencent/open/a/b;)V

    .line 74
    return-void
.end method

.method private c()Ljava/io/Writer;
    .locals 4

    .prologue
    .line 250
    .line 9322
    iget-object v0, p0, Lcom/tencent/open/a/a;->c:Lcom/tencent/open/a/b;

    .line 10169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/tencent/open/a/b;->a(J)Ljava/io/File;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/open/a/a;->e:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/tencent/open/a/a;->d:Ljava/io/FileWriter;

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 255
    :cond_1
    iput-object v0, p0, Lcom/tencent/open/a/a;->e:Ljava/io/File;

    .line 257
    invoke-virtual {p0}, Lcom/tencent/open/a/a;->b()V

    .line 261
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    iget-object v1, p0, Lcom/tencent/open/a/a;->e:Ljava/io/File;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    iput-object v0, p0, Lcom/tencent/open/a/a;->d:Ljava/io/FileWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/tencent/open/a/a;->d:Ljava/io/FileWriter;

    :goto_0
    return-object v0

    .line 265
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 130
    iget-object v0, p0, Lcom/tencent/open/a/a;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/tencent/open/a/a;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/tencent/open/a/a;->l:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 137
    return-void
.end method

.method protected final a(ILjava/lang/Thread;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 156
    .line 5109
    const-wide/16 v0, 0x3e8

    rem-long v0, p3, v0

    .line 5111
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 5113
    invoke-virtual {v2, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 5115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 5117
    invoke-static {p1}, Lcom/tencent/open/a/j;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%Y-%m-%d %H:%M:%S"

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x2e

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5119
    const-wide/16 v4, 0xa

    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    .line 5121
    const-string v2, "00"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5128
    :cond_0
    :goto_0
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5130
    if-nez p2, :cond_4

    .line 5132
    const-string v0, "N/A"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5139
    :goto_1
    const/16 v0, 0x5d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5141
    if-eqz p7, :cond_1

    .line 5143
    const-string v0, "* Exception : \n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5146
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5164
    iget-object v1, p0, Lcom/tencent/open/a/a;->i:Lcom/tencent/open/a/i;

    .line 6052
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    .line 6054
    iget-object v3, v1, Lcom/tencent/open/a/i;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 6056
    iget-object v0, v1, Lcom/tencent/open/a/i;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 5167
    iget-object v0, p0, Lcom/tencent/open/a/a;->i:Lcom/tencent/open/a/i;

    .line 6137
    iget-object v0, v0, Lcom/tencent/open/a/i;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 6322
    iget-object v1, p0, Lcom/tencent/open/a/a;->c:Lcom/tencent/open/a/b;

    .line 7296
    iget v1, v1, Lcom/tencent/open/a/b;->b:I

    .line 5167
    if-lt v0, v1, :cond_2

    .line 5169
    invoke-virtual {p0}, Lcom/tencent/open/a/a;->a()V

    .line 159
    :cond_2
    return-void

    .line 5123
    :cond_3
    const-wide/16 v4, 0x64

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 5125
    const/16 v2, 0x30

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 5136
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method final b()V
    .locals 1

    .prologue
    .line 283
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/a/a;->d:Ljava/io/FileWriter;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/tencent/open/a/a;->d:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 286
    iget-object v0, p0, Lcom/tencent/open/a/a;->d:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 291
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 176
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 189
    :cond_0
    :goto_0
    return v12

    .line 8209
    :pswitch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/a/a;->a:Landroid/os/HandlerThread;

    if-ne v0, v1, :cond_0

    .line 8214
    iget-boolean v0, p0, Lcom/tencent/open/a/a;->k:Z

    if-nez v0, :cond_0

    .line 8219
    iput-boolean v12, p0, Lcom/tencent/open/a/a;->k:Z

    .line 8300
    monitor-enter p0

    .line 8302
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/a/a;->i:Lcom/tencent/open/a/i;

    iget-object v1, p0, Lcom/tencent/open/a/a;->g:Lcom/tencent/open/a/i;

    if-ne v0, v1, :cond_2

    .line 8304
    iget-object v0, p0, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/i;

    iput-object v0, p0, Lcom/tencent/open/a/a;->i:Lcom/tencent/open/a/i;

    .line 8305
    iget-object v0, p0, Lcom/tencent/open/a/a;->g:Lcom/tencent/open/a/i;

    iput-object v0, p0, Lcom/tencent/open/a/a;->j:Lcom/tencent/open/a/i;

    .line 8312
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8226
    :try_start_1
    iget-object v0, p0, Lcom/tencent/open/a/a;->j:Lcom/tencent/open/a/i;

    invoke-direct {p0}, Lcom/tencent/open/a/a;->c()Ljava/io/Writer;

    move-result-object v8

    iget-object v9, p0, Lcom/tencent/open/a/a;->f:[C

    .line 9073
    if-eqz v8, :cond_1

    if-eqz v9, :cond_1

    array-length v1, v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_3

    .line 8235
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/tencent/open/a/a;->j:Lcom/tencent/open/a/i;

    invoke-virtual {v0}, Lcom/tencent/open/a/i;->a()V

    .line 8239
    :goto_3
    iput-boolean v2, p0, Lcom/tencent/open/a/a;->k:Z

    goto :goto_0

    .line 8309
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/tencent/open/a/a;->g:Lcom/tencent/open/a/i;

    iput-object v0, p0, Lcom/tencent/open/a/a;->i:Lcom/tencent/open/a/i;

    .line 8310
    iget-object v0, p0, Lcom/tencent/open/a/a;->h:Lcom/tencent/open/a/i;

    iput-object v0, p0, Lcom/tencent/open/a/a;->j:Lcom/tencent/open/a/i;

    goto :goto_1

    .line 8312
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 9084
    :cond_3
    :try_start_3
    array-length v4, v9

    .line 9088
    invoke-virtual {v0}, Lcom/tencent/open/a/i;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v1, v2

    move v3, v4

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 9092
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move v7, v2

    .line 9096
    :goto_4
    if-lez v6, :cond_4

    .line 9099
    if-le v3, v6, :cond_5

    move v5, v6

    .line 9101
    :goto_5
    add-int v11, v7, v5

    invoke-virtual {v0, v7, v11, v9, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 9103
    sub-int/2addr v3, v5

    .line 9104
    add-int/2addr v1, v5

    .line 9106
    sub-int/2addr v6, v5

    .line 9107
    add-int/2addr v5, v7

    .line 9109
    if-nez v3, :cond_8

    .line 9111
    const/4 v1, 0x0

    invoke-virtual {v8, v9, v1, v4}, Ljava/io/Writer;->write([CII)V

    move v1, v2

    move v3, v4

    move v7, v5

    .line 9114
    goto :goto_4

    :cond_5
    move v5, v3

    .line 9099
    goto :goto_5

    .line 9121
    :cond_6
    if-lez v1, :cond_7

    .line 9123
    const/4 v0, 0x0

    invoke-virtual {v8, v9, v0, v1}, Ljava/io/Writer;->write([CII)V

    .line 9127
    :cond_7
    invoke-virtual {v8}, Ljava/io/Writer;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 8235
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/tencent/open/a/a;->j:Lcom/tencent/open/a/i;

    invoke-virtual {v0}, Lcom/tencent/open/a/i;->a()V

    goto :goto_3

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/tencent/open/a/a;->j:Lcom/tencent/open/a/i;

    invoke-virtual {v1}, Lcom/tencent/open/a/i;->a()V

    throw v0

    :cond_8
    move v7, v5

    goto :goto_4

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x400
        :pswitch_0
    .end packed-switch
.end method
