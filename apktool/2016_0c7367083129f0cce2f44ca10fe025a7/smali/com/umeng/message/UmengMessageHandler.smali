.class public Lcom/umeng/message/UmengMessageHandler;
.super Ljava/lang/Object;
.source "UmengMessageHandler.java"

# interfaces
.implements Lcom/umeng/message/UHandler;


# static fields
.field private static a:I

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/util/Date;

.field private static d:Ljava/lang/String;


# instance fields
.field private e:Lcom/umeng/message/a/a;

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/16 v0, 0x40

    sput v0, Lcom/umeng/message/UmengMessageHandler;->a:I

    .line 48
    const-class v0, Lcom/umeng/message/UmengMessageHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    .line 50
    const-string v0, "9999999999999"

    sput-object v0, Lcom/umeng/message/UmengMessageHandler;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/message/UmengMessageHandler;->e:Lcom/umeng/message/a/a;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/app/Notification;ZLcom/umeng/message/a/a;)V
    .locals 5

    .prologue
    .line 168
    :try_start_0
    const-string v0, "notification"

    .line 169
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 171
    iget v1, p0, Lcom/umeng/message/UmengMessageHandler;->f:I

    .line 173
    invoke-static {p1}, Lcom/umeng/message/proguard/ad;->b(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/umeng/message/proguard/ad;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/PushAgent;->getNotificationOnForeground()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 175
    :cond_0
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MessageSharedPrefs;->getDisplayNotificationNumber()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    if-eqz p3, :cond_4

    .line 177
    :cond_1
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MessageSharedPrefs;->getDisplayNotificationNumber()I

    move-result v2

    if-lez v2, :cond_3

    .line 178
    :goto_0
    invoke-static {}, Lcom/umeng/message/MessageNotificationQueue;->getInstance()Lcom/umeng/message/MessageNotificationQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MessageNotificationQueue;->size()I

    move-result v2

    .line 179
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/message/MessageSharedPrefs;->getDisplayNotificationNumber()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 180
    invoke-static {}, Lcom/umeng/message/MessageNotificationQueue;->getInstance()Lcom/umeng/message/MessageNotificationQueue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/umeng/message/MessageNotificationQueue;->pollFirst()Lcom/umeng/message/a/b;

    move-result-object v2

    .line 181
    iget v3, v2, Lcom/umeng/message/a/b;->a:I

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    .line 182
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/umeng/message/UTrack;->setClearPrevMessage(Z)V

    .line 183
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v3

    iget-object v2, v2, Lcom/umeng/message/a/b;->b:Lcom/umeng/message/a/a;

    invoke-virtual {v3, v2}, Lcom/umeng/message/UTrack;->trackMsgDismissed(Lcom/umeng/message/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    :goto_1
    return-void

    .line 185
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/umeng/message/MessageNotificationQueue;->getInstance()Lcom/umeng/message/MessageNotificationQueue;

    move-result-object v2

    new-instance v3, Lcom/umeng/message/a/b;

    invoke-direct {v3, v1, p4}, Lcom/umeng/message/a/b;-><init>(ILcom/umeng/message/a/a;)V

    invoke-virtual {v2, v3}, Lcom/umeng/message/MessageNotificationQueue;->addLast(Lcom/umeng/message/a/b;)V

    .line 187
    :cond_3
    invoke-virtual {v0, v1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 189
    :cond_4
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/message/UTrack;->setClearPrevMessage(Z)V

    .line 190
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/umeng/message/UTrack;->trackMsgDismissed(Lcom/umeng/message/a/a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method public dealWithCustomMessage(Landroid/content/Context;Lcom/umeng/message/a/a;)V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public dealWithNotificationMessage(Landroid/content/Context;Lcom/umeng/message/a/a;)V
    .locals 8

    .prologue
    const/16 v7, 0x14

    const/4 v6, 0x7

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 72
    sget-object v0, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "notify: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1158
    iget-object v4, p2, Lcom/umeng/message/a/a;->v:Lorg/json/JSONObject;

    .line 72
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1163
    invoke-virtual {p2}, Lcom/umeng/message/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/umeng/message/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    .line 77
    :goto_0
    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    iget-object v1, p2, Lcom/umeng/message/a/a;->a:Ljava/lang/String;

    .line 1630
    iget-object v0, v0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "KEY_MSG_RESOURCE_DOWNLOAD_PREFIX"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 77
    if-nez v0, :cond_3

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->startDownloadResourceService(Landroid/content/Context;Lcom/umeng/message/a/a;)Z

    move-result v0

    .line 79
    if-eqz v0, :cond_3

    .line 163
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v3

    .line 1163
    goto :goto_0

    .line 82
    :cond_3
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    .line 1657
    iget-object v0, v0, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    const-string v1, "last_msg_id"

    const-string v4, ""

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 85
    const-string v0, ""

    .line 92
    :goto_2
    iget-object v1, p2, Lcom/umeng/message/a/a;->a:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/16 v1, 0x16

    iget-object v4, p2, Lcom/umeng/message/a/a;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v1, v4, :cond_9

    iget-object v1, p2, Lcom/umeng/message/a/a;->a:Ljava/lang/String;

    const-string v4, "u"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 93
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v1

    iget-object v4, p2, Lcom/umeng/message/a/a;->a:Ljava/lang/String;

    .line 2652
    iget-object v1, v1, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v5, "last_msg_id"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2653
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    iget-object v1, p2, Lcom/umeng/message/a/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 99
    :goto_3
    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v0, v2

    .line 106
    :goto_4
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v1

    iget-object v4, p2, Lcom/umeng/message/a/a;->a:Ljava/lang/String;

    .line 3643
    iget-object v1, v1, Lcom/umeng/message/MessageSharedPrefs;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "KEY_MSG_RESOURCE_DOWNLOAD_PREFIX"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3644
    invoke-interface {v1, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3645
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getNotification(Landroid/content/Context;Lcom/umeng/message/a/a;)Landroid/app/Notification;

    move-result-object v1

    .line 109
    if-eqz v1, :cond_4

    iget v4, v1, Landroid/app/Notification;->icon:I

    .line 118
    :cond_4
    if-nez v1, :cond_5

    .line 120
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 4389
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getSmallIconId(Landroid/content/Context;Lcom/umeng/message/a/a;)I

    move-result v4

    .line 4390
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getLargeIcon(Landroid/content/Context;Lcom/umeng/message/a/a;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 4392
    if-gez v4, :cond_c

    .line 123
    :goto_5
    if-eqz v3, :cond_1

    .line 126
    iget-object v3, p2, Lcom/umeng/message/a/a;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p2, Lcom/umeng/message/a/a;->h:Ljava/lang/String;

    .line 127
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    iget-object v4, p2, Lcom/umeng/message/a/a;->f:Ljava/lang/String;

    .line 128
    invoke-virtual {v3, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v3

    .line 129
    invoke-virtual {v3, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 139
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 143
    :cond_5
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    iput v2, p0, Lcom/umeng/message/UmengMessageHandler;->f:I

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getClickPendingIntent(Landroid/content/Context;Lcom/umeng/message/a/a;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 146
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getDismissPendingIntent(Landroid/content/Context;Lcom/umeng/message/a/a;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 148
    iput-object v3, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 149
    iput-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getNotificationDefaults(Landroid/content/Context;Lcom/umeng/message/a/a;)I

    move-result v2

    .line 152
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_7

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getSound(Landroid/content/Context;Lcom/umeng/message/a/a;)Landroid/net/Uri;

    move-result-object v3

    .line 154
    if-eqz v3, :cond_6

    .line 155
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->getSound(Landroid/content/Context;Lcom/umeng/message/a/a;)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 157
    :cond_6
    if-eqz v3, :cond_7

    .line 158
    xor-int/lit8 v2, v2, 0x1

    .line 160
    :cond_7
    iput v2, v1, Landroid/app/Notification;->defaults:I

    .line 162
    invoke-direct {p0, p1, v1, v0, p2}, Lcom/umeng/message/UmengMessageHandler;->a(Landroid/content/Context;Landroid/app/Notification;ZLcom/umeng/message/a/a;)V

    goto/16 :goto_1

    .line 87
    :cond_8
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 96
    :cond_9
    sget-object v1, Lcom/umeng/message/UmengMessageHandler;->d:Ljava/lang/String;

    goto/16 :goto_3

    .line 102
    :cond_a
    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_b

    move v0, v2

    goto/16 :goto_4

    :cond_b
    move v0, v3

    goto/16 :goto_4

    .line 4395
    :cond_c
    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 4401
    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move v3, v2

    .line 4403
    goto :goto_5
.end method

.method public getClickPendingIntent(Landroid/content/Context;Lcom/umeng/message/a/a;)Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 235
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 236
    const-class v1, Lcom/umeng/message/NotificationProxyBroadcastReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 237
    const-string v1, "MSG"

    .line 5158
    iget-object v2, p2, Lcom/umeng/message/a/a;->v:Lorg/json/JSONObject;

    .line 238
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v1, "ACTION"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 242
    const-string v1, "MESSAGE_ID"

    iget-object v2, p2, Lcom/umeng/message/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v1, "NOTIFICATION_ID"

    iget v2, p0, Lcom/umeng/message/UmengMessageHandler;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    const-string v1, "TASK_ID"

    iget-object v2, p2, Lcom/umeng/message/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v1, v2

    const/high16 v2, 0x10000000

    .line 251
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 255
    return-object v0
.end method

.method public getDismissPendingIntent(Landroid/content/Context;Lcom/umeng/message/a/a;)Landroid/app/PendingIntent;
    .locals 6

    .prologue
    .line 259
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 260
    const-class v1, Lcom/umeng/message/NotificationProxyBroadcastReceiver;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 261
    const-string v1, "MSG"

    .line 6158
    iget-object v2, p2, Lcom/umeng/message/a/a;->v:Lorg/json/JSONObject;

    .line 262
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v1, "ACTION"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v1, "MESSAGE_ID"

    iget-object v2, p2, Lcom/umeng/message/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v1, "NOTIFICATION_ID"

    iget v2, p0, Lcom/umeng/message/UmengMessageHandler;->f:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    const-string v1, "TASK_ID"

    iget-object v2, p2, Lcom/umeng/message/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    long-to-int v1, v2

    const/high16 v2, 0x10000000

    .line 277
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 281
    return-object v0
.end method

.method public getLargeIcon(Landroid/content/Context;Lcom/umeng/message/a/a;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 443
    .line 445
    :try_start_0
    invoke-virtual {p2}, Lcom/umeng/message/a/a;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->getMessageResourceFolder(Landroid/content/Context;Lcom/umeng/message/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/umeng/message/a/a;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 448
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 450
    :goto_0
    if-nez v1, :cond_4

    .line 452
    const/4 v2, -0x1

    .line 453
    iget-object v3, p2, Lcom/umeng/message/a/a;->w:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 455
    invoke-static {p1}, Lcom/umeng/a/a/d;->a(Landroid/content/Context;)Lcom/umeng/a/a/d;

    move-result-object v2

    iget-object v3, p2, Lcom/umeng/message/a/a;->w:Ljava/lang/String;

    .line 456
    invoke-virtual {v2, v3}, Lcom/umeng/a/a/d;->a(Ljava/lang/String;)I

    move-result v2

    .line 459
    :cond_0
    if-gez v2, :cond_1

    .line 461
    invoke-static {p1}, Lcom/umeng/a/a/d;->a(Landroid/content/Context;)Lcom/umeng/a/a/d;

    move-result-object v2

    const-string v3, "umeng_push_notification_default_large_icon"

    .line 462
    invoke-virtual {v2, v3}, Lcom/umeng/a/a/d;->a(Ljava/lang/String;)I

    move-result v2

    .line 465
    :cond_1
    if-lez v2, :cond_4

    .line 468
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 467
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v2, v1

    .line 473
    :goto_1
    if-eqz v2, :cond_2

    .line 476
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_3

    .line 477
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1050006

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 481
    :goto_2
    const/4 v3, 0x1

    invoke-static {v2, v1, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 489
    :cond_2
    :goto_3
    return-object v0

    .line 479
    :cond_3
    sget v1, Lcom/umeng/message/UmengMessageHandler;->a:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/umeng/message/proguard/bc;->a(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_2

    .line 486
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_4
    move-object v2, v1

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public getNotification(Landroid/content/Context;Lcom/umeng/message/a/a;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNotificationDefaults(Landroid/content/Context;Lcom/umeng/message/a/a;)I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 313
    .line 314
    invoke-virtual {p0, p1}, Lcom/umeng/message/UmengMessageHandler;->isInNoDisturbTime(Landroid/content/Context;)Z

    move-result v0

    .line 316
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/message/MessageSharedPrefs;->a()I

    move-result v3

    .line 317
    const-wide/16 v4, 0x1

    int-to-long v6, v3

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 319
    if-eqz v0, :cond_1

    move v1, v2

    .line 370
    :cond_0
    :goto_0
    return v1

    .line 322
    :cond_1
    sget-object v0, Lcom/umeng/message/UmengMessageHandler;->c:Ljava/util/Date;

    if-eqz v0, :cond_2

    .line 323
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sget-object v0, Lcom/umeng/message/UmengMessageHandler;->c:Ljava/util/Date;

    .line 324
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    cmp-long v0, v6, v4

    if-gez v0, :cond_2

    move v1, v2

    .line 326
    goto :goto_0

    .line 328
    :cond_2
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/message/MessageSharedPrefs;->getNotificationPlayVibrate()I

    move-result v0

    .line 329
    sget-object v3, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "playVibrate:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    if-ne v0, v10, :cond_4

    move v0, v1

    .line 340
    :goto_1
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/message/MessageSharedPrefs;->getNotificationPlayLights()I

    move-result v3

    .line 341
    sget-object v4, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "playLights:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    if-ne v3, v10, :cond_5

    .line 343
    or-int/lit8 v0, v0, 0x4

    .line 352
    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/umeng/message/MessageSharedPrefs;->getInstance(Landroid/content/Context;)Lcom/umeng/message/MessageSharedPrefs;

    move-result-object v3

    invoke-virtual {v3}, Lcom/umeng/message/MessageSharedPrefs;->getNotificationPlaySound()I

    move-result v3

    .line 353
    sget-object v4, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "playSound:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    if-ne v3, v10, :cond_6

    .line 355
    or-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 364
    :goto_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/UmengMessageHandler;->c:Ljava/util/Date;

    .line 365
    iget-boolean v0, p2, Lcom/umeng/message/a/a;->l:Z

    if-eqz v0, :cond_0

    .line 6200
    :try_start_0
    const-string v0, "power"

    .line 6201
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 6206
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x7

    if-lt v3, v4, :cond_7

    .line 6207
    new-instance v2, Lcom/umeng/message/UmengMessageHandler$1;

    invoke-direct {v2, p0, v0}, Lcom/umeng/message/UmengMessageHandler$1;-><init>(Lcom/umeng/message/UmengMessageHandler;Landroid/os/PowerManager;)V

    .line 7209
    iget-object v2, v2, Lcom/umeng/message/UmengMessageHandler$1;->a:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    .line 6217
    :goto_4
    sget-object v3, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "screen on................................."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6219
    if-nez v2, :cond_0

    .line 6221
    const v2, 0x30000006

    const-string v3, "MyLock"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 6224
    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 6227
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 333
    :cond_4
    if-eq v0, v1, :cond_9

    .line 334
    iget-boolean v0, p2, Lcom/umeng/message/a/a;->i:Z

    if-eqz v0, :cond_9

    move v0, v1

    .line 335
    goto/16 :goto_1

    .line 345
    :cond_5
    if-eq v3, v1, :cond_3

    .line 346
    iget-boolean v3, p2, Lcom/umeng/message/a/a;->j:Z

    if-eqz v3, :cond_3

    .line 347
    or-int/lit8 v0, v0, 0x4

    goto/16 :goto_2

    .line 357
    :cond_6
    if-eq v3, v1, :cond_8

    .line 358
    iget-boolean v1, p2, Lcom/umeng/message/a/a;->k:Z

    if-eqz v1, :cond_8

    .line 359
    or-int/lit8 v0, v0, 0x1

    move v1, v0

    goto :goto_3

    .line 6214
    :cond_7
    :try_start_1
    sget-object v3, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    const-string v4, "android os version < 7, skip checking screen on status"

    invoke-static {v3, v4}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_8
    move v1, v0

    goto :goto_3

    :cond_9
    move v0, v2

    goto/16 :goto_1
.end method

.method public getSmallIconId(Landroid/content/Context;Lcom/umeng/message/a/a;)I
    .locals 5

    .prologue
    .line 412
    const/4 v1, -0x1

    .line 414
    :try_start_0
    iget-object v0, p2, Lcom/umeng/message/a/a;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    invoke-static {p1}, Lcom/umeng/a/a/d;->a(Landroid/content/Context;)Lcom/umeng/a/a/d;

    move-result-object v0

    iget-object v2, p2, Lcom/umeng/message/a/a;->r:Ljava/lang/String;

    .line 417
    invoke-virtual {v0, v2}, Lcom/umeng/a/a/d;->a(Ljava/lang/String;)I

    move-result v1

    .line 420
    :cond_0
    if-gez v1, :cond_1

    .line 421
    invoke-static {p1}, Lcom/umeng/a/a/d;->a(Landroid/content/Context;)Lcom/umeng/a/a/d;

    move-result-object v0

    const-string v2, "umeng_push_notification_default_small_icon"

    .line 422
    invoke-virtual {v0, v2}, Lcom/umeng/a/a/d;->a(Ljava/lang/String;)I

    move-result v1

    .line 425
    :cond_1
    if-gez v1, :cond_3

    .line 426
    sget-object v0, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    const-string v2, "no custom notificaiton icon, fail back to app icon."

    invoke-static {v0, v2}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 428
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 427
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    if-gez v0, :cond_2

    .line 431
    :try_start_1
    sget-object v1, Lcom/umeng/message/UmengMessageHandler;->b:Ljava/lang/String;

    const-string v2, "Cann\'t find appropriate icon for notification, please make sure you have specified an icon for this notification or the app has defined an icon."

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 437
    :cond_2
    :goto_1
    return v0

    .line 434
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

.method public getSound(Landroid/content/Context;Lcom/umeng/message/a/a;)Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 495
    .line 498
    :try_start_0
    invoke-virtual {p2}, Lcom/umeng/message/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcom/umeng/message/UmengDownloadResourceService;->getMessageResourceFolder(Landroid/content/Context;Lcom/umeng/message/a/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/umeng/message/a/a;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 500
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v1, v0

    .line 504
    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 506
    const/4 v2, -0x1

    .line 508
    iget-object v3, p2, Lcom/umeng/message/a/a;->p:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 510
    invoke-static {p1}, Lcom/umeng/a/a/d;->a(Landroid/content/Context;)Lcom/umeng/a/a/d;

    move-result-object v2

    iget-object v3, p2, Lcom/umeng/message/a/a;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/umeng/a/a/d;->b(Ljava/lang/String;)I

    move-result v2

    .line 513
    :cond_1
    if-gez v2, :cond_2

    .line 515
    invoke-static {p1}, Lcom/umeng/a/a/d;->a(Landroid/content/Context;)Lcom/umeng/a/a/d;

    move-result-object v2

    const-string v3, "umeng_push_notification_default_sound"

    invoke-virtual {v2, v3}, Lcom/umeng/a/a/d;->b(Ljava/lang/String;)I

    move-result v2

    .line 518
    :cond_2
    if-lez v2, :cond_3

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "android.resource://"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    :cond_3
    if-eqz v1, :cond_4

    .line 526
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 533
    :cond_4
    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public handleMessage(Landroid/content/Context;Lcom/umeng/message/a/a;)V
    .locals 2

    .prologue
    .line 60
    const-string v0, "notification"

    iget-object v1, p2, Lcom/umeng/message/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->dealWithNotificationMessage(Landroid/content/Context;Lcom/umeng/message/a/a;)V

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    const-string v0, "custom"

    iget-object v1, p2, Lcom/umeng/message/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {p1}, Lcom/umeng/message/UTrack;->getInstance(Landroid/content/Context;)Lcom/umeng/message/UTrack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/message/UTrack;->setClearPrevMessage(Z)V

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/umeng/message/UmengMessageHandler;->dealWithCustomMessage(Landroid/content/Context;Lcom/umeng/message/a/a;)V

    goto :goto_0
.end method

.method public isInNoDisturbTime(Landroid/content/Context;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 286
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 287
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 289
    mul-int/lit8 v0, v3, 0x3c

    add-int/2addr v0, v4

    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v5

    .line 290
    invoke-virtual {v5}, Lcom/umeng/message/PushAgent;->getNoDisturbStartHour()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    .line 292
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/umeng/message/PushAgent;->getNoDisturbStartMinute()I

    move-result v6

    add-int/2addr v5, v6

    if-lt v0, v5, :cond_1

    move v0, v1

    .line 294
    :goto_0
    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v3, v4

    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v4

    .line 295
    invoke-virtual {v4}, Lcom/umeng/message/PushAgent;->getNoDisturbEndHour()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    .line 297
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/message/PushAgent;->getNoDisturbEndMinute()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_2

    move v3, v1

    .line 300
    :goto_1
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/umeng/message/PushAgent;->getNoDisturbEndHour()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    .line 302
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/message/PushAgent;->getNoDisturbEndMinute()I

    move-result v5

    add-int/2addr v4, v5

    .line 303
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/umeng/message/PushAgent;->getNoDisturbStartHour()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3c

    .line 305
    invoke-static {p1}, Lcom/umeng/message/PushAgent;->getInstance(Landroid/content/Context;)Lcom/umeng/message/PushAgent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/umeng/message/PushAgent;->getNoDisturbStartMinute()I

    move-result v6

    add-int/2addr v5, v6

    if-lt v4, v5, :cond_3

    move v4, v1

    .line 306
    :goto_2
    if-eqz v4, :cond_5

    if-eqz v0, :cond_4

    if-eqz v3, :cond_4

    .line 308
    :cond_0
    :goto_3
    return v1

    :cond_1
    move v0, v2

    .line 292
    goto :goto_0

    :cond_2
    move v3, v2

    .line 297
    goto :goto_1

    :cond_3
    move v4, v2

    .line 305
    goto :goto_2

    :cond_4
    move v1, v2

    .line 306
    goto :goto_3

    :cond_5
    if-nez v0, :cond_0

    if-nez v3, :cond_0

    move v1, v2

    .line 308
    goto :goto_3
.end method

.method public setPrevMessage(Lcom/umeng/message/a/a;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/umeng/message/UmengMessageHandler;->e:Lcom/umeng/message/a/a;

    .line 56
    return-void
.end method

.method public startDownloadResourceService(Landroid/content/Context;Lcom/umeng/message/a/a;)Z
    .locals 3

    .prologue
    .line 375
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/umeng/message/UmengDownloadResourceService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    const-string v1, "body"

    .line 8158
    iget-object v2, p2, Lcom/umeng/message/a/a;->v:Lorg/json/JSONObject;

    .line 376
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const-string v1, "id"

    iget-object v2, p2, Lcom/umeng/message/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 378
    const-string v1, "task_id"

    iget-object v2, p2, Lcom/umeng/message/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    const/4 v0, 0x1

    .line 383
    :goto_0
    return v0

    .line 382
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 383
    const/4 v0, 0x0

    goto :goto_0
.end method
