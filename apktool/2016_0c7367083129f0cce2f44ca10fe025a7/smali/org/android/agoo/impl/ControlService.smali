.class public final Lorg/android/agoo/impl/ControlService;
.super Ljava/lang/Object;
.source "ControlService.java"

# interfaces
.implements Lorg/android/agoo/a;


# static fields
.field private static final a:Ljava/util/Random;

.field private static final c:Lorg/android/agoo/d/c/b;


# instance fields
.field private b:Landroid/content/Context;

.field private final d:Landroid/content/ServiceConnection;

.field private final e:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/android/agoo/impl/ControlService;->a:Ljava/util/Random;

    .line 755
    new-instance v0, Lorg/android/agoo/d/c/h;

    invoke-direct {v0}, Lorg/android/agoo/d/c/h;-><init>()V

    sput-object v0, Lorg/android/agoo/impl/ControlService;->c:Lorg/android/agoo/d/c/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/android/agoo/impl/ControlService;->b:Landroid/content/Context;

    .line 1357
    new-instance v0, Lorg/android/agoo/impl/ControlService$1;

    invoke-direct {v0, p0}, Lorg/android/agoo/impl/ControlService$1;-><init>(Lorg/android/agoo/impl/ControlService;)V

    iput-object v0, p0, Lorg/android/agoo/impl/ControlService;->d:Landroid/content/ServiceConnection;

    .line 1389
    new-instance v0, Lorg/android/agoo/impl/ControlService$2;

    invoke-direct {v0, p0}, Lorg/android/agoo/impl/ControlService$2;-><init>(Lorg/android/agoo/impl/ControlService;)V

    iput-object v0, p0, Lorg/android/agoo/impl/ControlService;->e:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic a(Lorg/android/agoo/impl/ControlService;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/android/agoo/impl/ControlService;->b:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 312
    .line 314
    :try_start_0
    new-instance v2, Lcom/umeng/message/proguard/h;

    invoke-direct {v2, p0}, Lcom/umeng/message/proguard/h;-><init>(Landroid/content/Context;)V

    .line 2205
    iget-object v1, v2, Lcom/umeng/message/proguard/h;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2207
    iget-object v1, v2, Lcom/umeng/message/proguard/h;->f:Ljava/lang/String;

    const-string v3, "46000"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v2, Lcom/umeng/message/proguard/h;->f:Ljava/lang/String;

    const-string v3, "46002"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2209
    :cond_0
    const-string v1, "cm"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3193
    :goto_0
    :try_start_1
    iget-object v0, v2, Lcom/umeng/message/proguard/h;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 320
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 321
    const-string v1, "unknow"

    .line 323
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    const-string v0, "unknow"

    .line 326
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 4136
    invoke-static {p0}, Lorg/android/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 327
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 330
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 332
    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 333
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    const-string v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 335
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2210
    :cond_3
    :try_start_2
    iget-object v1, v2, Lcom/umeng/message/proguard/h;->f:Ljava/lang/String;

    const-string v3, "46001"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2212
    const-string v1, "cu"

    goto :goto_0

    .line 2213
    :cond_4
    iget-object v1, v2, Lcom/umeng/message/proguard/h;->f:Ljava/lang/String;

    const-string v3, "46003"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2214
    const-string v1, "ct"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_5
    move-object v1, v0

    .line 2217
    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 716
    :try_start_0
    const-string v0, "register_retry"

    invoke-static {p0, v0}, Lorg/android/agoo/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 718
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 719
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 722
    const-string v0, "alarm"

    .line 723
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 724
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 725
    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/a/a;)V
    .locals 6

    .prologue
    .line 1172
    const-string v0, "error"

    .line 1173
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1174
    const-string v1, "eventId"

    .line 1175
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1176
    const-string v2, "ControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleError:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const-string v2, "EVENT_CONNECTED"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1178
    invoke-interface {p2, p0, v0}, Lorg/android/agoo/a/a;->callError(Landroid/content/Context;Ljava/lang/String;)V

    .line 1219
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    const-string v2, "EVENT_SPDY_ERROR"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "EVENT_DISCONNECTED"

    .line 1182
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1183
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1184
    invoke-static {p0}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1185
    const-string v3, "ControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleError,currentPack="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",currentSudoPack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1187
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1188
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1189
    const-string v3, "command_restart_sudo"

    invoke-static {p0, v1, v2, p2, v3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/a/a;Ljava/lang/String;)V

    .line 1191
    :cond_3
    invoke-interface {p2, p0, v0}, Lorg/android/agoo/a/a;->callError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1194
    :cond_4
    const-string v2, "ERROR_NEED_ELECTION"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 50216
    invoke-static {p0, v1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1198
    :cond_5
    const-string v1, "ERROR_DEVICETOKEN_NULL"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1199
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->i(Landroid/content/Context;)V

    .line 1201
    invoke-interface {p2, p0, v0}, Lorg/android/agoo/a/a;->callError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1205
    :cond_6
    const-string v1, "ERRCODE_AUTH_REJECT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1206
    invoke-static {p0, p2}, Lorg/android/agoo/impl/ControlService;->d(Landroid/content/Context;Lorg/android/agoo/a/a;)V

    .line 1207
    invoke-interface {p2, p0, v0}, Lorg/android/agoo/a/a;->callError(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1210
    :cond_7
    const-string v1, "ERROR_APPKEY_NULL"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ERROR_APPSECRET_NULL"

    .line 1211
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ERROR_TTID_NULL"

    .line 1213
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1214
    :cond_8
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->i(Landroid/content/Context;)V

    .line 1215
    invoke-static {p0, p2}, Lorg/android/agoo/impl/ControlService;->d(Landroid/content/Context;Lorg/android/agoo/a/a;)V

    .line 1216
    invoke-interface {p2, p0, v0}, Lorg/android/agoo/a/a;->callError(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1316
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1317
    const-string v1, "org.agoo.android.intent.action.PING_V4"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1318
    const-string v1, "com.taobao.taobao"

    const-string v2, "com.taobao.accs.ChannelService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1319
    const-string v1, "source"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1320
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    :goto_0
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1326
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1327
    const-string v0, "ControlService"

    const-string v1, "onPingMessage:[currentSudoPack==null][retry election]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50242
    invoke-static {p1, p2}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1343
    :goto_1
    return-void

    .line 1321
    :catch_0
    move-exception v0

    .line 1322
    const-string v1, "ControlService"

    const-string v2, "onPingMessage ping accs error"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1333
    :cond_0
    :try_start_1
    const-string v1, "ControlService"

    const-string v2, "messageConnection [bind]"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1335
    const-string v2, "org.agoo.android.intent.action.PING_V4"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1336
    invoke-static {p1}, Lorg/android/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1337
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1338
    iget-object v0, p0, Lorg/android/agoo/impl/ControlService;->d:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1340
    :catch_1
    move-exception v0

    .line 1341
    const-string v1, "ControlService"

    const-string v2, "onPingMessage"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/a/a;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1274
    invoke-interface {p3}, Lorg/android/agoo/a/a;->callAgooService()Ljava/lang/Class;

    move-result-object v0

    .line 1275
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "restart---->[currentSudoPack:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:[start]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1277
    invoke-static {v0}, Lorg/android/agoo/impl/ControlService;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1278
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "enabledService---->["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1279
    invoke-interface {p3}, Lorg/android/agoo/a/a;->callAgooService()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1278
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    invoke-interface {p3}, Lorg/android/agoo/a/a;->callAgooService()Ljava/lang/Class;

    move-result-object v0

    .line 50218
    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 50220
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 50221
    if-nez v1, :cond_1

    .line 1282
    :cond_0
    :goto_0
    invoke-static {p0, p4}, Lcom/umeng/message/proguard/bj;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1283
    return-void

    .line 50225
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 50224
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v2

    .line 50226
    if-ltz v2, :cond_0

    .line 50229
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50230
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    .line 50231
    if-eq v0, v4, :cond_0

    if-eqz v0, :cond_0

    .line 50235
    const/4 v0, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/a/a;)V
    .locals 6

    .prologue
    .line 684
    :try_start_0
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    invoke-interface {p2, p0, p1}, Lorg/android/agoo/a/a;->callRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 686
    invoke-static {p0}, Lorg/android/agoo/e;->j(Landroid/content/Context;)I

    move-result v1

    .line 687
    if-eqz v0, :cond_1

    const/4 v0, 0x5

    if-ge v1, v0, :cond_1

    .line 688
    add-int/lit8 v0, v1, 0x1

    .line 689
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v1, Lorg/android/agoo/impl/ControlService;->a:Ljava/util/Random;

    const/16 v4, 0x2710

    .line 690
    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 691
    const-string v1, "ControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "registerfailed retrying--->["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 692
    invoke-static {v2, v3}, Lcom/umeng/message/proguard/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 691
    invoke-static {v1, v4}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-static {p0, v0}, Lorg/android/agoo/e;->a(Landroid/content/Context;I)V

    .line 694
    const-string v0, "register_retry"

    invoke-static {p0, v0}, Lorg/android/agoo/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 696
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 697
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    const/4 v1, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 699
    invoke-static {p0, v1, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 701
    const-string v0, "alarm"

    .line 702
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 703
    const/4 v4, 0x1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 712
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    const-string v0, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Not retrying failed operation["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lorg/android/agoo/d/c/i;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 971
    .line 973
    if-eqz p1, :cond_0

    .line 50118
    :try_start_0
    iget-boolean v0, p1, Lorg/android/agoo/d/c/i;->a:Z

    .line 973
    if-eqz v0, :cond_0

    .line 974
    const-string v2, "y"

    .line 975
    new-instance v0, Lorg/json/JSONObject;

    .line 50119
    iget-object v3, p1, Lorg/android/agoo/d/c/i;->c:Ljava/lang/String;

    .line 975
    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 976
    const-string v3, "device_id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 985
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 986
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "utdid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 987
    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 988
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "appkey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50121
    invoke-static {p0}, Lorg/android/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 988
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 989
    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 990
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startTime="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/umeng/message/proguard/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 991
    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 992
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ret="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 993
    const-string v2, "-->"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 994
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "fail_reasons="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 995
    const-string v1, "-->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deviceId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 997
    const-string v0, "-->"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 998
    const-string v0, "sdkVersion=20160215"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 999
    const-string v0, "-->"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestUrl="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1001
    const-string v0, "-->"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1002
    const-string v0, "actiontype=register"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1003
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1004
    invoke-static {p0, v0}, Lcom/umeng/message/proguard/bk;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 1008
    :goto_1
    return-void

    .line 978
    :cond_0
    const-string v2, "n"

    .line 979
    if-eqz p1, :cond_1

    .line 50120
    iget-object v0, p1, Lorg/android/agoo/d/c/i;->e:Ljava/lang/String;

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 980
    goto/16 :goto_0

    .line 982
    :cond_1
    const-string v0, "fail_reasons == null"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_0

    .line 1006
    :catch_0
    move-exception v0

    .line 1007
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/umeng/message/proguard/bk;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 599
    const/4 v0, 0x0

    .line 601
    :try_start_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 602
    if-eqz p1, :cond_0

    .line 603
    const-string v1, "y"

    .line 607
    :goto_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 608
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "utdid="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 610
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "appkey="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5136
    invoke-static {p0}, Lorg/android/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 610
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 611
    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 612
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "startTime="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/umeng/message/proguard/o;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    const-string v4, "-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 614
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ret="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    const-string v1, "-->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 616
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "categries="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    const-string v1, "-->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "currentPack="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    const-string v1, "-->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "currentSudoPack="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    const-string v1, "-->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "fail_reasons="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    const-string v1, "-->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 624
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "deviceId="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    const-string v1, "-->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    const-string v1, "sdkVersion=20160215"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    const-string v1, "-->"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    const-string v1, "actiontype=getNoticeElectionTrace"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    invoke-static {p0, v0}, Lcom/umeng/message/proguard/bk;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 634
    :goto_1
    return-void

    .line 605
    :cond_0
    const-string v1, "n"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 633
    :catch_0
    move-exception v1

    invoke-static {p0, v0}, Lcom/umeng/message/proguard/bk;->d(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Lorg/android/agoo/a/a;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 759
    .line 50088
    invoke-static {p0}, Lorg/android/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 50089
    invoke-static {p0}, Lorg/android/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 761
    const-string v3, "error"

    invoke-static {p0, v3}, Lorg/android/agoo/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 763
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 764
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 765
    const-string v1, "error"

    const-string v2, "ERROR_APPKEY_NULL"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    invoke-static {p0, v3, p1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/a/a;)V

    .line 787
    :goto_0
    return v0

    .line 770
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 771
    const-string v1, "error"

    const-string v2, "ERROR_TTID_NULL"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    invoke-static {p0, v3, p1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/a/a;)V

    goto :goto_0

    .line 777
    :cond_1
    sget-object v2, Lorg/android/agoo/impl/ControlService;->c:Lorg/android/agoo/d/c/b;

    invoke-interface {v2, v1}, Lorg/android/agoo/d/c/b;->a(Ljava/lang/String;)V

    .line 50090
    invoke-static {p0}, Lorg/android/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 779
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 780
    invoke-static {p0}, Lorg/android/agoo/e;->o(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 781
    const-string v1, "error"

    const-string v2, "ERROR_APPSECRET_NULL"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 785
    :cond_2
    sget-object v0, Lorg/android/agoo/impl/ControlService;->c:Lorg/android/agoo/d/c/b;

    invoke-interface {v0, v1}, Lorg/android/agoo/d/c/b;->b(Ljava/lang/String;)V

    .line 786
    sget-object v0, Lorg/android/agoo/impl/ControlService;->c:Lorg/android/agoo/d/c/b;

    .line 50091
    invoke-static {p0}, Lorg/android/agoo/e;->q(Landroid/content/Context;)Lorg/android/agoo/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/android/agoo/f;->d()Ljava/lang/String;

    move-result-object v1

    .line 786
    invoke-interface {v0, v1}, Lorg/android/agoo/d/c/b;->c(Ljava/lang/String;)V

    .line 787
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Lorg/android/agoo/a/a;Lorg/android/agoo/d/c/i;)Z
    .locals 4

    .prologue
    .line 953
    .line 50117
    iget-object v0, p2, Lorg/android/agoo/d/c/i;->e:Ljava/lang/String;

    .line 954
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 955
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkMtopResultFailed---->["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->j(Landroid/content/Context;)V

    .line 957
    const-string v1, "ERRCODE_AUTH_REJECT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 959
    const-string v1, "error"

    invoke-static {p0, v1}, Lorg/android/agoo/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 961
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 962
    const-string v2, "error"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 963
    invoke-static {p0, v1, p1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/a/a;)V

    .line 964
    const/4 v0, 0x0

    .line 967
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1261
    if-eqz p0, :cond_0

    .line 1262
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    .line 1263
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/android/agoo/service/AgooService;

    .line 1264
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1263
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    const/4 v0, 0x1

    .line 1268
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lorg/android/agoo/impl/ControlService;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/android/agoo/impl/ControlService;->d:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1148
    invoke-static {p0}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50203
    :goto_0
    return-void

    .line 50185
    :cond_0
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50186
    const-string v1, "app_retry_register"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 50188
    add-int/lit8 v1, v1, 0x1

    .line 50189
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50190
    const-string v2, "app_retry_register"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50191
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 50196
    :goto_1
    :try_start_1
    const-string v0, "register"

    invoke-static {p0, v0}, Lorg/android/agoo/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50198
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50199
    const-string v1, "HAS_RETTY_REGISTER"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50200
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1153
    :catch_0
    move-exception v0

    goto :goto_0

    .line 50192
    :catch_1
    move-exception v0

    .line 50193
    const-string v1, "Settings"

    const-string v2, "setRetryRegisterCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;Lorg/android/agoo/a/a;)V
    .locals 4

    .prologue
    .line 885
    invoke-static {p0}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    invoke-static {p0, p1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/a/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50092
    invoke-static {p0}, Lorg/android/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 888
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 50093
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 890
    new-instance v2, Lorg/android/agoo/d/c/d;

    invoke-direct {v2}, Lorg/android/agoo/d/c/d;-><init>()V

    .line 891
    const-string v3, "mtop.push.device.bindUser"

    .line 50094
    iput-object v3, v2, Lorg/android/agoo/d/c/d;->a:Ljava/lang/String;

    .line 892
    const-string v3, "4.0"

    .line 50096
    iput-object v3, v2, Lorg/android/agoo/d/c/d;->b:Ljava/lang/String;

    .line 50098
    iput-object v1, v2, Lorg/android/agoo/d/c/d;->g:Ljava/lang/String;

    .line 50100
    iput-object v0, v2, Lorg/android/agoo/d/c/d;->d:Ljava/lang/String;

    .line 895
    const-string v1, "s_token"

    invoke-virtual {v2, v1, v0}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 896
    const-string v0, "push_token"

    const-string v1, "ajflajdflajflajflajlfajldfjalfdj"

    invoke-virtual {v2, v0, v1}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 897
    sget-object v0, Lorg/android/agoo/impl/ControlService;->c:Lorg/android/agoo/d/c/b;

    invoke-interface {v0, p0, v2}, Lorg/android/agoo/d/c/b;->a(Landroid/content/Context;Lorg/android/agoo/d/c/d;)Lorg/android/agoo/d/c/i;

    move-result-object v1

    .line 898
    const-string v2, "ControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "doBinderUser--->[server result:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 50102
    iget-object v0, v1, Lorg/android/agoo/d/c/i;->c:Ljava/lang/String;

    .line 899
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 898
    invoke-static {v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    if-eqz v1, :cond_1

    .line 50103
    iget-boolean v0, v1, Lorg/android/agoo/d/c/i;->a:Z

    .line 901
    if-eqz v0, :cond_0

    .line 904
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 50104
    iget-object v2, v1, Lorg/android/agoo/d/c/i;->c:Ljava/lang/String;

    .line 904
    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 905
    const-string v2, "push_user_token"

    .line 906
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    .line 50116
    :try_start_1
    const-string v2, "AppStore"

    const/4 v3, 0x4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 50108
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 50109
    const-string v3, "app_push_user_token"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50110
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 915
    :cond_0
    :goto_1
    invoke-static {p0, p1, v1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/a/a;Lorg/android/agoo/d/c/i;)Z

    .line 920
    :cond_1
    return-void

    .line 899
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic c(Lorg/android/agoo/impl/ControlService;)Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/android/agoo/impl/ControlService;->e:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method private final c(Landroid/content/Context;Lorg/android/agoo/a/a;)V
    .locals 6

    .prologue
    const-wide/32 v4, 0x1339ed7

    .line 1015
    new-instance v0, Lorg/android/agoo/d/c/d;

    invoke-direct {v0}, Lorg/android/agoo/d/c/d;-><init>()V

    .line 1016
    const-string v1, "mtop.push.device.createAndRegister"

    .line 50122
    iput-object v1, v0, Lorg/android/agoo/d/c/d;->a:Ljava/lang/String;

    .line 1017
    const-string v1, "4.0"

    .line 50124
    iput-object v1, v0, Lorg/android/agoo/d/c/d;->b:Ljava/lang/String;

    .line 50126
    invoke-static {p1}, Lorg/android/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 50127
    iput-object v1, v0, Lorg/android/agoo/d/c/d;->c:Ljava/lang/String;

    .line 1019
    const-string v1, "new_device"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1020
    invoke-static {p1}, Lcom/umeng/message/proguard/bk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1021
    const-string v2, "device_global_id"

    invoke-virtual {v0, v2, v1}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1022
    const-string v1, "c0"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1023
    const-string v1, "c1"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1024
    const-string v1, "c2"

    invoke-static {p1}, Lcom/umeng/message/proguard/s;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1025
    const-string v1, "c3"

    invoke-static {p1}, Lcom/umeng/message/proguard/s;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1026
    const-string v1, "c4"

    invoke-static {p1}, Lcom/umeng/message/proguard/s;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1027
    const-string v1, "c5"

    invoke-static {}, Lcom/umeng/message/proguard/s;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1028
    const-string v1, "c6"

    invoke-static {p1}, Lcom/umeng/message/proguard/s;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1029
    const-string v1, "app_version"

    .line 1030
    invoke-static {p1}, Lorg/android/agoo/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1029
    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1031
    const-string v1, "sdk_version"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1032
    const-string v1, "package_name"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1033
    invoke-static {p1}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50129
    invoke-static {p1}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1035
    const-string v2, "old_device_id"

    invoke-virtual {v0, v2, v1}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1037
    :cond_0
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doRegister app_version="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/android/agoo/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    sget-object v1, Lorg/android/agoo/impl/ControlService;->c:Lorg/android/agoo/d/c/b;

    invoke-interface {v1, p1, v0}, Lorg/android/agoo/d/c/b;->b(Landroid/content/Context;Lorg/android/agoo/d/c/d;)Ljava/util/Map;

    move-result-object v1

    .line 1042
    const-string v0, "result"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/android/agoo/d/c/i;

    .line 1043
    const-string v2, "requestUrl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1045
    if-eqz v0, :cond_5

    .line 1047
    invoke-static {p1, v0, v1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/d/c/i;Ljava/lang/String;)V

    .line 50130
    iget-object v2, v0, Lorg/android/agoo/d/c/i;->f:Ljava/util/Map;

    .line 50131
    iget v3, v0, Lorg/android/agoo/d/c/i;->b:I

    .line 1049
    invoke-static {v2, v3}, Lcom/umeng/message/proguard/t;->a(Ljava/util/Map;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1050
    const-string v0, "ControlService"

    const-string v1, "register--->[failed]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50161
    :cond_1
    :goto_0
    return-void

    .line 50132
    :cond_2
    iget-boolean v2, v0, Lorg/android/agoo/d/c/i;->a:Z

    .line 1053
    if-eqz v2, :cond_4

    .line 1054
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "register--->[result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50133
    iget-object v3, v0, Lorg/android/agoo/d/c/i;->c:Ljava/lang/String;

    .line 1054
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50141
    :try_start_0
    const-string v1, "AppStore"

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 50135
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 50136
    const-string v2, "agoo_release_time"

    const-wide/32 v4, 0x1339ed7

    invoke-interface {v1, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 50137
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 50142
    :goto_1
    iget-object v0, v0, Lorg/android/agoo/d/c/i;->c:Ljava/lang/String;

    .line 50143
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50144
    const-string v0, "device_id"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 50146
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-static {p1, v0, p2}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/a/a;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 50159
    :catch_0
    move-exception v0

    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-static {p1, v0, p2}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/a/a;)V

    .line 50160
    invoke-static {p1}, Lcom/umeng/message/proguard/bk;->j(Landroid/content/Context;)V

    goto :goto_0

    .line 50163
    :cond_3
    :try_start_2
    invoke-static {p1}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 50164
    invoke-static {p1}, Lorg/android/a;->j(Landroid/content/Context;)I

    move-result v2

    .line 50165
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 50166
    const-string v3, "app_device_token"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50167
    const-string v3, "app_device_token_temp"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 50168
    const-string v0, "app_version"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50169
    const-string v0, "app_last_register_time "

    .line 50170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 50169
    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 50171
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 50176
    :goto_2
    const/4 v0, 0x0

    :try_start_3
    invoke-static {p1, v0}, Lorg/android/agoo/e;->a(Landroid/content/Context;I)V

    .line 50152
    invoke-static {p1}, Lorg/android/agoo/e;->m(Landroid/content/Context;)V

    .line 50154
    invoke-interface {p2}, Lorg/android/agoo/a/a;->callAgooElectionReceiver()Ljava/lang/Class;

    move-result-object v0

    .line 50153
    invoke-static {p1, v0}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50178
    const-string v0, "registration"

    invoke-static {p1, v0}, Lorg/android/agoo/c/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 50180
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50181
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 50156
    invoke-static {p1}, Lcom/umeng/message/proguard/bk;->k(Landroid/content/Context;)V

    .line 50157
    invoke-static {p1, p2}, Lorg/android/agoo/impl/ControlService;->b(Landroid/content/Context;Lorg/android/agoo/a/a;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 1061
    :cond_4
    invoke-static {p1, p2, v0}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/a/a;Lorg/android/agoo/d/c/i;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1066
    :cond_5
    invoke-static {p1, v0, v1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/d/c/i;Ljava/lang/String;)V

    .line 1067
    const-string v0, "SERVICE_NOT_AVAILABLE"

    invoke-static {p1, v0, p2}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;Lorg/android/agoo/a/a;)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto/16 :goto_1
.end method

.method private static d(Landroid/content/Context;Lorg/android/agoo/a/a;)V
    .locals 3

    .prologue
    .line 1157
    .line 1158
    invoke-interface {p1}, Lorg/android/agoo/a/a;->callAgooElectionReceiver()Ljava/lang/Class;

    move-result-object v0

    .line 1157
    invoke-static {p0, v0}, Lorg/android/agoo/impl/a;->b(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50205
    :try_start_0
    invoke-static {p0}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 50206
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 50207
    const-string v1, "app_disable"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 50208
    invoke-static {p0}, Lorg/android/a;->j(Landroid/content/Context;)I

    move-result v1

    .line 50209
    const-string v2, "app_disable_version"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 50210
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1160
    :goto_0
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleDisableCurrentPack-->["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1160
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1162
    invoke-static {p0}, Lcom/umeng/message/proguard/bj;->a(Landroid/content/Context;)V

    .line 1164
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public final onHandleIntent(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/a/a;)V
    .locals 12

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 642
    :try_start_0
    invoke-static {p1}, Lcom/umeng/message/proguard/bn;->a(Landroid/content/Context;)V

    .line 643
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onHandleIntent ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 644
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 643
    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    invoke-static {p1}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;)V

    .line 647
    iput-object p1, p0, Lorg/android/agoo/impl/ControlService;->b:Landroid/content/Context;

    .line 648
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 649
    invoke-static {p1}, Lorg/android/agoo/c/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 650
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 5432
    const-string v1, "command"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5433
    const-string v2, "ControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "command --->["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5434
    const-string v2, "registration"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6191
    invoke-static {p1}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5436
    invoke-interface {p3, p1, v0}, Lorg/android/agoo/a/a;->callRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 6370
    invoke-static {p1, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/a/a;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6371
    const-string v0, "ControlService"

    const-string v1, "handleAddPackage---->[appkey or appSecret ===null]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50079
    :cond_0
    :goto_0
    return-void

    .line 6374
    :cond_1
    invoke-static {p1}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6375
    const-string v0, "ControlService"

    const-string v1, "handleAddPackage---->[devicetoken ===null]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    const-string v1, "ControlService"

    const-string v2, "onHandleIntent"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6379
    :cond_2
    :try_start_1
    invoke-static {p1}, Lorg/android/agoo/e;->q(Landroid/content/Context;)Lorg/android/agoo/f;

    move-result-object v0

    sget-object v1, Lorg/android/agoo/f;->a:Lorg/android/agoo/f;

    if-ne v0, v1, :cond_3

    .line 6380
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/bj;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 6383
    :cond_3
    const-string v0, "handleAddPackage"

    .line 7167
    invoke-static {p1, v0}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 5439
    :cond_4
    const-string v2, "unregister"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 7224
    invoke-static {p1}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7225
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 7226
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 7227
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 7228
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 7232
    :cond_5
    const-string v2, "ControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleUnRegister---->[currentPack:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "][currentSudoPack:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]:[retryElection]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7235
    invoke-interface {p3}, Lorg/android/agoo/a/a;->callAgooService()Ljava/lang/Class;

    move-result-object v0

    .line 7236
    invoke-static {v0}, Lorg/android/agoo/impl/ControlService;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7237
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disableService---->["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7238
    invoke-interface {p3}, Lorg/android/agoo/a/a;->callAgooService()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7237
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7241
    invoke-interface {p3}, Lorg/android/agoo/a/a;->callAgooService()Ljava/lang/Class;

    move-result-object v0

    .line 7240
    invoke-static {p1, v0}, Lcom/umeng/message/proguard/bi;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7243
    :cond_6
    invoke-static {p1}, Lcom/umeng/message/proguard/bj;->a(Landroid/content/Context;)V

    move v6, v7

    .line 7250
    :cond_7
    invoke-interface {p3}, Lorg/android/agoo/a/a;->callAgooElectionReceiver()Ljava/lang/Class;

    move-result-object v0

    .line 7249
    invoke-static {p1, v0}, Lorg/android/agoo/impl/a;->b(Landroid/content/Context;Ljava/lang/Class;)V

    .line 7251
    if-eqz v6, :cond_8

    .line 7252
    const-string v0, "handleUnRegister"

    .line 8167
    invoke-static {p1, v0}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 8799
    :cond_8
    invoke-static {p1}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 8800
    invoke-static {p1, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/a/a;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 9191
    invoke-static {p1}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 8802
    new-instance v1, Lorg/android/agoo/d/c/d;

    invoke-direct {v1}, Lorg/android/agoo/d/c/d;-><init>()V

    .line 8803
    const-string v2, "mtop.push.device.unregister"

    .line 10112
    iput-object v2, v1, Lorg/android/agoo/d/c/d;->a:Ljava/lang/String;

    .line 8804
    const-string v2, "4.0"

    .line 10120
    iput-object v2, v1, Lorg/android/agoo/d/c/d;->b:Ljava/lang/String;

    .line 10151
    invoke-static {p1}, Lorg/android/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 11104
    iput-object v2, v1, Lorg/android/agoo/d/c/d;->c:Ljava/lang/String;

    .line 12066
    iput-object v0, v1, Lorg/android/agoo/d/c/d;->g:Ljava/lang/String;

    .line 8807
    const-string v0, "app_version"

    .line 8808
    invoke-static {p1}, Lorg/android/agoo/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 8807
    invoke-virtual {v1, v0, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8809
    const-string v0, "sdk_version"

    const-wide/32 v2, 0x1339ed7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8810
    const-string v0, "app_pack"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8811
    sget-object v0, Lorg/android/agoo/impl/ControlService;->c:Lorg/android/agoo/d/c/b;

    invoke-interface {v0, p1, v1}, Lorg/android/agoo/d/c/b;->a(Landroid/content/Context;Lorg/android/agoo/d/c/d;)Lorg/android/agoo/d/c/i;

    move-result-object v0

    .line 8812
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unregister--->[server result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13046
    iget-object v3, v0, Lorg/android/agoo/d/c/i;->c:Ljava/lang/String;

    .line 8812
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],result.isSuccess()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 14031
    iget-boolean v3, v0, Lorg/android/agoo/d/c/i;->a:Z

    .line 8813
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8812
    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8814
    if-eqz v0, :cond_a

    .line 15031
    iget-boolean v1, v0, Lorg/android/agoo/d/c/i;->a:Z

    .line 8814
    if-nez v1, :cond_a

    .line 8815
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lorg/android/a;->b(Landroid/content/Context;Z)V

    .line 8816
    const-string v1, "error"

    invoke-interface {p3, p1, v1}, Lorg/android/agoo/a/a;->callUnregistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 8821
    :goto_1
    invoke-static {p1, p3, v0}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/a/a;Lorg/android/agoo/d/c/i;)Z

    .line 15266
    :cond_9
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/android/agoo/e;->a(Landroid/content/Context;I)V

    .line 16132
    invoke-static {p1}, Lorg/android/a;->f(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 15191
    :cond_a
    invoke-static {p1}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 8819
    invoke-interface {p3, p1, v1}, Lorg/android/agoo/a/a;->callUnregistered(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 5441
    :cond_b
    const-string v2, "error"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5442
    invoke-static {p1, p2, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Landroid/content/Intent;Lorg/android/agoo/a/a;)V

    goto/16 :goto_0

    .line 5443
    :cond_c
    const-string v2, "register"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 17077
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "utdid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/umeng/message/proguard/bk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17078
    invoke-static {p1, v0}, Lcom/umeng/message/proguard/bk;->e(Landroid/content/Context;Ljava/lang/String;)V

    .line 17079
    invoke-static {p1, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/a/a;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 17080
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleRegister["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--->[appkey==null,appSecret==null,ttid==null]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 17088
    :cond_d
    const-string v0, "HAS_RETTY_REGISTER"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 17091
    invoke-static {p1}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 17092
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleRegister["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]--->[deviceToken==null][retty:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17095
    invoke-static {p1}, Lorg/android/agoo/e;->m(Landroid/content/Context;)V

    .line 17099
    if-nez v0, :cond_e

    .line 17266
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/android/agoo/e;->a(Landroid/content/Context;I)V

    .line 17102
    :cond_e
    invoke-static {p1}, Lcom/umeng/message/proguard/bg;->a(Landroid/content/Context;)V

    .line 17103
    invoke-static {p1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;)V

    .line 17104
    invoke-direct {p0, p1, p3}, Lorg/android/agoo/impl/ControlService;->c(Landroid/content/Context;Lorg/android/agoo/a/a;)V

    goto/16 :goto_0

    .line 17107
    :cond_f
    invoke-static {p1}, Lorg/android/agoo/e;->l(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 17108
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleRegister["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]--->["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 18191
    invoke-static {p1}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 17109
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][register timeout][retty:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 17108
    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17111
    if-nez v0, :cond_10

    .line 18266
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/android/agoo/e;->a(Landroid/content/Context;I)V

    .line 17114
    :cond_10
    invoke-static {p1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;)V

    .line 17115
    invoke-direct {p0, p1, p3}, Lorg/android/agoo/impl/ControlService;->c(Landroid/content/Context;Lorg/android/agoo/a/a;)V

    goto/16 :goto_0

    .line 17118
    :cond_11
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/android/agoo/e;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 17119
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleRegister["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--->[disable]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 17124
    :cond_12
    invoke-static {p1}, Lorg/android/agoo/e;->q(Landroid/content/Context;)Lorg/android/agoo/f;

    move-result-object v0

    sget-object v1, Lorg/android/agoo/f;->a:Lorg/android/agoo/f;

    if-ne v0, v1, :cond_13

    .line 17125
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/bj;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 17130
    :cond_13
    invoke-interface {p3}, Lorg/android/agoo/a/a;->callAgooElectionReceiver()Ljava/lang/Class;

    move-result-object v0

    .line 17129
    invoke-static {p1, v0}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 17131
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 17132
    invoke-interface {p3}, Lorg/android/agoo/a/a;->callAgooMessageReceiver()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 17133
    invoke-interface {p3}, Lorg/android/agoo/a/a;->callAgooSystemReceiver()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 17134
    invoke-interface {p3}, Lorg/android/agoo/a/a;->callAgooRegistrationReceiver()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    .line 17131
    invoke-static {p1, v0}, Lcom/umeng/message/proguard/bi;->a(Landroid/content/Context;[Ljava/lang/Class;)V

    .line 17136
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 17137
    new-instance v1, Lorg/android/agoo/d/a/n;

    invoke-direct {v1}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 17138
    iget-object v1, p0, Lorg/android/agoo/impl/ControlService;->b:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/a;->s(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 17139
    const-string v2, "currentSudoPack"

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17141
    const-string v0, "handleRegister"

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 17142
    const-string v0, "handleRegister"

    invoke-direct {p0, p1, v0}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5445
    :cond_14
    const-string v2, "register_retry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 5446
    invoke-static {p1}, Lorg/android/agoo/impl/ControlService;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 5447
    :cond_15
    const-string v2, "command_other_channel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 18488
    const-string v0, "channel_android_device_token"

    .line 18489
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18490
    const-string v1, "channel_android_device_type"

    .line 18491
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18492
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18493
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 18494
    invoke-static {p1}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18495
    invoke-static {p1, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/a/a;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19191
    invoke-static {p1}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 18497
    new-instance v3, Lorg/android/agoo/d/c/d;

    invoke-direct {v3}, Lorg/android/agoo/d/c/d;-><init>()V

    .line 18498
    const-string v4, "mtop.push.device.bind.android"

    .line 20112
    iput-object v4, v3, Lorg/android/agoo/d/c/d;->a:Ljava/lang/String;

    .line 18499
    const-string v4, "5.0"

    .line 20120
    iput-object v4, v3, Lorg/android/agoo/d/c/d;->b:Ljava/lang/String;

    .line 21066
    iput-object v2, v3, Lorg/android/agoo/d/c/d;->g:Ljava/lang/String;

    .line 18501
    const-string v4, "tb_app_device_token"

    invoke-virtual {v3, v4, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18502
    const-string v2, "android_device_token"

    invoke-virtual {v3, v2, v0}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18503
    const-string v0, "android_device_type"

    invoke-virtual {v3, v0, v1}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18504
    sget-object v0, Lorg/android/agoo/impl/ControlService;->c:Lorg/android/agoo/d/c/b;

    .line 21522
    invoke-static {p1}, Lorg/android/agoo/e;->q(Landroid/content/Context;)Lorg/android/agoo/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/android/agoo/f;->d()Ljava/lang/String;

    move-result-object v1

    .line 18504
    invoke-interface {v0, v1}, Lorg/android/agoo/d/c/b;->c(Ljava/lang/String;)V

    .line 18505
    sget-object v0, Lorg/android/agoo/impl/ControlService;->c:Lorg/android/agoo/d/c/b;

    invoke-interface {v0, p1, v3}, Lorg/android/agoo/d/c/b;->a(Landroid/content/Context;Lorg/android/agoo/d/c/d;)Lorg/android/agoo/d/c/i;

    move-result-object v0

    .line 22031
    iget-boolean v1, v0, Lorg/android/agoo/d/c/i;->a:Z

    .line 18506
    if-eqz v1, :cond_16

    .line 18507
    const-string v0, "ControlService"

    const-string v1, "register GCM success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 22076
    :cond_16
    iget-object v0, v0, Lorg/android/agoo/d/c/i;->e:Ljava/lang/String;

    .line 18509
    invoke-static {p1}, Lcom/umeng/message/proguard/bk;->j(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 5449
    :cond_17
    const-string v2, "command_restart_sudo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 5450
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5451
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 5452
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5453
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5454
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5455
    const-string v2, "command_restart_sudo"

    invoke-static {p1, v0, v1, p3, v2}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/a/a;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5457
    :cond_18
    const-string v2, "command_bind_user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 5458
    invoke-static {p1, p3}, Lorg/android/agoo/impl/ControlService;->b(Landroid/content/Context;Lorg/android/agoo/a/a;)V

    goto/16 :goto_0

    .line 5459
    :cond_19
    const-string v2, "command_unbind_user"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 22924
    invoke-static {p1}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22925
    invoke-static {p1, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/a/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22926
    invoke-static {p1}, Lorg/android/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 22927
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 23191
    invoke-static {p1}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 22929
    new-instance v3, Lorg/android/agoo/d/c/d;

    invoke-direct {v3}, Lorg/android/agoo/d/c/d;-><init>()V

    .line 22930
    const-string v4, "mtop.push.device.unBindUser"

    .line 24112
    iput-object v4, v3, Lorg/android/agoo/d/c/d;->a:Ljava/lang/String;

    .line 22931
    const-string v4, "4.0"

    .line 24120
    iput-object v4, v3, Lorg/android/agoo/d/c/d;->b:Ljava/lang/String;

    .line 25066
    iput-object v2, v3, Lorg/android/agoo/d/c/d;->g:Ljava/lang/String;

    .line 22933
    const-string v2, "push_user_token"

    invoke-virtual {v3, v2, v1}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22934
    const-string v1, "push_token"

    const-string v2, "ajflajdflajflajflajlfajldfjalfdj"

    invoke-virtual {v3, v1, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 22935
    sget-object v1, Lorg/android/agoo/impl/ControlService;->c:Lorg/android/agoo/d/c/b;

    invoke-interface {v1, p1, v3}, Lorg/android/agoo/d/c/b;->a(Landroid/content/Context;Lorg/android/agoo/d/c/d;)Lorg/android/agoo/d/c/i;

    move-result-object v1

    .line 22936
    const-string v2, "ControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doBinderUser--->[server result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_1a

    .line 26046
    iget-object v0, v1, Lorg/android/agoo/d/c/i;->c:Ljava/lang/String;

    .line 22937
    :cond_1a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22936
    invoke-static {v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 22938
    if-eqz v1, :cond_0

    .line 27031
    iget-boolean v0, v1, Lorg/android/agoo/d/c/i;->a:Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 22939
    if-eqz v0, :cond_1b

    .line 29141
    :try_start_2
    const-string v0, "AppStore"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 28259
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 28260
    const-string v1, "app_push_user_token"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 28261
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_15

    .line 31141
    :goto_2
    :try_start_3
    const-string v0, "AppStore"

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31101
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 31102
    const-string v1, "agoo_xtoken "

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 31103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 22942
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 22944
    :cond_1b
    :try_start_4
    invoke-static {p1, p3, v1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/a/a;Lorg/android/agoo/d/c/i;)Z

    goto/16 :goto_0

    .line 5461
    :cond_1c
    const-string v0, "agoo_command_restart_sudo_app"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 5462
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 5463
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 5464
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5465
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5466
    new-instance v0, Lorg/android/agoo/d/a/n;

    invoke-direct {v0}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 5467
    iget-object v0, p0, Lorg/android/agoo/impl/ControlService;->b:Landroid/content/Context;

    invoke-static {v0}, Lorg/android/a;->s(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 5468
    const-string v2, "currentSudoPack"

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5470
    const-string v0, "restartByApp"

    invoke-direct {p0, p1, v0}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 5471
    const-string v0, "restartByApp"

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5478
    :cond_1d
    const-string v0, "so_manager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5479
    const-string v0, "soTimeout"

    const/16 v1, 0x258

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    move-result v0

    .line 32141
    :try_start_5
    const-string v1, "AppStore"

    const/4 v2, 0x4

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 31833
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 31834
    const-string v2, "agoo_so_mangager_timeout"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 31835
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 5481
    :catch_2
    move-exception v0

    goto/16 :goto_0

    .line 5482
    :cond_1e
    :try_start_6
    invoke-interface {p3, p1, p2}, Lorg/android/agoo/a/a;->callUserCommand(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 652
    :cond_1f
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 32388
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 32391
    invoke-static {p1}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 32392
    const-string v0, "ControlService"

    const-string v1, "handleRemovePackage---->[devicetoken ===null]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 32396
    :cond_20
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 32397
    if-eqz v1, :cond_21

    .line 32398
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 32401
    :cond_21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 32405
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 32407
    const-string v2, "ControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleRemovePackage---->[replacing:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32864
    invoke-static {p1}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 32865
    invoke-static {p1, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/a/a;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 33191
    invoke-static {p1}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 32867
    new-instance v3, Lorg/android/agoo/d/c/d;

    invoke-direct {v3}, Lorg/android/agoo/d/c/d;-><init>()V

    .line 32868
    const-string v4, "mtop.push.device.reportKickAss"

    .line 34112
    iput-object v4, v3, Lorg/android/agoo/d/c/d;->a:Ljava/lang/String;

    .line 32869
    const-string v4, "4.0"

    .line 34120
    iput-object v4, v3, Lorg/android/agoo/d/c/d;->b:Ljava/lang/String;

    .line 34151
    invoke-static {p1}, Lorg/android/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 35104
    iput-object v4, v3, Lorg/android/agoo/d/c/d;->c:Ljava/lang/String;

    .line 36066
    iput-object v2, v3, Lorg/android/agoo/d/c/d;->g:Ljava/lang/String;

    .line 32872
    const-string v2, "app_version"

    .line 32873
    invoke-static {p1}, Lorg/android/agoo/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 32872
    invoke-virtual {v3, v2, v4}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32874
    const-string v2, "sdk_version"

    const-wide/32 v4, 0x1339ed7

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32875
    const-string v2, "app_pack"

    invoke-virtual {v3, v2, v0}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32876
    const-string v2, "app_replace"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32877
    sget-object v1, Lorg/android/agoo/impl/ControlService;->c:Lorg/android/agoo/d/c/b;

    invoke-interface {v1, p1, v3}, Lorg/android/agoo/d/c/b;->a(Landroid/content/Context;Lorg/android/agoo/d/c/d;)Lorg/android/agoo/d/c/i;

    move-result-object v1

    .line 32878
    const-string v2, "ControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uninstall--->[result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37046
    iget-object v4, v1, Lorg/android/agoo/d/c/i;->c:Ljava/lang/String;

    .line 32878
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 32879
    invoke-static {p1, p3, v1}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/a/a;Lorg/android/agoo/d/c/i;)Z

    .line 32409
    :cond_22
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 32410
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 32411
    const-string v0, "handleRemovePackage"

    .line 37167
    invoke-static {p1, v0}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 32414
    :cond_23
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 32415
    const-string v0, "handleRemovePackage"

    .line 38167
    invoke-static {p1, v0}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 32418
    :cond_24
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 32419
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32420
    new-instance v2, Lorg/android/agoo/d/a/n;

    invoke-direct {v2}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 32421
    iget-object v2, p0, Lorg/android/agoo/impl/ControlService;->b:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/a;->s(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 32422
    const-string v3, "currentSudoPack"

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32424
    const-string v2, "handleRemovePackage"

    invoke-static {p1, v2}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 32425
    const-string v2, "handleRemovePackage"

    invoke-static {p1, v0, v1, p3, v2}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/a/a;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 654
    :cond_25
    const-string v2, "org.agoo.android.intent.action.RECEIVE"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 38342
    const-string v1, "id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 38343
    new-instance v2, Lorg/android/agoo/d/a/n;

    invoke-direct {v2}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 38344
    iget-object v2, p0, Lorg/android/agoo/impl/ControlService;->b:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/a;->s(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 38345
    const-string v3, "messageId"

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38347
    invoke-interface {p3, p1, p2}, Lorg/android/agoo/a/a;->callShouldProcessMessage(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38396
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/android/agoo/e;->a(Landroid/content/Context;Z)Z

    move-result v1

    .line 38350
    if-eqz v1, :cond_26

    .line 38351
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--->[disable]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38354
    new-instance v0, Lorg/android/agoo/d/a/n;

    invoke-direct {v0}, Lorg/android/agoo/d/a/n;-><init>()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 39117
    :cond_26
    :try_start_7
    const-string v1, "message_source"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    move-result-object v1

    .line 39118
    :try_start_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 39119
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "apoll"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_27

    .line 39120
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 39121
    new-instance v3, Lorg/android/agoo/d/a/n;

    invoke-direct {v3}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 39122
    iget-object v3, p0, Lorg/android/agoo/impl/ControlService;->b:Landroid/content/Context;

    invoke-static {v3}, Lorg/android/a;->s(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v3

    .line 39123
    const-string v4, "currentSudoPack"

    invoke-virtual {v3, v4, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39125
    const-string v2, "handleRemoteMessage"

    invoke-static {p1, v2}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 39126
    const-string v2, "handleRemoteMessage"

    invoke-direct {p0, p1, v2}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_14

    :cond_27
    move-object v4, v1

    .line 39137
    :goto_3
    :try_start_9
    const-string v1, "x_command_type"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 39139
    if-nez v1, :cond_0

    .line 39143
    invoke-static {p1}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 39144
    const-string v0, "ControlService"

    const-string v1, "handleRemoteMessage[deviceToken==null]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    move-object v1, v0

    :goto_4
    move-object v4, v1

    goto :goto_3

    .line 39147
    :cond_28
    const-string v1, "id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39148
    const-string v2, "body"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39149
    const-string v2, "type"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0

    move-result-object v9

    .line 39152
    :try_start_a
    const-string v2, "trace"

    const-wide/16 v6, -0x1

    invoke-virtual {p2, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 39153
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {p1, v6, v7}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    move-result-object v5

    .line 39159
    :goto_5
    :try_start_b
    const-string v2, "task_id"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    move-result-object v2

    .line 39162
    :goto_6
    :try_start_c
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0

    move-result v0

    if-eqz v0, :cond_2a

    .line 39164
    :try_start_d
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39165
    invoke-static {p1}, Lcom/umeng/message/proguard/a;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/a;

    move-result-object v0

    const-string v6, "21"

    const-string v7, "4"

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/message/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 39167
    if-eqz v0, :cond_29

    .line 39168
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_13

    .line 39173
    :cond_29
    :goto_7
    :try_start_e
    const-string v0, "ControlService"

    const-string v1, "handleMessage--->[null]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 39174
    invoke-static {p1}, Lcom/umeng/message/proguard/bk;->f(Landroid/content/Context;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_0

    :catch_4
    move-exception v2

    move-object v5, v0

    goto :goto_5

    :catch_5
    move-exception v2

    move-object v2, v0

    goto :goto_6

    .line 39180
    :cond_2a
    :try_start_f
    const-string v0, "encrypted"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39181
    const-string v6, "1"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 40191
    invoke-static {p1}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 39183
    const/4 v6, 0x0

    .line 39182
    invoke-static {v0, v3, v6}, Lcom/umeng/message/proguard/q;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_11

    move-result-object v8

    .line 39202
    :goto_8
    :try_start_10
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    move-result v0

    if-eqz v0, :cond_31

    .line 39204
    :try_start_11
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39205
    invoke-static {p1}, Lcom/umeng/message/proguard/a;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/a;

    move-result-object v0

    const-string v6, "22"

    const-string v7, "4"

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/message/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 39207
    if-eqz v0, :cond_2b

    .line 39208
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_12

    .line 39213
    :cond_2b
    :goto_9
    :try_start_12
    invoke-static {p1}, Lcom/umeng/message/proguard/bk;->g(Landroid/content/Context;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_6

    goto/16 :goto_0

    .line 39218
    :catch_6
    move-exception v0

    move-object v9, v8

    move-object v8, v0

    .line 39220
    :goto_a
    :try_start_13
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39221
    invoke-static {p1}, Lcom/umeng/message/proguard/a;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/a;

    move-result-object v0

    const-string v6, "22"

    const-string v7, "4"

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/message/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 39223
    if-eqz v0, :cond_2c

    .line 39224
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_10

    .line 39227
    :cond_2c
    :goto_b
    :try_start_14
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encrypt--aesdecrypt["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_0

    .line 39185
    :cond_2d
    :try_start_15
    const-string v6, "2"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2e

    .line 41191
    invoke-static {p1}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 39187
    const/4 v6, 0x1

    .line 39186
    invoke-static {v0, v3, v6}, Lcom/umeng/message/proguard/q;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    .line 39189
    :cond_2e
    const-string v6, "3"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 42191
    invoke-static {p1}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 39191
    const/4 v6, 0x2

    .line 39190
    invoke-static {v0, v3, v6}, Lcom/umeng/message/proguard/q;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    .line 39193
    :cond_2f
    const-string v6, "10"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 42461
    invoke-static {p1}, Lorg/android/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 39195
    const/4 v6, 0x1

    .line 39194
    invoke-static {v0, v3, v6}, Lcom/umeng/message/proguard/q;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_8

    .line 39197
    :cond_30
    const-string v6, "11"

    invoke-static {v6, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 43461
    invoke-static {p1}, Lorg/android/a;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 39199
    const/4 v6, 0x2

    .line 39198
    invoke-static {v0, v3, v6}, Lcom/umeng/message/proguard/q;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_11

    move-result-object v8

    goto/16 :goto_8

    .line 39216
    :cond_31
    :try_start_16
    const-string v0, "encrypted"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 39217
    const-string v0, "body"

    invoke-virtual {p2, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_6

    .line 39231
    :try_start_17
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39232
    invoke-static {p1}, Lcom/umeng/message/proguard/a;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/a;

    move-result-object v0

    const/4 v6, 0x0

    const-string v7, "4"

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/message/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 39234
    if-eqz v0, :cond_32

    .line 39235
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_f

    .line 39240
    :cond_32
    :goto_c
    :try_start_18
    invoke-static {p1}, Lcom/umeng/message/proguard/a;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/umeng/message/proguard/a;->a(Ljava/lang/String;)Z
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 39244
    :try_start_19
    const-string v0, "duplicate"

    .line 39245
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39246
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_33

    const-string v3, "1"

    .line 39247
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 39248
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 39249
    invoke-static {p1}, Lcom/umeng/message/proguard/a;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/a;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/umeng/message/proguard/a;->a(Ljava/lang/String;I)Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_8

    move-result v0

    if-nez v0, :cond_0

    .line 39265
    :cond_33
    :goto_d
    :try_start_1a
    const-string v0, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleMessage--->["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "],["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 39266
    invoke-static {p1}, Lcom/umeng/message/proguard/bk;->d(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_0

    .line 39267
    const/4 v5, -0x1

    .line 39269
    :try_start_1b
    const-string v0, "notify"

    .line 39270
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39269
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_e

    move-result v5

    .line 39275
    :goto_e
    :try_start_1c
    const-string v0, "has_test"

    .line 39276
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39277
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 39278
    invoke-static {p1}, Lcom/umeng/message/proguard/a;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/a;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v9, v5}, Lcom/umeng/message/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    .line 39285
    :cond_34
    :try_start_1d
    const-string v0, "time"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 39286
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 39287
    invoke-static {p1}, Lcom/umeng/message/proguard/a;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/a;

    move-result-object v0

    move-object v2, v8

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/message/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 39289
    const-string v0, "time"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_0

    goto/16 :goto_0

    :catch_8
    move-exception v0

    .line 39256
    :try_start_1e
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39257
    invoke-static {p1}, Lcom/umeng/message/proguard/a;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/a;

    move-result-object v0

    const-string v6, "23"

    const-string v7, "4"

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/message/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 39259
    if-eqz v0, :cond_33

    .line 39260
    const-string v0, "report"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_9

    goto/16 :goto_d

    :catch_9
    move-exception v0

    goto/16 :goto_d

    .line 39292
    :cond_35
    :try_start_1f
    invoke-static {p1}, Lorg/android/agoo/e;->n(Landroid/content/Context;)J

    move-result-wide v2

    .line 39293
    const-wide/16 v6, -0x1

    cmp-long v0, v2, v6

    if-eqz v0, :cond_36

    .line 39294
    invoke-static {p1}, Lcom/umeng/message/proguard/a;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/a;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_30"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v2, v8

    move-object v3, v9

    invoke-virtual/range {v0 .. v5}, Lcom/umeng/message/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 39299
    :cond_36
    invoke-static {p1}, Lcom/umeng/message/proguard/a;->a(Landroid/content/Context;)Lcom/umeng/message/proguard/a;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v9, v5}, Lcom/umeng/message/proguard/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 39301
    invoke-interface {p3, p1, p2}, Lorg/android/agoo/a/a;->callMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 657
    :cond_37
    const-string v0, "org.agoo.android.intent.action.ELECTION_RESULT_V4"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 43517
    const-string v0, "handleElectionResult begin"

    .line 43520
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 43522
    const-string v1, "election_result"

    .line 43523
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 43525
    invoke-static {p1, v0}, Lcom/umeng/message/proguard/bk;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 43526
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v8

    .line 43527
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43528
    invoke-static {p1}, Lorg/android/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 43530
    :try_start_20
    const-string v0, "eventId"

    .line 43531
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43532
    invoke-static {p1}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 43533
    const-string v1, "ControlService"

    const-string v2, "handleElection---->[devicetoken == null]"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43534
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 43535
    const-string v0, "handleElectionResult"

    move-object v7, v0

    .line 43537
    :goto_f
    const-string v5, "isRegistered is failed"

    .line 43538
    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44167
    invoke-static {p1, v7}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_a

    goto/16 :goto_0

    .line 43592
    :catch_a
    move-exception v0

    move v1, v6

    .line 43593
    :goto_10
    :try_start_21
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_0

    goto/16 :goto_0

    .line 44396
    :cond_38
    const/4 v1, 0x0

    :try_start_22
    invoke-static {p1, v1}, Lorg/android/agoo/e;->a(Landroid/content/Context;Z)Z

    move-result v1

    .line 43542
    if-eqz v1, :cond_39

    .line 43543
    const-string v1, "ControlService"

    const-string v2, "handleElection--->[app:disable]"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43544
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 43545
    const-string v0, "handleElectionResult"

    move-object v7, v0

    .line 43547
    :goto_11
    const-string v5, "currentPack hasDisableApp"

    .line 43548
    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45167
    invoke-static {p1, v7}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43552
    :cond_39
    const-string v1, "election_source"

    .line 43553
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43554
    const-string v2, "election_timeout"

    const-wide/16 v10, -0x1

    invoke-virtual {p2, v2, v10, v11}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 43556
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 43559
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 43560
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    .line 43561
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 43562
    invoke-static {p1}, Lorg/android/a;->t(Landroid/content/Context;)Z

    move-result v2

    .line 43563
    if-eqz v2, :cond_3a

    .line 43564
    const-string v0, "ControlService"

    const-string v1, "handleElection---->[noticeResult is true, result has came]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 43568
    :cond_3a
    const/4 v2, 0x1

    invoke-static {p1, v2}, Lorg/android/a;->a(Landroid/content/Context;Z)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_a

    .line 45208
    :try_start_23
    invoke-static {p1}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 45209
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 45210
    const-string v5, "app_sudo_pack_timeout"

    invoke-interface {v2, v5, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 45211
    const-string v5, "app_election_source"

    invoke-interface {v2, v5, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 45212
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_d

    .line 43571
    :goto_12
    :try_start_24
    new-instance v1, Lorg/android/agoo/d/a/n;

    invoke-direct {v1}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 43572
    iget-object v1, p0, Lorg/android/agoo/impl/ControlService;->b:Landroid/content/Context;

    invoke-static {v1}, Lorg/android/a;->s(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 43573
    const-string v2, "currentSudoPack"

    invoke-virtual {v1, v2, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43575
    const-string v1, "handleElectionResult"

    invoke-static {p1, v1}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 43576
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 43577
    const-string v0, "handleElectionResult"
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_a

    move-object v6, v0

    .line 43580
    :goto_13
    const/4 v1, 0x1

    :try_start_25
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43581
    invoke-static {p1, v3, v4, p3, v6}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/a/a;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_b

    goto/16 :goto_0

    .line 43592
    :catch_b
    move-exception v0

    move v1, v7

    goto/16 :goto_10

    .line 43583
    :cond_3b
    :try_start_26
    const-string v5, "currentPack != currentSudoPack"

    .line 43584
    const/4 v1, 0x0

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43586
    invoke-static {p1}, Lorg/android/agoo/e;->q(Landroid/content/Context;)Lorg/android/agoo/f;

    move-result-object v0

    sget-object v1, Lorg/android/agoo/f;->a:Lorg/android/agoo/f;

    if-eq v0, v1, :cond_0

    .line 45288
    invoke-interface {p3}, Lorg/android/agoo/a/a;->callAgooService()Ljava/lang/Class;

    move-result-object v0

    .line 45289
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "restart---->[currentSudoPack:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "][currentPack:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "]:[stop]"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45291
    invoke-static {v0}, Lorg/android/agoo/impl/ControlService;->a(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 45292
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "disableService---->["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 45293
    invoke-interface {p3}, Lorg/android/agoo/a/a;->callAgooService()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45292
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45294
    invoke-interface {p3}, Lorg/android/agoo/a/a;->callAgooService()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/umeng/message/proguard/bi;->a(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45296
    :cond_3c
    invoke-static {p1}, Lcom/umeng/message/proguard/bj;->a(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_a

    goto/16 :goto_0

    .line 660
    :cond_3d
    :try_start_27
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 662
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 663
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 664
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "android.intent.action.USER_PRESENT"

    .line 665
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 666
    :cond_3e
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_0

    move-result v0

    if-eqz v0, :cond_3f

    .line 45311
    :try_start_28
    invoke-static {p1}, Lorg/android/agoo/e;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45312
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45313
    const-string v1, "app_retry_register"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 45314
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_c

    .line 45826
    :cond_3f
    :goto_14
    :try_start_29
    invoke-static {p1}, Lorg/android/a;->v(Landroid/content/Context;)Z

    move-result v0

    .line 45827
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doUnRegisterTemp,begin,flag="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45828
    if-eqz v0, :cond_40

    .line 45829
    invoke-static {p1}, Lorg/android/agoo/e;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 45830
    invoke-static {p1}, Lorg/android/agoo/e;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 45831
    invoke-static {p1}, Lorg/android/agoo/e;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 45832
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 50048
    :cond_40
    :goto_15
    invoke-static {p1, p3}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Lorg/android/agoo/a/a;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 50049
    const-string v0, "ControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleWake["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]--->[appkey==null,appSecret==null,ttid==null]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 45315
    :catch_c
    move-exception v0

    .line 45316
    const-string v1, "Settings"

    const-string v2, "RestRetryRegisterCount"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_14

    .line 45835
    :cond_41
    sget-object v3, Lorg/android/agoo/impl/ControlService;->c:Lorg/android/agoo/d/c/b;

    invoke-interface {v3, v0}, Lorg/android/agoo/d/c/b;->a(Ljava/lang/String;)V

    .line 45836
    sget-object v0, Lorg/android/agoo/impl/ControlService;->c:Lorg/android/agoo/d/c/b;

    invoke-interface {v0, v1}, Lorg/android/agoo/d/c/b;->b(Ljava/lang/String;)V

    .line 45837
    sget-object v0, Lorg/android/agoo/impl/ControlService;->c:Lorg/android/agoo/d/c/b;

    .line 46522
    invoke-static {p1}, Lorg/android/agoo/e;->q(Landroid/content/Context;)Lorg/android/agoo/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/android/agoo/f;->d()Ljava/lang/String;

    move-result-object v1

    .line 45837
    invoke-interface {v0, v1}, Lorg/android/agoo/d/c/b;->c(Ljava/lang/String;)V

    .line 45838
    invoke-static {p1}, Lorg/android/agoo/e;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 45839
    new-instance v1, Lorg/android/agoo/d/c/d;

    invoke-direct {v1}, Lorg/android/agoo/d/c/d;-><init>()V

    .line 45840
    const-string v3, "mtop.push.device.unregister"

    .line 47112
    iput-object v3, v1, Lorg/android/agoo/d/c/d;->a:Ljava/lang/String;

    .line 45841
    const-string v3, "4.0"

    .line 47120
    iput-object v3, v1, Lorg/android/agoo/d/c/d;->b:Ljava/lang/String;

    .line 48104
    iput-object v2, v1, Lorg/android/agoo/d/c/d;->c:Ljava/lang/String;

    .line 49066
    iput-object v0, v1, Lorg/android/agoo/d/c/d;->g:Ljava/lang/String;

    .line 45844
    const-string v0, "app_version"

    .line 45845
    invoke-static {p1}, Lorg/android/agoo/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 45844
    invoke-virtual {v1, v0, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45846
    const-string v0, "sdk_version"

    const-wide/32 v2, 0x1339ed7

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45847
    const-string v0, "app_pack"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45848
    sget-object v0, Lorg/android/agoo/impl/ControlService;->c:Lorg/android/agoo/d/c/b;

    invoke-interface {v0, p1, v1}, Lorg/android/agoo/d/c/b;->a(Landroid/content/Context;Lorg/android/agoo/d/c/d;)Lorg/android/agoo/d/c/i;

    move-result-object v0

    .line 45849
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unregister--->[server result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50046
    iget-object v3, v0, Lorg/android/agoo/d/c/i;->c:Ljava/lang/String;

    .line 45849
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 50047
    iget-object v0, v0, Lorg/android/agoo/d/c/i;->e:Ljava/lang/String;

    .line 45853
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 45854
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doUnRegisterTemp,errorId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45855
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/android/a;->b(Landroid/content/Context;Z)V

    goto/16 :goto_15

    .line 50053
    :cond_42
    invoke-static {p1}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 50055
    invoke-static {p1}, Lorg/android/agoo/e;->k(Landroid/content/Context;)I

    move-result v0

    .line 50056
    const-string v1, "ControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleRetryRegister begin,retryCount = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isRetryRegister="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-ge v0, v4, :cond_43

    :goto_16
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50057
    if-ge v0, v4, :cond_0

    .line 50058
    invoke-static {p1}, Lorg/android/agoo/impl/ControlService;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_43
    move v7, v6

    .line 50056
    goto :goto_16

    .line 50062
    :cond_44
    invoke-static {p1}, Lcom/umeng/message/proguard/h;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_45

    .line 50063
    const-string v0, "ControlService"

    const-string v1, "connectManager[network connectedOrConnecting failed]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 50068
    :cond_45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 50069
    invoke-static {p1}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 50070
    new-instance v2, Lorg/android/agoo/d/a/n;

    invoke-direct {v2}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 50071
    iget-object v2, p0, Lorg/android/agoo/impl/ControlService;->b:Landroid/content/Context;

    invoke-static {v2}, Lorg/android/a;->s(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 50072
    const-string v3, "currentSudoPack"

    invoke-virtual {v2, v3, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50074
    const-string v2, "handleWake"

    invoke-static {p1, v2}, Lcom/umeng/message/proguard/bk;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 50075
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 50076
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    .line 50077
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 50078
    const-string v2, "handleWake"

    invoke-static {p1, v0, v1, p3, v2}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lorg/android/agoo/a/a;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 50081
    :cond_46
    const-string v0, "handleWake"

    invoke-direct {p0, p1, v0}, Lorg/android/agoo/impl/ControlService;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 674
    :cond_47
    const-string v0, "ControlService"

    const-string v1, "handleWake[sms]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_0

    goto/16 :goto_0

    :catch_d
    move-exception v1

    goto/16 :goto_12

    :catch_e
    move-exception v0

    goto/16 :goto_e

    :catch_f
    move-exception v0

    goto/16 :goto_c

    :catch_10
    move-exception v0

    goto/16 :goto_b

    .line 39218
    :catch_11
    move-exception v0

    move-object v8, v0

    move-object v9, v3

    goto/16 :goto_a

    :catch_12
    move-exception v0

    goto/16 :goto_9

    :catch_13
    move-exception v0

    goto/16 :goto_7

    :catch_14
    move-exception v2

    goto/16 :goto_4

    :catch_15
    move-exception v0

    goto/16 :goto_2

    :cond_48
    move-object v6, v0

    goto/16 :goto_13

    :cond_49
    move-object v7, v0

    goto/16 :goto_11

    :cond_4a
    move-object v7, v0

    goto/16 :goto_f

    :cond_4b
    move-object v8, v3

    goto/16 :goto_8
.end method
