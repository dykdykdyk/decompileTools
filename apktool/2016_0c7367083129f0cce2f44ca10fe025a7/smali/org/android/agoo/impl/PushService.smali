.class public Lorg/android/agoo/impl/PushService;
.super Ljava/lang/Object;
.source "PushService.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/umeng/message/proguard/bv;
.implements Lorg/android/agoo/c;


# static fields
.field private static o:Lcom/umeng/message/proguard/j;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/os/HandlerThread;

.field private c:Landroid/os/Handler;

.field private d:Z

.field private e:Landroid/app/PendingIntent;

.field private f:Z

.field private g:Lcom/umeng/message/proguard/d;

.field private h:J

.field private i:Landroid/app/AlarmManager;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private final n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile p:Lorg/android/agoo/a/b;

.field private final q:Landroid/content/BroadcastReceiver;

.field private final r:Lorg/android/agoo/service/IMessageService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->b:Landroid/os/HandlerThread;

    .line 67
    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->c:Landroid/os/Handler;

    .line 68
    iput-boolean v2, p0, Lorg/android/agoo/impl/PushService;->d:Z

    .line 69
    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->e:Landroid/app/PendingIntent;

    .line 70
    iput-boolean v2, p0, Lorg/android/agoo/impl/PushService;->f:Z

    .line 73
    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->i:Landroid/app/AlarmManager;

    .line 74
    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->j:Ljava/lang/String;

    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->k:Ljava/lang/String;

    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->l:Ljava/lang/String;

    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->m:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 247
    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->p:Lorg/android/agoo/a/b;

    .line 569
    new-instance v0, Lorg/android/agoo/impl/PushService$2;

    invoke-direct {v0, p0}, Lorg/android/agoo/impl/PushService$2;-><init>(Lorg/android/agoo/impl/PushService;)V

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->q:Landroid/content/BroadcastReceiver;

    .line 656
    new-instance v0, Lorg/android/agoo/impl/PushService$3;

    invoke-direct {v0, p0}, Lorg/android/agoo/impl/PushService$3;-><init>(Lorg/android/agoo/impl/PushService;)V

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->r:Lorg/android/agoo/service/IMessageService$Stub;

    return-void
.end method

