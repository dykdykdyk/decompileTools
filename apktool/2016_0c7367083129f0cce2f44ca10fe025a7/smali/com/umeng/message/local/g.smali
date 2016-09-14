.class public Lcom/umeng/message/local/g;
.super Ljava/lang/Object;
.source "UmengNotificationBuilder.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static a:Ljava/lang/String;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field j:I

.field k:I

.field l:I

.field m:I

.field n:I

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/umeng/message/local/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/local/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {}, Lcom/umeng/message/proguard/ad;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/local/g;->b:Ljava/lang/String;

    .line 84
    const/16 v0, 0x10

    iput v0, p0, Lcom/umeng/message/local/g;->d:I

    .line 85
    iput-boolean v1, p0, Lcom/umeng/message/local/g;->f:Z

    .line 86
    iput-boolean v1, p0, Lcom/umeng/message/local/g;->g:Z

    .line 87
    iput-boolean v1, p0, Lcom/umeng/message/local/g;->h:Z

    .line 88
    iput-boolean v1, p0, Lcom/umeng/message/local/g;->i:Z

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/message/local/g;->n:I

    iput v0, p0, Lcom/umeng/message/local/g;->m:I

    iput v0, p0, Lcom/umeng/message/local/g;->l:I

    iput v0, p0, Lcom/umeng/message/local/g;->k:I

    iput v0, p0, Lcom/umeng/message/local/g;->j:I

    .line 90
    return-void
.end method

