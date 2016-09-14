.class public abstract Lcom/umeng/message/proguard/br;
.super Ljava/lang/Object;
.source "AbsMessage.java"


# static fields
.field private static final a:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private volatile b:Lcom/umeng/message/proguard/bu;

.field private volatile c:Landroid/content/IntentFilter;

.field public volatile d:Ljava/lang/String;

.field protected volatile e:Lcom/umeng/message/proguard/bv;

.field protected volatile f:Landroid/content/Context;

.field protected volatile g:Ljava/lang/String;

.field protected volatile h:Ljava/lang/String;

.field protected volatile i:Ljava/lang/String;

.field private volatile j:Landroid/app/AlarmManager;

.field private final k:Landroid/content/BroadcastReceiver;

.field private volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/umeng/message/proguard/br;->a:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/umeng/message/proguard/bv;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/umeng/message/proguard/br;->b:Lcom/umeng/message/proguard/bu;

    .line 39
    iput-object v0, p0, Lcom/umeng/message/proguard/br;->c:Landroid/content/IntentFilter;

    .line 40
    iput-object v0, p0, Lcom/umeng/message/proguard/br;->j:Landroid/app/AlarmManager;

    .line 207
    new-instance v0, Lcom/umeng/message/proguard/bs;

    invoke-direct {v0, p0}, Lcom/umeng/message/proguard/bs;-><init>(Lcom/umeng/message/proguard/br;)V

    iput-object v0, p0, Lcom/umeng/message/proguard/br;->k:Landroid/content/BroadcastReceiver;

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/br;->l:Z

    .line 49
    :try_start_0
    iput-object p1, p0, Lcom/umeng/message/proguard/br;->f:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/umeng/message/proguard/br;->e:Lcom/umeng/message/proguard/bv;

    .line 51
    const-string v0, "alarm"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/umeng/message/proguard/br;->j:Landroid/app/AlarmManager;

    .line 53
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IntentService[timeThread]"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 56
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/umeng/message/proguard/bu;

    invoke-direct {v1, p0, v0}, Lcom/umeng/message/proguard/bu;-><init>(Lcom/umeng/message/proguard/br;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/umeng/message/proguard/br;->b:Lcom/umeng/message/proguard/bu;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/umeng/message/proguard/br;)Lcom/umeng/message/proguard/bu;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/umeng/message/proguard/br;->b:Lcom/umeng/message/proguard/bu;

    return-object v0
.end method

.method static synthetic i()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/umeng/message/proguard/br;->a:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public final a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/umeng/message/proguard/br;->a(Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 101
    return-void
.end method

.method protected final a(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/umeng/message/proguard/br;->e:Lcom/umeng/message/proguard/bv;

    invoke-interface {v0, p1, p2}, Lcom/umeng/message/proguard/bv;->onHandleMessage(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 97
    return-void
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 7

    .prologue
    .line 106
    :try_start_0
    sget-object v0, Lcom/umeng/message/proguard/br;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    if-eqz p2, :cond_2

    .line 110
    const-string v1, "CONNECT_STATE"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 112
    const-string v2, "AbsMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "startTaskAtDelayed["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 119
    :goto_0
    iget-object v1, p0, Lcom/umeng/message/proguard/br;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/umeng/message/proguard/br;->f:Landroid/content/Context;

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/high16 v3, 0x10000000

    .line 120
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/umeng/message/proguard/br;->j:Landroid/app/AlarmManager;

    const/4 v2, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v4, p3

    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :cond_1
    sget-object v0, Lcom/umeng/message/proguard/br;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 130
    :goto_1
    return-void

    .line 117
    :cond_2
    :try_start_1
    const-string v1, "AbsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startTaskAtDelayed["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    sget-object v0, Lcom/umeng/message/proguard/br;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/umeng/message/proguard/br;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method protected final varargs a([Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/umeng/message/proguard/br;->f:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/umeng/message/proguard/br;->l:Z

    if-nez v0, :cond_2

    .line 262
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/umeng/message/proguard/br;->c:Landroid/content/IntentFilter;

    .line 263
    iget-object v0, p0, Lcom/umeng/message/proguard/br;->c:Landroid/content/IntentFilter;

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 264
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    .line 265
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/umeng/message/proguard/br;->c:Landroid/content/IntentFilter;

    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/umeng/message/proguard/br;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/message/proguard/br;->k:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/umeng/message/proguard/br;->c:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/message/proguard/br;->l:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/umeng/message/proguard/br;->h:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public final b(Ljava/lang/String;J)V
    .locals 8

    .prologue
    .line 141
    :try_start_0
    sget-object v0, Lcom/umeng/message/proguard/br;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const-string v0, "AbsMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startTaskRepeating["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/umeng/message/proguard/br;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/umeng/message/proguard/br;->f:Landroid/content/Context;

    .line 150
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/high16 v3, 0x10000000

    .line 149
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 152
    iget-object v0, p0, Lcom/umeng/message/proguard/br;->j:Landroid/app/AlarmManager;

    const/4 v1, 0x1

    .line 153
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p2

    move-wide v4, p2

    .line 152
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    sget-object v0, Lcom/umeng/message/proguard/br;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 162
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    :try_start_1
    const-string v1, "AbsMessage"

    const-string v2, "onStartRepeating"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    sget-object v0, Lcom/umeng/message/proguard/br;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/umeng/message/proguard/br;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/umeng/message/proguard/br;->g:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/umeng/message/proguard/br;->i:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 167
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 170
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/umeng/message/proguard/br;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v1, "CONNECT_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    const-string v1, "AbsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopTask action["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_1
    iget-object v1, p0, Lcom/umeng/message/proguard/br;->f:Landroid/content/Context;

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/high16 v3, 0x10000000

    .line 178
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 181
    iget-object v1, p0, Lcom/umeng/message/proguard/br;->j:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 182
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const-string v1, "AbsMessage"

    const-string v2, "stopTask"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 176
    :cond_1
    :try_start_1
    const-string v2, "AbsMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "stopTask action["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/umeng/message/proguard/bn;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/umeng/message/proguard/br;->h:Ljava/lang/String;

    return-object v0
.end method

.method protected final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/umeng/message/proguard/br;->g:Ljava/lang/String;

    return-object v0
.end method

.method protected final h()V
    .locals 2

    .prologue
    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/proguard/br;->f:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/message/proguard/br;->l:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/umeng/message/proguard/br;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/umeng/message/proguard/br;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/umeng/message/proguard/br;->b:Lcom/umeng/message/proguard/bu;

    if-eqz v0, :cond_1

    .line 285
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/proguard/br;->b:Lcom/umeng/message/proguard/bu;

    .line 287
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/message/proguard/br;->l:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