.method static synthetic a(Lorg/android/agoo/impl/PushService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 251
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/android/agoo/impl/PushService;->h:J

    .line 252
    new-instance v0, Lcom/umeng/message/proguard/d;

    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/umeng/message/proguard/d;-><init>(Landroid/content/Context;Lcom/umeng/message/proguard/bv;)V

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->g:Lcom/umeng/message/proguard/d;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 254
    const-string v1, "PushService"

    const-string v2, "initMessage"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static final a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 540
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    if-eqz p0, :cond_0

    .line 542
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 543
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 545
    invoke-static {p0}, Lorg/android/agoo/c/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 546
    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "registerNotKill--->[current-thread-name:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 548
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][action:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 546
    invoke-static {v1, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 555
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 447
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->g:Lcom/umeng/message/proguard/d;

    if-eqz v0, :cond_0

    .line 448
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->g:Lcom/umeng/message/proguard/d;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/d;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 8408
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/android/agoo/impl/PushService;->f:Z

    if-eqz v0, :cond_1

    .line 8442
    :goto_0
    return-void

    .line 8411
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/agoo/impl/PushService;->f:Z

    .line 8412
    new-instance v6, Landroid/content/Intent;

    const-string v0, "agoo_action_re_election"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8413
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 8414
    const-string v0, "eventId"

    invoke-virtual {v6, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8415
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 8416
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x528

    .line 8418
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v0, v0

    const-wide/16 v4, 0x3c

    mul-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    add-long/2addr v0, v2

    .line 8420
    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/e;->i(Landroid/content/Context;)J

    move-result-wide v4

    .line 8421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v8, 0x1b7740

    add-long/2addr v2, v8

    cmp-long v2, v4, v2

    if-lez v2, :cond_3

    move-wide v2, v4

    .line 8424
    :goto_1
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    const-string v1, "alarm"

    .line 8425
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->i:Landroid/app/AlarmManager;

    .line 8426
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->e:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 8427
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 8428
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->i:Landroid/app/AlarmManager;

    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 8430
    :cond_2
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    const v1, 0x2b80359

    const/high16 v7, 0x8000000

    invoke-static {v0, v1, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->e:Landroid/app/PendingIntent;

    .line 8433
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "election next time[current-thread-name:"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8435
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "]["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8436
    invoke-static {v2, v3}, Lcom/umeng/message/proguard/o;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "][timeout:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8433
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8438
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->i:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/android/agoo/impl/PushService;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 8439
    :catch_0
    move-exception v0

    .line 8440
    :try_start_2
    const-string v1, "PushService"

    const-string v2, "ReElection start"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 454
    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_3
    move-wide v2, v0

    goto :goto_1
.end method

.method static synthetic b(Lorg/android/agoo/impl/PushService;)J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lorg/android/agoo/impl/PushService;->h:J

    return-wide v0
.end method

.method private b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 297
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 298
    const-string v1, "PushService"

    const-string v2, "mContext == null"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :goto_0
    return v0

    .line 301
    :cond_0
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    .line 7136
    invoke-static {v1}, Lorg/android/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 301
    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->j:Ljava/lang/String;

    .line 302
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->j:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    const-string v1, "ERROR_APPKEY_NULL"

    invoke-virtual {p0, v1}, Lorg/android/agoo/impl/PushService;->onHandleError(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    goto :goto_0

    .line 306
    :cond_1
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    .line 7151
    invoke-static {v1}, Lorg/android/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 306
    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->l:Ljava/lang/String;

    .line 307
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->l:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    const-string v1, "ERROR_TTID_NULL"

    invoke-virtual {p0, v1}, Lorg/android/agoo/impl/PushService;->onHandleError(Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_2
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    .line 7166
    invoke-static {v1}, Lorg/android/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 311
    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->k:Ljava/lang/String;

    .line 312
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    .line 7191
    invoke-static {v1}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 312
    iput-object v1, p0, Lorg/android/agoo/impl/PushService;->m:Ljava/lang/String;

    .line 313
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    const-string v1, "ERROR_DEVICETOKEN_NULL"

    invoke-virtual {p0, v1}, Lorg/android/agoo/impl/PushService;->onHandleError(Ljava/lang/String;)V

    goto :goto_0

    .line 317
    :cond_3
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->g:Lcom/umeng/message/proguard/d;

    if-nez v1, :cond_4

    .line 318
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->a()V

    .line 323
    :cond_4
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->g:Lcom/umeng/message/proguard/d;

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/d;->c(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->g:Lcom/umeng/message/proguard/d;

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/d;->b(Ljava/lang/String;)V

    .line 325
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->g:Lcom/umeng/message/proguard/d;

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/umeng/message/proguard/d;->d(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->g:Lcom/umeng/message/proguard/d;

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->m:Ljava/lang/String;

    .line 8088
    iput-object v2, v1, Lcom/umeng/message/proguard/br;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic c(Lorg/android/agoo/impl/PushService;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private c()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 387
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 403
    :goto_0
    return v0

    .line 390
    :cond_0
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 392
    const-string v1, "PushService"

    const-string v2, "[currentSudoPack==null]"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 403
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 395
    :cond_2
    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 396
    const-string v2, "PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[currentSudoPack("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")!=appPackage("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    .line 397
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-static {v2, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static synthetic d(Lorg/android/agoo/impl/PushService;)Lcom/umeng/message/proguard/d;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->g:Lcom/umeng/message/proguard/d;

    return-object v0
.end method

.method private final d()V
    .locals 7

    .prologue
    .line 458
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 459
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    add-long/2addr v2, v0

    .line 460
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/c/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 461
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 462
    const-string v0, "PushService"

    const-string v1, "action==null"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    const-string v0, "PushService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleDestroyService ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-static {v2, v3}, Lcom/umeng/message/proguard/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":restart]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 466
    invoke-static {v0, v4}, Lcom/umeng/message/proguard/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    const-string v4, "alarm"

    .line 470
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 472
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 473
    invoke-virtual {v4, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 474
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 475
    const-string v1, "method"

    const-string v5, "start"

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    const-string v1, "eventId"

    const-string v5, "handleDestroyService"

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const/16 v1, 0x20

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 480
    const/high16 v1, 0x10000000

    invoke-virtual {v4, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 481
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v1, v5, v4, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 483
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    const-string v1, "PushService"

    const-string v2, "handleDestroyService"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 523
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lorg/android/agoo/impl/PushService;->d:Z

    .line 524
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public bind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v3

    .line 84
    const-string v4, "PushService"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "onBind:["

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "],intent categries["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v3, :cond_0

    .line 87
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 88
    :goto_0
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {v4, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "org.agoo.android.intent.action.PING_V4"

    .line 91
    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 92
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    .line 93
    invoke-static {v0}, Lorg/android/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->r:Lorg/android/agoo/service/IMessageService$Stub;

    .line 96
    :cond_1
    return-object v1

    .line 88
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Lorg/android/agoo/a/b;)V
    .locals 4

    .prologue
    .line 213
    :try_start_0
    const-string v0, "PushService"

    const-string v1, ">>> agoo system is creating >>>"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string v0, "agoo.pid"

    .line 2032
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2034
    const-string v0, "a"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2036
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 2039
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 3020
    :try_start_2
    invoke-static {}, Landroid/os/Process;->myPid()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 2045
    const/4 v2, 0x0

    .line 2047
    :try_start_3
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2048
    :try_start_4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileWriter;->write([C)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2053
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 2054
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 216
    :goto_0
    :try_start_6
    invoke-static {p1}, Lcom/umeng/message/proguard/j;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/j;

    move-result-object v0

    sput-object v0, Lorg/android/agoo/impl/PushService;->o:Lcom/umeng/message/proguard/j;

    .line 217
    iput-object p1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    .line 218
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/bn;->a(Landroid/content/Context;)V

    .line 219
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/android/agoo/impl/PushService;->d:Z

    .line 221
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "se-service"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->b:Landroid/os/HandlerThread;

    .line 222
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 223
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->c:Landroid/os/Handler;

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 225
    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create currentPack="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrentSudo(context)"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 228
    const-string v2, "PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    if-eqz v1, :cond_1

    .line 230
    sget-object v0, Lorg/android/agoo/impl/PushService;->o:Lcom/umeng/message/proguard/j;

    .line 3457
    sget-object v1, Lcom/umeng/message/proguard/j;->a:Ljava/lang/String;

    const-string v2, "start SoManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3459
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3460
    iget-object v0, v0, Lcom/umeng/message/proguard/j;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 232
    :cond_1
    iput-object p2, p0, Lorg/android/agoo/impl/PushService;->p:Lorg/android/agoo/a/b;

    .line 233
    const-string v0, "alarm"

    .line 234
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lorg/android/agoo/impl/PushService;->i:Landroid/app/AlarmManager;

    .line 235
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 236
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 237
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 238
    const-string v1, "agoo_action_re_election"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    :cond_2
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->a()V

    .line 245
    :goto_1
    return-void

    .line 2040
    :catch_0
    move-exception v0

    .line 2041
    const-string v1, "savePidFile"

    const-string v2, "error in create file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 242
    :catch_1
    move-exception v0

    .line 243
    const-string v1, "PushService"

    const-string v2, "create"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2055
    :catch_2
    move-exception v0

    .line 2056
    :try_start_7
    const-string v1, "savePid"

    const-string v2, "error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 2049
    :catch_3
    move-exception v0

    move-object v1, v2

    .line 2050
    :goto_2
    :try_start_8
    const-string v2, "savePid"

    const-string v3, "error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2053
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 2054
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_0

    .line 2055
    :catch_4
    move-exception v0

    .line 2056
    :try_start_a
    const-string v1, "savePid"

    const-string v2, "error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    .line 2052
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 2053
    :goto_3
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 2054
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1

    .line 2057
    :goto_4
    :try_start_c
    throw v0

    .line 2055
    :catch_5
    move-exception v1

    .line 2056
    const-string v2, "savePid"

    const-string v3, "error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_4

    .line 2052
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 2049
    :catch_6
    move-exception v0

    goto :goto_2
.end method

.method public destroy(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 107
    :try_start_0
    const-string v0, "PushService"

    const-string v1, "PushService destroying"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->g:Lcom/umeng/message/proguard/d;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->g:Lcom/umeng/message/proguard/d;

    invoke-virtual {v0}, Lcom/umeng/message/proguard/d;->b()V

    .line 113
    :cond_0
    new-instance v0, Lorg/android/agoo/impl/PushService$1;

    invoke-direct {v0, p0}, Lorg/android/agoo/impl/PushService$1;-><init>(Lorg/android/agoo/impl/PushService;)V

    invoke-static {v0}, Lcom/umeng/message/proguard/v;->a(Ljava/lang/Runnable;)V

    .line 121
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 122
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->e:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 125
    :cond_1
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->i:Landroid/app/AlarmManager;

    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->i:Landroid/app/AlarmManager;

    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->e:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 130
    :cond_2
    const-string v0, "PushService"

    const-string v1, "PushService destroyed"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PushService hasNeedNotKill[handleDestroyService]+hasNeedNotKill="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lorg/android/agoo/impl/PushService;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-boolean v0, p0, Lorg/android/agoo/impl/PushService;->d:Z

    if-eqz v0, :cond_3

    .line 137
    const-string v0, "PushService"

    const-string v1, "PushService hasNeedNotKill[handleDestroyService]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->d()V

    .line 143
    :goto_0
    iput-object v4, p0, Lorg/android/agoo/impl/PushService;->e:Landroid/app/PendingIntent;

    .line 144
    iput-object v4, p0, Lorg/android/agoo/impl/PushService;->i:Landroid/app/AlarmManager;

    .line 145
    :goto_1
    return-void

    .line 141
    :cond_3
    invoke-static {p1}, Lcom/umeng/message/proguard/bj;->b(Landroid/content/Context;)V

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    :try_start_1
    const-string v1, "PushService"

    const-string v2, "destroy"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 134
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PushService hasNeedNotKill[handleDestroyService]+hasNeedNotKill="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lorg/android/agoo/impl/PushService;->d:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-boolean v0, p0, Lorg/android/agoo/impl/PushService;->d:Z

    if-eqz v0, :cond_4

    .line 137
    const-string v0, "PushService"

    const-string v1, "PushService hasNeedNotKill[handleDestroyService]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->d()V

    .line 143
    :goto_2
    iput-object v4, p0, Lorg/android/agoo/impl/PushService;->e:Landroid/app/PendingIntent;

    .line 144
    iput-object v4, p0, Lorg/android/agoo/impl/PushService;->i:Landroid/app/AlarmManager;

    goto :goto_1

    .line 141
    :cond_4
    invoke-static {p1}, Lcom/umeng/message/proguard/bj;->b(Landroid/content/Context;)V

    goto :goto_2

    .line 134
    :catchall_0
    move-exception v0

    const-string v1, "PushService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "PushService hasNeedNotKill[handleDestroyService]+hasNeedNotKill="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lorg/android/agoo/impl/PushService;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-boolean v1, p0, Lorg/android/agoo/impl/PushService;->d:Z

    if-eqz v1, :cond_5

    .line 137
    const-string v1, "PushService"

    const-string v2, "PushService hasNeedNotKill[handleDestroyService]"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->d()V

    .line 143
    :goto_3
    iput-object v4, p0, Lorg/android/agoo/impl/PushService;->e:Landroid/app/PendingIntent;

    .line 144
    iput-object v4, p0, Lorg/android/agoo/impl/PushService;->i:Landroid/app/AlarmManager;

    throw v0

    .line 141
    :cond_5
    invoke-static {p1}, Lcom/umeng/message/proguard/bj;->b(Landroid/content/Context;)V

    goto :goto_3
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .prologue
    .line 261
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 292
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 263
    :pswitch_0
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->a(Landroid/content/Context;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 266
    :pswitch_1
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3559
    :try_start_1
    invoke-static {v0}, Lorg/android/a;->p(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3560
    sget-object v0, Lorg/android/agoo/impl/PushService;->o:Lcom/umeng/message/proguard/j;

    .line 4511
    sget-object v1, Lcom/umeng/message/proguard/j;->a:Ljava/lang/String;

    const-string v2, "stop SoManager"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4512
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 4513
    const/4 v2, -0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 4514
    iget-object v0, v0, Lcom/umeng/message/proguard/j;->c:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3561
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unregisterNotKill--->[current-thread-name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3562
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3561
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    .line 267
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->p:Lorg/android/agoo/a/b;

    invoke-interface {v0}, Lorg/android/agoo/a/b;->stop()V

    goto :goto_0

    .line 270
    :pswitch_2
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->a(Landroid/content/Context;)V

    .line 271
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 5184
    :try_start_3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 5185
    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/c/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 5186
    const-string v3, "PushService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "action ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5187
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5188
    const-string v1, "method"

    .line 5189
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "stop"

    .line 5191
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5193
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->e()V

    goto/16 :goto_0

    .line 272
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 5196
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "start"

    .line 5197
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5199
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/android/agoo/impl/PushService;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5202
    :cond_3
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->e()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 275
    :pswitch_3
    :try_start_4
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/j;->b(Landroid/content/Context;)V

    .line 276
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->a(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 5358
    :try_start_5
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5359
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/message/proguard/bk;->c(Landroid/content/Context;)V

    .line 5360
    new-instance v1, Lorg/android/agoo/d/a/n;

    invoke-direct {v1}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 5361
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/a;->s(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 5362
    const-string v2, "currentSudoPack"

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5364
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    const-string v1, "hasComeFromCock"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 5365
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5366
    const-string v0, "ERROR_NEED_ELECTION"

    invoke-virtual {p0, v0}, Lorg/android/agoo/impl/PushService;->onHandleError(Ljava/lang/String;)V

    .line 5367
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->e()V

    goto/16 :goto_0

    .line 278
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 5370
    :cond_4
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->b()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5371
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->e()V

    goto/16 :goto_0

    .line 5374
    :cond_5
    const-string v0, "hasComeFromCock"

    invoke-direct {p0, v0}, Lorg/android/agoo/impl/PushService;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 280
    :pswitch_4
    :try_start_6
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/impl/PushService;->a(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    .line 6335
    :try_start_7
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/proguard/bk;->c(Landroid/content/Context;)V

    .line 6336
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 6337
    new-instance v0, Lorg/android/agoo/d/a/n;

    invoke-direct {v0}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 6338
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/a;->s(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    .line 6340
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    const-string v1, "androidSystem"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 6341
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->c()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6342
    const-string v0, "ERROR_NEED_ELECTION"

    invoke-virtual {p0, v0}, Lorg/android/agoo/impl/PushService;->onHandleError(Ljava/lang/String;)V

    .line 6343
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->e()V

    goto/16 :goto_0

    .line 282
    :catch_3
    move-exception v0

    goto/16 :goto_0

    .line 6346
    :cond_6
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->b()Z

    move-result v0

    if-nez v0, :cond_7

    .line 6347
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->e()V

    goto/16 :goto_0

    .line 6350
    :cond_7
    const-string v0, "androidSystemSuccess"

    invoke-direct {p0, v0}, Lorg/android/agoo/impl/PushService;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 284
    :pswitch_5
    :try_start_8
    const-string v0, "ERROR_NEED_ELECTION"

    invoke-virtual {p0, v0}, Lorg/android/agoo/impl/PushService;->onHandleError(Ljava/lang/String;)V

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/android/agoo/impl/PushService;->f:Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 261
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public hasComeFromCock(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 493
    :try_start_0
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 494
    invoke-direct {p0}, Lorg/android/agoo/impl/PushService;->e()V

    .line 496
    :cond_0
    if-nez p1, :cond_1

    .line 497
    const-string v1, "PushService"

    const-string v2, "hasComeFromCock[intent==null]"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    :goto_0
    return v0

    .line 500
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 501
    const-string v2, "cockroach"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 502
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "cockroach-PPreotect"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 503
    :cond_2
    const-string v1, "PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hasComeFromCock[cockroach==null]or[cockroach!="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 518
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 507
    :cond_3
    const-string v2, "pack"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 508
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    .line 509
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 510
    :cond_4
    const-string v1, "PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hasComeFromCock[pack==null] or ["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    .line 511
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 510
    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 514
    :cond_5
    const-string v0, "PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "hasComeFromCock["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    .line 515
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public onHandleCommand(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 585
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lorg/android/agoo/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 586
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 591
    :goto_0
    return-void

    .line 588
    :catch_0
    move-exception v0

    .line 589
    const-string v1, "PushService"

    const-string v2, "handleError"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onHandleError(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 596
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    const-string v1, "error"

    invoke-static {v0, v1}, Lorg/android/agoo/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 598
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v1, "error"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v0

    .line 602
    const-string v1, "PushService"

    const-string v2, "handleError"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onHandleMessage(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 613
    :try_start_0
    const-string v0, "PushService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onHandleMessage current tid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->c:Landroid/os/Handler;

    new-instance v1, Lorg/android/agoo/impl/PushService$b;

    iget-object v2, p0, Lorg/android/agoo/impl/PushService;->g:Lcom/umeng/message/proguard/d;

    invoke-direct {v1, p0, p1, p2, v2}, Lorg/android/agoo/impl/PushService$b;-><init>(Lorg/android/agoo/impl/PushService;Ljava/lang/String;Landroid/os/Bundle;Lcom/umeng/message/proguard/d;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :goto_0
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    const-string v1, "PushService"

    const-string v2, "handleMessage error >>"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public startCommand(Landroid/content/Intent;II)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 151
    if-nez p1, :cond_1

    .line 152
    :try_start_0
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->c:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 179
    :cond_0
    :goto_0
    return v2

    .line 155
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 156
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 157
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 158
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 159
    invoke-virtual {p0, p1}, Lorg/android/agoo/impl/PushService;->hasComeFromCock(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 160
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 161
    iget-object v1, p0, Lorg/android/agoo/impl/PushService;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 164
    :cond_2
    const/4 v3, 0x2

    iput v3, v0, Landroid/os/Message;->what:I

    .line 165
    iget-object v3, p0, Lorg/android/agoo/impl/PushService;->c:Landroid/os/Handler;

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 166
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    .line 1136
    const-string v3, "activity"

    .line 1137
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1138
    const v3, 0x7fffffff

    .line 1139
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v4

    .line 1140
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    move v0, v1

    .line 167
    :cond_4
    :goto_1
    if-eqz v0, :cond_0

    .line 168
    const-string v0, "eventId"

    .line 169
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 170
    const-string v1, "PushService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "pushService startCommand,eventId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_Success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 172
    new-instance v1, Lorg/android/agoo/d/a/n;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_Success"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 173
    iget-object v0, p0, Lorg/android/agoo/impl/PushService;->a:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/a;->s(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    goto :goto_0

    :cond_5
    move v3, v1

    .line 1143
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_7

    .line 1144
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v5, "com.taobao.agoo.PushService"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1146
    const-string v0, "ReceiverUtil"

    const-string v1, "PushService is running ...................."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 1150
    :goto_3
    if-nez v0, :cond_4

    .line 1151
    const-string v1, "ReceiverUtil"

    const-string v3, "PushService is failed ...................."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1143
    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method public unbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method