.method constructor <init>(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    if-eqz p1, :cond_0

    .line 110
    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/local/g;->b:Ljava/lang/String;

    .line 111
    const-string v0, "localnotification_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/local/g;->c:Ljava/lang/String;

    .line 112
    const-string v0, "flags"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/g;->d:I

    .line 113
    const-string v0, "defaults"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/g;->e:I

    .line 114
    const-string v0, "smallicon_drawable"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/local/g;->o:Ljava/lang/String;

    .line 115
    const-string v0, "largeicon_drawable"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/local/g;->p:Ljava/lang/String;

    .line 116
    const-string v0, "sound_drawable"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/local/g;->q:Ljava/lang/String;

    .line 117
    const-string v0, "play_vibrate"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 118
    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/umeng/message/local/g;->f:Z

    .line 119
    const-string v0, "play_lights"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 120
    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/umeng/message/local/g;->g:Z

    .line 121
    const-string v0, "play_sound"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 122
    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/umeng/message/local/g;->h:Z

    .line 123
    const-string v0, "screen_on"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 124
    if-ne v0, v1, :cond_4

    :goto_3
    iput-boolean v1, p0, Lcom/umeng/message/local/g;->i:Z

    .line 125
    const-string v0, "layout_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/g;->j:I

    .line 126
    const-string v0, "layout_title_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/g;->k:I

    .line 127
    const-string v0, "layout_content_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/g;->l:I

    .line 128
    const-string v0, "layout_icon_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/g;->m:I

    .line 129
    const-string v0, "layout_icon_drawable_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/umeng/message/local/g;->n:I

    .line 131
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 118
    goto :goto_0

    :cond_2
    move v0, v2

    .line 120
    goto :goto_1

    :cond_3
    move v0, v2

    .line 122
    goto :goto_2

    :cond_4
    move v1, v2

    .line 124
    goto :goto_3
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {}, Lcom/umeng/message/proguard/ad;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/local/g;->b:Ljava/lang/String;

    .line 94
    const/16 v0, 0x10

    iput v0, p0, Lcom/umeng/message/local/g;->d:I

    .line 95
    iput-boolean v1, p0, Lcom/umeng/message/local/g;->f:Z

    .line 96
    iput-boolean v1, p0, Lcom/umeng/message/local/g;->g:Z

    .line 97
    iput-boolean v1, p0, Lcom/umeng/message/local/g;->h:Z

    .line 98
    iput-boolean v1, p0, Lcom/umeng/message/local/g;->i:Z

    .line 99
    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/message/local/g;->n:I

    iput v0, p0, Lcom/umeng/message/local/g;->m:I

    iput v0, p0, Lcom/umeng/message/local/g;->l:I

    iput v0, p0, Lcom/umeng/message/local/g;->k:I

    iput v0, p0, Lcom/umeng/message/local/g;->j:I

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iput-object p1, p0, Lcom/umeng/message/local/g;->c:Ljava/lang/String;

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/umeng/message/local/g;->c:Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/umeng/message/local/g;->a:Ljava/lang/String;

    const-string v1, "localNotificationId is null"

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static a(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 225
    const-class v1, Lcom/umeng/message/NotificationProxyBroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 226
    const-string v1, "ACTION"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v1, v2

    const/high16 v2, 0x10000000

    .line 230
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 234
    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 4

    .prologue
    const v2, 0x132b531

    .line 199
    :try_start_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 203
    :try_start_1
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/PushAgent;->getDisplayNotificationNumber()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    .line 204
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 214
    :goto_0
    :try_start_2
    invoke-static {p0}, Lcom/umeng/message/proguard/ad;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/umeng/message/proguard/ad;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 215
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/PushAgent;->getNotificationOnForeground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 221
    :cond_1
    :goto_1
    return-void

    .line 206
    :cond_2
    :try_start_3
    invoke-static {p0}, Lcom/umeng/message/proguard/ad;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/umeng/message/proguard/ad;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/message/PushAgent;->getNotificationOnForeground()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 208
    :cond_3
    const v1, 0x132b531

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    move v1, v2

    .line 213
    goto :goto_0

    .line 212
    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v1, v2

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static e(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 342
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 343
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 345
    mul-int/lit8 v0, v3, 0x3c

    add-int/2addr v0, v4

    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v5

    .line 346
    invoke-virtual {v5}, Lcom/umeng/message/PushAgent;->getNoDisturbStartHour()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    .line 348
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/umeng/message/PushAgent;->getNoDisturbStartMinute()I

    move-result v6

    add-int/2addr v5, v6

    if-lt v0, v5, :cond_1

    move v0, v1

    .line 350
    :goto_0
    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v3, v4

    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v4

    .line 351
    invoke-virtual {v4}, Lcom/umeng/message/PushAgent;->getNoDisturbEndHour()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    .line 353
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/message/PushAgent;->getNoDisturbEndMinute()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_2

    move v3, v1

    .line 356
    :goto_1
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/message/PushAgent;->getNoDisturbEndHour()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    .line 358
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/message/PushAgent;->getNoDisturbEndMinute()I

    move-result v5

    add-int/2addr v4, v5

    .line 359
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/message/PushAgent;->getNoDisturbStartHour()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    .line 361
    invoke-static {p0}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/umeng/message/PushAgent;->getNoDisturbStartMinute()I

    move-result v6

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_3

    move v4, v1

    .line 362
    :goto_2
    if-eqz v4, :cond_5

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 364
    :cond_0
    :goto_3
    return v1

    :cond_1
    move v0, v2

    .line 348
    goto :goto_0

    :cond_2
    move v3, v2

    .line 353
    goto :goto_1

    :cond_3
    move v4, v2

    .line 361
    goto :goto_2

    :cond_4
    move v1, v2

    .line 362
    goto :goto_3

    :cond_5
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    move v1, v2

    .line 364
    goto :goto_3
.end method


# virtual methods
.method public final a()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 535
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 536
    const-string v1, "id"

    iget-object v2, p0, Lcom/umeng/message/local/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v1, "localnotification_id"

    iget-object v2, p0, Lcom/umeng/message/local/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v1, "flags"

    iget v2, p0, Lcom/umeng/message/local/g;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 539
    const-string v1, "defaults"

    iget v2, p0, Lcom/umeng/message/local/g;->e:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 540
    const-string v1, "smallicon_drawable"

    iget-object v2, p0, Lcom/umeng/message/local/g;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v1, "largeicon_drawable"

    iget-object v2, p0, Lcom/umeng/message/local/g;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v1, "sound_drawable"

    iget-object v2, p0, Lcom/umeng/message/local/g;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    const-string v1, "play_vibrate"

    iget-boolean v2, p0, Lcom/umeng/message/local/g;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 544
    const-string v1, "play_lights"

    iget-boolean v2, p0, Lcom/umeng/message/local/g;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 545
    const-string v1, "play_sound"

    iget-boolean v2, p0, Lcom/umeng/message/local/g;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 546
    const-string v1, "screen_on"

    iget-boolean v2, p0, Lcom/umeng/message/local/g;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 547
    const-string v1, "layout_id"

    iget v2, p0, Lcom/umeng/message/local/g;->j:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    const-string v1, "layout_title_id"

    iget v2, p0, Lcom/umeng/message/local/g;->k:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    const-string v1, "layout_content_id"

    iget v2, p0, Lcom/umeng/message/local/g;->l:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 550
    const-string v1, "layout_icon_id"

    iget v2, p0, Lcom/umeng/message/local/g;->m:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 551
    const-string v1, "layout_icon_drawable_id"

    iget v2, p0, Lcom/umeng/message/local/g;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 552
    return-object v0
.end method

.method final b(Landroid/content/Context;)I
    .locals 5

    .prologue
    .line 259
    const/4 v1, -0x1

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/local/g;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 262
    invoke-static {p1}, Lcom/umeng/a/a/d;->a(Landroid/content/Context;)Lcom/umeng/a/a/d;

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/message/local/g;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/umeng/a/a/d;->a(Ljava/lang/String;)I

    move-result v1

    .line 264
    :cond_0
    if-gez v1, :cond_1

    .line 265
    invoke-static {p1}, Lcom/umeng/a/a/d;->a(Landroid/content/Context;)Lcom/umeng/a/a/d;

    move-result-object v0

    const-string v2, "umeng_push_notification_default_small_icon"

    invoke-virtual {v0, v2}, Lcom/umeng/a/a/d;->a(Ljava/lang/String;)I

    move-result v1

    .line 267
    :cond_1
    if-gez v1, :cond_3

    .line 268
    sget-object v0, Lcom/umeng/message/local/g;->a:Ljava/lang/String;

    const-string v2, "no custom notificaiton icon, fail back to app icon."

    invoke-static {v0, v2}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    :goto_0
    if-gez v0, :cond_2

    .line 272
    :try_start_1
    sget-object v1, Lcom/umeng/message/local/g;->a:Ljava/lang/String;

    const-string v2, "Cann\'t find appropriate icon for notification, please make sure you have specified an icon for this notification or the app has defined an icon."

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 278
    :cond_2
    :goto_1
    return v0

    .line 275
    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method final c(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 282
    .line 285
    const/4 v1, -0x1

    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/umeng/message/local/g;->p:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 288
    invoke-static {p1}, Lcom/umeng/a/a/d;->a(Landroid/content/Context;)Lcom/umeng/a/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/local/g;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/umeng/a/a/d;->a(Ljava/lang/String;)I

    move-result v1

    .line 290
    :cond_0
    if-gez v1, :cond_1

    .line 291
    invoke-static {p1}, Lcom/umeng/a/a/d;->a(Landroid/content/Context;)Lcom/umeng/a/a/d;

    move-result-object v1

    const-string v2, "umeng_push_notification_default_large_icon"

    invoke-virtual {v1, v2}, Lcom/umeng/a/a/d;->a(Ljava/lang/String;)I

    move-result v1

    .line 293
    :cond_1
    if-lez v1, :cond_4

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v2, v1

    .line 297
    :goto_0
    if-eqz v2, :cond_2

    .line 299
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_3

    .line 300
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 304
    :goto_1
    const/4 v3, 0x1

    invoke-static {v2, v1, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 312
    :cond_2
    :goto_2
    return-object v0

    .line 302
    :cond_3
    const/high16 v1, 0x42800000    # 64.0f

    invoke-static {v1}, Lcom/umeng/message/proguard/bc;->a(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_1

    .line 309
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_4
    move-object v2, v0

    goto :goto_0
.end method

.method final d(Landroid/content/Context;)Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 316
    .line 319
    const/4 v1, -0x1

    .line 321
    :try_start_0
    iget-object v2, p0, Lcom/umeng/message/local/g;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    invoke-static {p1}, Lcom/umeng/a/a/d;->a(Landroid/content/Context;)Lcom/umeng/a/a/d;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/message/local/g;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/umeng/a/a/d;->b(Ljava/lang/String;)I

    move-result v1

    .line 324
    :cond_0
    if-gez v1, :cond_1

    .line 325
    invoke-static {p1}, Lcom/umeng/a/a/d;->a(Landroid/content/Context;)Lcom/umeng/a/a/d;

    move-result-object v1

    const-string v2, "umeng_push_notification_default_sound"

    invoke-virtual {v1, v2}, Lcom/umeng/a/a/d;->b(Ljava/lang/String;)I

    move-result v1

    .line 327
    :cond_1
    if-lez v1, :cond_3

    .line 328
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android.resource://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 330
    :goto_0
    if-eqz v1, :cond_2

    .line 331
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 338
    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method
