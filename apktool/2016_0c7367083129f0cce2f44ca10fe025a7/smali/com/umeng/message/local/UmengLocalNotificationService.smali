.class public Lcom/umeng/message/local/UmengLocalNotificationService;
.super Landroid/app/IntentService;
.source "UmengLocalNotificationService.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/umeng/message/local/UmengLocalNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/local/UmengLocalNotificationService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "UmengLocalNotificationService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/umeng/message/local/UmengLocalNotificationService;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/local/e;->a(Landroid/content/Context;)Lcom/umeng/message/local/e;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p1}, Lcom/umeng/message/local/e;->a(Ljava/lang/String;)Lcom/umeng/message/local/b;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/umeng/message/local/UmengLocalNotificationService;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/message/local/c;->a(Landroid/content/Context;Lcom/umeng/message/local/b;)J

    move-result-wide v2

    .line 95
    sget-object v1, Lcom/umeng/message/local/UmengLocalNotificationService;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "time="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/umeng/message/local/c;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7174
    iget v0, v0, Lcom/umeng/message/local/b;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    if-nez v0, :cond_1

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/umeng/message/local/UmengLocalNotificationService;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/local/d;->a(Landroid/content/Context;)Lcom/umeng/message/local/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/message/local/d;->c(Ljava/lang/String;)Z

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/local/UmengLocalNotificationService;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    sget-object v1, Lcom/umeng/message/local/UmengLocalNotificationService;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 109
    :catch_1
    move-exception v0

    .line 110
    sget-object v1, Lcom/umeng/message/local/UmengLocalNotificationService;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 106
    :cond_1
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/local/UmengLocalNotificationService;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 107
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/umeng/message/local/UmengLocalNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 108
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Lcom/umeng/message/local/UmengLocalNotificationService;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 117
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/umeng/message/local/UmengLocalNotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 118
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 119
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 129
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 130
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/umeng/message/local/UmengLocalNotificationService;->b:Landroid/content/Context;

    const-class v3, Lcom/umeng/message/local/UmengLocalNotificationService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 131
    const-string v2, "local_notification_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v2, "local_notification_type"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v2, p0, Lcom/umeng/message/local/UmengLocalNotificationService;->b:Landroid/content/Context;

    const/high16 v3, 0x8000000

    invoke-static {v2, v0, v1, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 136
    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/umeng/message/local/UmengLocalNotificationService;->a:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/umeng/message/local/UmengLocalNotificationService;->a:Ljava/lang/String;

    const-string v1, "onDestory"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 70
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14

    .prologue
    .line 47
    const-string v0, "local_notification_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 48
    const-string v0, "local_notification_type"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    const-string v1, "add_local_notification"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    const-string v0, "display_local_notification"

    invoke-direct {p0, v4, v0}, Lcom/umeng/message/local/UmengLocalNotificationService;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    const-string v1, "update_local_notification"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    const-string v0, "display_local_notification"

    invoke-direct {p0, v4, v0}, Lcom/umeng/message/local/UmengLocalNotificationService;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v0, "display_local_notification"

    invoke-direct {p0, v4, v0}, Lcom/umeng/message/local/UmengLocalNotificationService;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_2
    const-string v1, "delete_local_notification"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    const-string v0, "display_local_notification"

    invoke-direct {p0, v4, v0}, Lcom/umeng/message/local/UmengLocalNotificationService;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_3
    const-string v1, "clear_local_notification"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 57
    const-string v1, "display_local_notification"

    .line 1122
    const-string v0, ";"

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1123
    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1124
    invoke-direct {p0, v4, v1}, Lcom/umeng/message/local/UmengLocalNotificationService;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 58
    :cond_4
    const-string v1, "display_local_notification"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2074
    :try_start_0
    sget-object v0, Lcom/umeng/message/local/UmengLocalNotificationService;->a:Ljava/lang/String;

    const-string v1, "displayLocalNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2075
    iget-object v0, p0, Lcom/umeng/message/local/UmengLocalNotificationService;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/message/local/e;->a(Landroid/content/Context;)Lcom/umeng/message/local/e;

    move-result-object v0

    .line 2076
    invoke-virtual {v0, v4}, Lcom/umeng/message/local/e;->a(Ljava/lang/String;)Lcom/umeng/message/local/b;

    move-result-object v5

    .line 2077
    if-eqz v5, :cond_5

    .line 2174
    iget v0, v5, Lcom/umeng/message/local/b;->h:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2077
    if-nez v0, :cond_6

    .line 60
    :cond_5
    :goto_2
    const-string v0, "display_local_notification"

    invoke-direct {p0, v4, v0}, Lcom/umeng/message/local/UmengLocalNotificationService;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v0, "display_local_notification"

    invoke-direct {p0, v4, v0}, Lcom/umeng/message/local/UmengLocalNotificationService;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2232
    :cond_6
    :try_start_1
    iget-object v6, v5, Lcom/umeng/message/local/b;->o:Lcom/umeng/message/local/g;

    .line 2079
    iget-object v7, p0, Lcom/umeng/message/local/UmengLocalNotificationService;->b:Landroid/content/Context;

    .line 3208
    iget-object v1, v5, Lcom/umeng/message/local/b;->l:Ljava/lang/String;

    .line 3216
    iget-object v2, v5, Lcom/umeng/message/local/b;->m:Ljava/lang/String;

    .line 3224
    iget-object v3, v5, Lcom/umeng/message/local/b;->n:Ljava/lang/String;

    .line 4135
    new-instance v8, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v8, v7}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 4137
    invoke-virtual {v6, v7}, Lcom/umeng/message/local/g;->b(Landroid/content/Context;)I

    move-result v9

    .line 4139
    sget-object v0, Lcom/umeng/message/local/g;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "title="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4140
    sget-object v0, Lcom/umeng/message/local/g;->a:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "smallIconId="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4142
    if-lez v9, :cond_b

    .line 4143
    invoke-virtual {v8, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 4147
    invoke-virtual {v6, v7}, Lcom/umeng/message/local/g;->c(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 4149
    iget v0, v6, Lcom/umeng/message/local/g;->d:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    .line 4151
    :goto_3
    sget-object v11, Lcom/umeng/message/local/g;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "flags="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v6, Lcom/umeng/message/local/g;->d:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4152
    sget-object v11, Lcom/umeng/message/local/g;->a:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "isAutoCancel="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4154
    iget v11, v6, Lcom/umeng/message/local/g;->j:I

    if-lez v11, :cond_7

    iget v11, v6, Lcom/umeng/message/local/g;->k:I

    if-lez v11, :cond_7

    iget v11, v6, Lcom/umeng/message/local/g;->l:I

    if-lez v11, :cond_7

    iget v11, v6, Lcom/umeng/message/local/g;->m:I

    if-lez v11, :cond_7

    iget v11, v6, Lcom/umeng/message/local/g;->n:I

    if-gtz v11, :cond_d

    .line 4156
    :cond_7
    if-eqz v10, :cond_8

    .line 4157
    invoke-virtual {v8, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 4159
    :cond_8
    invoke-virtual {v8, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 4160
    invoke-virtual {v9, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 4162
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 4163
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 4164
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 4165
    invoke-virtual {v8, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 4167
    invoke-virtual {v8}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 4238
    :goto_4
    const/4 v2, 0x0

    .line 4239
    invoke-static {v7}, Lcom/umeng/message/local/g;->e(Landroid/content/Context;)Z

    move-result v0

    .line 4241
    if-eqz v0, :cond_e

    .line 4243
    const/4 v0, 0x0

    .line 4182
    :goto_5
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_a

    .line 4183
    invoke-virtual {v6, v7}, Lcom/umeng/message/local/g;->d(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 4184
    if-eqz v2, :cond_9

    .line 4185
    iput-object v2, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 4186
    :cond_9
    if-eqz v2, :cond_a

    .line 4187
    xor-int/lit8 v0, v0, 0x1

    .line 4189
    :cond_a
    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 4191
    invoke-static {v7}, Lcom/umeng/message/local/g;->a(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object v0, v1

    .line 6232
    :goto_6
    iget-object v1, v5, Lcom/umeng/message/local/b;->o:Lcom/umeng/message/local/g;

    .line 2081
    iget-object v1, p0, Lcom/umeng/message/local/UmengLocalNotificationService;->b:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/umeng/message/local/g;->a(Landroid/content/Context;Landroid/app/Notification;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 2082
    :catch_0
    move-exception v0

    .line 2083
    sget-object v1, Lcom/umeng/message/local/UmengLocalNotificationService;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2084
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 4145
    :cond_b
    const/4 v0, 0x0

    goto :goto_6

    .line 4149
    :cond_c
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 4169
    :cond_d
    :try_start_2
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget v12, v6, Lcom/umeng/message/local/g;->j:I

    invoke-direct {v3, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 4170
    iget v11, v6, Lcom/umeng/message/local/g;->k:I

    invoke-virtual {v3, v11, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4171
    iget v1, v6, Lcom/umeng/message/local/g;->l:I

    invoke-virtual {v3, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4172
    iget v1, v6, Lcom/umeng/message/local/g;->n:I

    invoke-virtual {v3, v1, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 4173
    iget v1, v6, Lcom/umeng/message/local/g;->m:I

    invoke-virtual {v3, v1, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 4174
    invoke-virtual {v8, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 4175
    invoke-virtual {v8, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 4176
    invoke-virtual {v8}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 4178
    iput-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_4

    .line 4245
    :cond_e
    iget-boolean v0, v6, Lcom/umeng/message/local/g;->f:Z

    if-eqz v0, :cond_f

    .line 4246
    iget v0, v6, Lcom/umeng/message/local/g;->e:I

    or-int/lit8 v0, v0, 0x2

    or-int/lit8 v2, v0, 0x0

    .line 4247
    :cond_f
    iget-boolean v0, v6, Lcom/umeng/message/local/g;->g:Z

    if-eqz v0, :cond_10

    .line 4248
    iget v0, v6, Lcom/umeng/message/local/g;->e:I

    or-int/lit8 v0, v0, 0x4

    or-int/2addr v2, v0

    .line 4249
    :cond_10
    iget-boolean v0, v6, Lcom/umeng/message/local/g;->h:Z

    if-eqz v0, :cond_11

    .line 4250
    iget v0, v6, Lcom/umeng/message/local/g;->e:I

    or-int/lit8 v0, v0, 0x1

    or-int/2addr v2, v0

    .line 4251
    :cond_11
    iget-boolean v0, v6, Lcom/umeng/message/local/g;->i:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_14

    .line 4370
    :try_start_3
    const-string v0, "power"

    .line 4371
    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4372
    const/4 v3, 0x0

    .line 4376
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v9, 0x7

    if-lt v8, v9, :cond_13

    .line 4377
    new-instance v3, Lcom/umeng/message/local/h;

    invoke-direct {v3, v6, v0}, Lcom/umeng/message/local/h;-><init>(Lcom/umeng/message/local/g;Landroid/os/PowerManager;)V

    .line 5379
    iget-object v3, v3, Lcom/umeng/message/local/h;->a:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    .line 4387
    :goto_7
    sget-object v8, Lcom/umeng/message/local/g;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "screen on................................."

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4389
    if-nez v3, :cond_12

    .line 4391
    const v3, 0x30000006

    const-string v8, "MyLock"

    invoke-virtual {v0, v3, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 4394
    const-wide/16 v8, 0x2710

    invoke-virtual {v0, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_12
    move v0, v2

    .line 4398
    goto/16 :goto_5

    .line 4384
    :cond_13
    sget-object v8, Lcom/umeng/message/local/g;->a:Ljava/lang/String;

    const-string v9, "android os version < 7, skip checking screen on status"

    invoke-static {v8, v9}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    .line 4397
    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_14
    move v0, v2

    goto/16 :goto_5
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 40
    iput-object p0, p0, Lcom/umeng/message/local/UmengLocalNotificationService;->b:Landroid/content/Context;

    .line 41
    invoke-super {p0, p1, p2, p3}, Landroid/app/IntentService;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
