.class final Lorg/android/agoo/impl/a;
.super Ljava/lang/Object;
.source "ElectionService.java"


# static fields
.field private static final a:Lorg/android/agoo/d/c/b;

.field private static final b:Ljava/util/Random;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Landroid/content/Context;

.field private static g:Landroid/os/HandlerThread;

.field private static h:Landroid/os/Handler;

.field private static i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 49
    new-instance v0, Lorg/android/agoo/d/c/h;

    invoke-direct {v0}, Lorg/android/agoo/d/c/h;-><init>()V

    sput-object v0, Lorg/android/agoo/impl/a;->a:Lorg/android/agoo/d/c/b;

    .line 50
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/android/agoo/impl/a;->b:Ljava/util/Random;

    .line 53
    sput-object v1, Lorg/android/agoo/impl/a;->c:Ljava/lang/String;

    .line 54
    const-string v0, ""

    sput-object v0, Lorg/android/agoo/impl/a;->d:Ljava/lang/String;

    .line 55
    sput-object v1, Lorg/android/agoo/impl/a;->e:Ljava/util/Map;

    .line 57
    sput-object v1, Lorg/android/agoo/impl/a;->g:Landroid/os/HandlerThread;

    .line 58
    sput-object v1, Lorg/android/agoo/impl/a;->h:Landroid/os/Handler;

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lorg/android/agoo/impl/a;->i:Z

    .line 63
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "electionService-thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 64
    sput-object v0, Lorg/android/agoo/impl/a;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lorg/android/agoo/impl/a;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lorg/android/agoo/impl/a$b;

    invoke-direct {v2}, Lorg/android/agoo/impl/a$b;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lorg/android/agoo/impl/a;->h:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/pm/PackageInfo;)I
    .locals 4

    .prologue
    .line 87
    const/4 v0, -0x1

    .line 90
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 91
    iget v2, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 96
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lorg/android/agoo/impl/a;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1218
    const/4 v1, 0x0

    .line 1221
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_3

    .line 1223
    sget-boolean v0, Lorg/android/agoo/impl/a;->i:Z

    if-eqz v0, :cond_0

    .line 1224
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1255
    :goto_0
    return-object v0

    .line 1227
    :cond_0
    const-string v0, "org.agoo.android.sudo.%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 1228
    invoke-static {p0}, Lorg/android/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 1227
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1229
    invoke-static {v2, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1231
    invoke-static {p0}, Lorg/android/agoo/impl/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1232
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1233
    const/4 v3, 0x2

    invoke-static {v2, v0, v3}, Lcom/umeng/message/proguard/q;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1235
    const-string v2, "ElectionService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCurrentSudo[tmpCurrentSudo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    invoke-static {p0, v0}, Lorg/android/agoo/impl/a;->b(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-eqz v2, :cond_1

    .line 1239
    :try_start_1
    const-string v1, "ElectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getCurrentSudo[currentSudo:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1251
    :catch_0
    move-exception v1

    .line 1252
    :goto_1
    invoke-static {}, Lorg/android/agoo/f/b;->a()Lorg/android/agoo/f/b;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "get_CurrentSudo"

    aput-object v4, v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exp="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    .line 1252
    invoke-virtual {v2, p0}, Lorg/android/agoo/f/b;->b(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1242
    :cond_1
    :try_start_2
    const-string v2, "ElectionService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getCurrentSudo[oldSudo:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "][remove]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    .line 1247
    goto/16 :goto_0

    .line 1248
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 1251
    :catch_1
    move-exception v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_1
.end method

.method private static final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lorg/android/agoo/impl/a$a;
    .locals 12

    .prologue
    const/4 v7, -0x1

    const-wide/16 v10, -0x1

    const/4 v1, 0x0

    .line 1065
    .line 1067
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1069
    if-ne p3, v7, :cond_0

    .line 1073
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 1072
    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1075
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5

    .line 1084
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 1091
    :goto_1
    if-nez v0, :cond_1

    .line 1092
    :try_start_3
    const-string v0, "ElectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkPackage[pack:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][clientApplicationInfo == null][disabled]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    :goto_2
    return-object v1

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 1097
    :cond_1
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_2

    .line 1098
    const-string v0, "ElectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkPackage[pack:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][disabled]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    move-object v1, v0

    .line 1214
    goto :goto_2

    .line 1104
    :cond_2
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {v2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    move-object v2, v0

    .line 1109
    :goto_4
    if-nez v2, :cond_3

    .line 1110
    :try_start_5
    const-string v0, "ElectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkPackage[pack:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][packageInfo == null][disabled]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 1115
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1116
    const-string v0, "org.agoo.android.packs_v1.%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 1117
    invoke-static {p0}, Lorg/android/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1116
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1118
    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1120
    const-string v4, "ElectionService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkPackage[data:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][agooPackagesKey="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    invoke-static {p0}, Lorg/android/agoo/impl/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1123
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1124
    :cond_4
    const-string v2, "ElectionService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkPackage [pack:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] [password=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|| group==null ||pack ==null][failed]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/umeng/message/proguard/bn;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1129
    :cond_5
    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Lcom/umeng/message/proguard/q;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1131
    const-string v0, "ElectionService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkPackage[agooPacks:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "][data="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1134
    const-string v0, "ElectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkPackage[pack:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][agooPacks==null][failed]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 1141
    :cond_6
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    .line 1142
    :try_start_7
    const-string v3, "ElectionService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkPackage[jsonObject:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_4

    .line 1146
    :goto_5
    if-nez v0, :cond_7

    .line 1147
    :try_start_8
    const-string v3, "ElectionService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkPackage[pack:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][json parse failed]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    :cond_7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1155
    :cond_8
    const-string v0, "ElectionService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkPackage[agooPackStr:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1157
    const-string v0, "ElectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkPackage[pack:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][appInfoStr==null][json parse failed]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1162
    :cond_9
    invoke-static {p2}, Lorg/android/agoo/impl/a$a;->a(Ljava/lang/String;)Lorg/android/agoo/impl/a$a;

    move-result-object v0

    .line 1163
    if-nez v0, :cond_a

    .line 1164
    const-string v0, "ElectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkPackage[pack:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][appInfo==null][json parse failed]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1169
    :cond_a
    invoke-virtual {v0}, Lorg/android/agoo/impl/a$a;->b()J

    move-result-wide v4

    .line 1170
    invoke-virtual {v0}, Lorg/android/agoo/impl/a$a;->a()I

    move-result v3

    .line 1171
    cmp-long v6, v4, v10

    if-eqz v6, :cond_b

    if-ne v3, v7, :cond_c

    .line 1172
    :cond_b
    const-string v0, "ElectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkPackage[pack:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][setttingInstallTime==-1||setttingVersionHash==-1][json parse failed]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1181
    :cond_c
    invoke-static {v2}, Lorg/android/agoo/impl/a;->b(Landroid/content/pm/PackageInfo;)J

    move-result-wide v6

    .line 1182
    invoke-static {v2}, Lorg/android/agoo/impl/a;->a(Landroid/content/pm/PackageInfo;)I

    move-result v2

    .line 1183
    cmp-long v8, v6, v10

    if-eqz v8, :cond_d

    cmp-long v8, v6, v10

    if-nez v8, :cond_e

    .line 1184
    :cond_d
    const-string v0, "ElectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkPackage[pack:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][currentInstallTime==-1||currentInstallTime==-1][disabled]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1193
    :cond_e
    cmp-long v8, v6, v4

    if-eqz v8, :cond_f

    .line 1194
    const-string v0, "ElectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkPackage[pack:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][currentInstallTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]!=settingsAppInstallTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][disabled]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1201
    :cond_f
    if-eq v2, v3, :cond_10

    .line 1202
    const-string v0, "ElectionService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "checkPackage[pack:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "][currentVersionHash:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "]!=setttingVersionHash:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][disabled]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1208
    :cond_10
    const-string v2, "ElectionService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "checkPackage[pack:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "][enabled]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_3

    :catch_3
    move-exception v0

    move-object v0, v1

    goto/16 :goto_5

    :catch_4
    move-exception v3

    goto/16 :goto_5

    :catch_5
    move-exception v0

    goto/16 :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;)Lorg/android/agoo/impl/a$d;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/android/agoo/impl/a$d;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 577
    new-instance v0, Lorg/android/agoo/impl/a$d;

    invoke-direct {v0}, Lorg/android/agoo/impl/a$d;-><init>()V

    .line 578
    invoke-static {p0}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5136
    invoke-static {p0}, Lorg/android/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 5151
    invoke-static {p0}, Lorg/android/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 4262
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v1, v7

    .line 578
    :goto_0
    if-eqz v1, :cond_6

    .line 579
    const-string v1, "ElectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "election application packs["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    new-instance v1, Lorg/android/agoo/d/c/d;

    invoke-direct {v1}, Lorg/android/agoo/d/c/d;-><init>()V

    .line 582
    const-string v2, "mtop.push.channel.vote"

    .line 6112
    iput-object v2, v1, Lorg/android/agoo/d/c/d;->a:Ljava/lang/String;

    .line 583
    const-string v2, "7.0"

    .line 6120
    iput-object v2, v1, Lorg/android/agoo/d/c/d;->b:Ljava/lang/String;

    .line 6151
    invoke-static {p0}, Lorg/android/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 7104
    iput-object v2, v1, Lorg/android/agoo/d/c/d;->c:Ljava/lang/String;

    .line 7191
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 8066
    iput-object v2, v1, Lorg/android/agoo/d/c/d;->g:Ljava/lang/String;

    .line 586
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 587
    const-string v3, "vote_factors"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/android/agoo/d/c/d;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 588
    sget-object v2, Lorg/android/agoo/impl/a;->a:Lorg/android/agoo/d/c/b;

    invoke-interface {v2, p0, v1}, Lorg/android/agoo/d/c/b;->a(Landroid/content/Context;Lorg/android/agoo/d/c/d;)Lorg/android/agoo/d/c/i;

    move-result-object v1

    .line 589
    if-eqz v1, :cond_7

    .line 9020
    iget-object v2, v1, Lorg/android/agoo/d/c/i;->f:Ljava/util/Map;

    .line 9088
    iget v3, v1, Lorg/android/agoo/d/c/i;->b:I

    .line 591
    invoke-static {v2, v3}, Lcom/umeng/message/proguard/t;->a(Ljava/util/Map;I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 592
    const-string v2, "[checkHttpOK failed]"

    invoke-virtual {v0, v2}, Lorg/android/agoo/impl/a$d;->a(Ljava/lang/String;)V

    .line 10031
    iget-boolean v1, v1, Lorg/android/agoo/d/c/i;->a:Z

    .line 593
    invoke-virtual {v0, v1}, Lorg/android/agoo/impl/a$d;->a(Z)V

    .line 594
    sget-object v1, Lorg/android/agoo/impl/a;->e:Ljava/util/Map;

    const-string v2, "electionFailed"

    const-string v3, "[checkHttpOK failed]"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string v1, "ElectionService"

    const-string v2, "register--->[failed]"

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :goto_1
    return-object v0

    .line 4265
    :cond_1
    sget-object v2, Lorg/android/agoo/impl/a;->a:Lorg/android/agoo/d/c/b;

    invoke-interface {v2, v1}, Lorg/android/agoo/d/c/b;->a(Ljava/lang/String;)V

    .line 5166
    invoke-static {p0}, Lorg/android/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 4267
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4268
    invoke-static {p0}, Lorg/android/agoo/e;->o(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v7

    .line 4269
    goto/16 :goto_0

    .line 4271
    :cond_2
    sget-object v2, Lorg/android/agoo/impl/a;->a:Lorg/android/agoo/d/c/b;

    invoke-interface {v2, v1}, Lorg/android/agoo/d/c/b;->b(Ljava/lang/String;)V

    .line 4272
    sget-object v1, Lorg/android/agoo/impl/a;->a:Lorg/android/agoo/d/c/b;

    .line 5522
    invoke-static {p0}, Lorg/android/agoo/e;->q(Landroid/content/Context;)Lorg/android/agoo/f;

    move-result-object v2

    invoke-virtual {v2}, Lorg/android/agoo/f;->d()Ljava/lang/String;

    move-result-object v2

    .line 4272
    invoke-interface {v1, v2}, Lorg/android/agoo/d/c/b;->c(Ljava/lang/String;)V

    .line 4273
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 11031
    :cond_3
    iget-boolean v2, v1, Lorg/android/agoo/d/c/i;->a:Z

    .line 599
    if-eqz v2, :cond_5

    .line 600
    const-string v2, "ElectionService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "remoteElection--->[result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11046
    iget-object v4, v1, Lorg/android/agoo/d/c/i;->c:Ljava/lang/String;

    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 600
    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 12046
    iget-object v3, v1, Lorg/android/agoo/d/c/i;->c:Ljava/lang/String;

    .line 604
    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 605
    const-string v3, "ElectionService"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "remoteElection--->[result11:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 606
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 605
    invoke-static {v3, v4}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    const-string v3, "sudo_pack"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 609
    const-wide/16 v4, -0x1

    .line 610
    const-string v6, "ElectionService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "remoteElection--->[sudo_pack:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_4

    .line 614
    :try_start_1
    const-string v6, "time_out"

    .line 615
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 619
    :goto_2
    :try_start_2
    invoke-virtual {v0, v3}, Lorg/android/agoo/impl/a$d;->c(Ljava/lang/String;)V

    .line 13031
    iget-boolean v1, v1, Lorg/android/agoo/d/c/i;->a:Z

    .line 620
    invoke-virtual {v0, v1}, Lorg/android/agoo/impl/a$d;->a(Z)V

    .line 621
    const-string v1, "remoteElection"

    invoke-virtual {v0, v1}, Lorg/android/agoo/impl/a$d;->b(Ljava/lang/String;)V

    .line 622
    const-string v6, "remote"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1

    .line 631
    :catch_0
    move-exception v1

    .line 632
    const-string v2, "remoteElection"

    invoke-virtual {v0, v2}, Lorg/android/agoo/impl/a$d;->b(Ljava/lang/String;)V

    .line 633
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/android/agoo/impl/a$d;->a(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v0, v7}, Lorg/android/agoo/impl/a$d;->a(Z)V

    .line 635
    sget-object v2, Lorg/android/agoo/impl/a;->e:Ljava/util/Map;

    const-string v3, "electionFailed"

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    const-string v2, "ElectionService"

    const-string v3, "remoteElection"

    invoke-static {v2, v3, v1}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 625
    :cond_4
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v0, v1}, Lorg/android/agoo/impl/a$d;->a(Z)V

    .line 626
    const-string v1, "remoteElection"

    invoke-virtual {v0, v1}, Lorg/android/agoo/impl/a$d;->b(Ljava/lang/String;)V

    .line 627
    const-string v1, "sudoPack is null"

    invoke-virtual {v0, v1}, Lorg/android/agoo/impl/a$d;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 640
    :cond_5
    const-string v1, "remoteElection"

    invoke-virtual {v0, v1}, Lorg/android/agoo/impl/a$d;->b(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v0, v7}, Lorg/android/agoo/impl/a$d;->a(Z)V

    goto/16 :goto_1

    .line 646
    :cond_6
    const-string v1, "remoteElection"

    invoke-virtual {v0, v1}, Lorg/android/agoo/impl/a$d;->b(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v0, v7}, Lorg/android/agoo/impl/a$d;->a(Z)V

    .line 648
    const-string v1, "no register info"

    invoke-virtual {v0, v1}, Lorg/android/agoo/impl/a$d;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 652
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method static final a(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 102
    :try_start_0
    const-string v0, "ElectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current android os version="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 2162
    :try_start_1
    invoke-static {p0}, Lorg/android/agoo/impl/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2163
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 2164
    invoke-static {p0}, Lorg/android/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2165
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2166
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 108
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 109
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 120
    :cond_1
    :goto_1
    return-void

    .line 2170
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 2171
    if-eqz v4, :cond_0

    .line 2174
    new-instance v5, Lorg/android/agoo/impl/a$a;

    invoke-direct {v5}, Lorg/android/agoo/impl/a$a;-><init>()V

    .line 2175
    const-wide/32 v6, 0x1339ed7

    invoke-virtual {v5, v6, v7}, Lorg/android/agoo/impl/a$a;->b(J)V

    .line 2176
    invoke-static {p0}, Lorg/android/agoo/impl/a;->c(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/android/agoo/impl/a$a;->a(J)V

    .line 2177
    invoke-static {p0}, Lorg/android/agoo/impl/a;->b(Landroid/content/Context;)I

    move-result v1

    .line 2178
    invoke-virtual {v5, v1}, Lorg/android/agoo/impl/a$a;->a(I)V

    .line 3136
    invoke-static {p0}, Lorg/android/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 2179
    invoke-virtual {v5, v1}, Lorg/android/agoo/impl/a$a;->b(Ljava/lang/String;)V

    .line 2180
    const-string v1, "org.agoo.android.packs_v1.%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 2181
    invoke-static {v4, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2183
    const-string v1, "ElectionService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "register app data="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    const/4 v1, 0x0

    .line 2185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v7

    if-nez v7, :cond_5

    .line 2187
    const/4 v7, 0x2

    :try_start_4
    invoke-static {v2, v0, v7}, Lcom/umeng/message/proguard/q;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 2189
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2190
    const-string v7, "ElectionService"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "registerApp["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "][aes decrypt failed]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/umeng/message/proguard/bn;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    .line 2199
    :goto_2
    if-nez v0, :cond_3

    .line 2200
    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2202
    :cond_3
    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2203
    const-string v1, "ElectionService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "registerApp save["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2205
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2204
    invoke-static {v2, v0}, Lcom/umeng/message/proguard/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2206
    invoke-static {v4, v6, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 2209
    :catch_0
    move-exception v0

    .line 2210
    const/4 v1, 0x1

    :try_start_6
    sput-boolean v1, Lorg/android/agoo/impl/a;->i:Z

    .line 2211
    const-string v1, "ElectionService"

    const-string v2, "registerApp"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2212
    invoke-static {}, Lorg/android/agoo/f/b;->a()Lorg/android/agoo/f/b;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "get_CurrentSudo"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exp="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2213
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 2212
    invoke-virtual {v1, p0}, Lorg/android/agoo/f/b;->b(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 117
    :catch_1
    move-exception v0

    sput-boolean v10, Lorg/android/agoo/impl/a;->i:Z

    goto/16 :goto_1

    .line 2193
    :cond_4
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    .line 2195
    :catch_2
    move-exception v0

    .line 2196
    :try_start_8
    const-string v7, "ElectionService"

    const-string v8, "registerApp"

    invoke-static {v7, v8, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 24

    .prologue
    .line 285
    const/4 v9, 0x0

    .line 286
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 287
    const/4 v11, 0x0

    .line 288
    const/4 v12, 0x0

    .line 289
    const-string v13, ""

    .line 290
    invoke-static/range {p0 .. p0}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 292
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/android/agoo/impl/a;->e:Ljava/util/Map;

    .line 294
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 295
    sput-object p1, Lorg/android/agoo/impl/a;->c:Ljava/lang/String;

    .line 297
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_3

    .line 298
    const-string v2, "ElectionService"

    const-string v3, "6.0 not election!!"

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static/range {p0 .. p0}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 301
    const-wide/32 v6, 0x1339ed7

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 300
    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    const-string v8, "local"

    move-object/from16 v3, p0

    .line 302
    invoke-static/range {v3 .. v8}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 488
    :cond_1
    sget-object v7, Lorg/android/agoo/impl/a;->d:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object v6, v10

    move-wide/from16 v8, v16

    move-object v10, v4

    invoke-static/range {v5 .. v13}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lorg/android/agoo/impl/a$d;Lorg/android/agoo/impl/a$d;Ljava/lang/String;)V

    .line 494
    :cond_2
    :goto_0
    return-void

    .line 308
    :cond_3
    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/umeng/message/proguard/bk;->h(Landroid/content/Context;)V

    .line 309
    new-instance v2, Lorg/android/agoo/d/a/n;

    invoke-direct {v2}, Lorg/android/agoo/d/a/n;-><init>()V

    .line 312
    invoke-static/range {p0 .. p0}, Lorg/android/a;->s(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    .line 314
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 315
    const-string v2, "ElectionService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "doElection[targetPackage:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-static/range {p0 .. p0}, Lorg/android/agoo/impl/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 319
    invoke-static/range {p0 .. p0}, Lorg/android/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 320
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 321
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 322
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 323
    :cond_4
    sget-object v2, Lorg/android/agoo/impl/a;->e:Ljava/util/Map;

    const-string v3, "electionFailed"

    const-string v5, "[password==null || group==null ||pack ==null]"

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    const-string v2, "ElectionService"

    const-string v3, "doElection failed [password==null || group==null ||pack ==null]"

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 488
    sget-object v7, Lorg/android/agoo/impl/a;->d:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object v6, v10

    move-wide/from16 v8, v16

    move-object v10, v4

    invoke-static/range {v5 .. v13}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lorg/android/agoo/impl/a$d;Lorg/android/agoo/impl/a$d;Ljava/lang/String;)V

    goto :goto_0

    .line 330
    :cond_5
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 331
    if-nez v18, :cond_6

    .line 332
    const-string v2, "ElectionService"

    const-string v3, "doElection failed [contentResolver==null]"

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-object v2, Lorg/android/agoo/impl/a;->e:Ljava/util/Map;

    const-string v3, "electionFailed"

    const-string v5, "[contentResolver==null]"

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 488
    sget-object v7, Lorg/android/agoo/impl/a;->d:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object v6, v10

    move-wide/from16 v8, v16

    move-object v10, v4

    invoke-static/range {v5 .. v13}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lorg/android/agoo/impl/a$d;Lorg/android/agoo/impl/a$d;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 338
    :cond_6
    :try_start_3
    new-instance v14, Lcom/umeng/message/proguard/bm;

    const-string v2, "agoo_lock"

    invoke-direct {v14, v2}, Lcom/umeng/message/proguard/bm;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 339
    :try_start_4
    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v2

    .line 340
    if-nez v2, :cond_7

    .line 341
    sget-object v2, Lorg/android/agoo/impl/a;->e:Ljava/util/Map;

    const-string v3, "lock"

    const-string v5, "election[locked]"

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    const-string v2, "ElectionService"

    const-string v3, "election[locked]"

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 488
    sget-object v7, Lorg/android/agoo/impl/a;->d:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object v6, v10

    move-wide/from16 v8, v16

    move-object v10, v4

    invoke-static/range {v5 .. v13}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lorg/android/agoo/impl/a$d;Lorg/android/agoo/impl/a$d;Ljava/lang/String;)V

    .line 491
    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 345
    :cond_7
    const/4 v3, 0x0

    .line 346
    const/4 v2, 0x0

    .line 348
    :try_start_5
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x17

    if-ge v6, v9, :cond_b

    sget-boolean v6, Lorg/android/agoo/impl/a;->i:Z

    if-nez v6, :cond_b

    .line 349
    const-string v2, "org.agoo.android.packs_v1.%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v6, v9

    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 350
    move-object/from16 v0, v18

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 353
    const/4 v5, 0x2

    invoke-static {v8, v2, v5}, Lcom/umeng/message/proguard/q;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v2

    .line 356
    :try_start_6
    const-string v5, "ElectionService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v19, "agoo client packs==>["

    move-object/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v19, "]"

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 360
    const/4 v9, 0x0

    .line 361
    invoke-virtual {v5, v15, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    .line 364
    iget v9, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 366
    new-instance v19, Landroid/content/Intent;

    const-string v20, "org.agoo.android.intent.action.ELECTION_RESULT_V4"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    invoke-static/range {p0 .. p0}, Lorg/android/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    const/16 v20, 0x20

    .line 370
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v19

    .line 374
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 375
    :try_start_7
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v19

    move-object v3, v13

    :cond_8
    :goto_1
    :try_start_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 379
    if-eqz v2, :cond_8

    .line 382
    :try_start_9
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 383
    if-eqz v2, :cond_9

    instance-of v13, v2, Landroid/content/pm/ActivityInfo;

    if-nez v13, :cond_d

    .line 385
    :cond_9
    const-string v3, "activityInfo==null"

    .line 386
    const-string v2, "ElectionService"

    const-string v13, "application[activityInfo==null][disabled]"

    invoke-static {v2, v13}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1

    .line 434
    :catch_0
    move-exception v2

    .line 435
    :try_start_a
    const-string v13, "ElectionService"

    const-string v20, "Throwable t"

    move-object/from16 v0, v20

    invoke-static {v13, v0, v2}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_1

    .line 438
    :catch_1
    move-exception v2

    move-object v13, v3

    move-object v3, v5

    .line 439
    :goto_2
    :try_start_b
    const-string v5, "ElectionService"

    const-string v9, "Throwable t"

    invoke-static {v5, v9, v2}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    move-object v2, v6

    .line 444
    :cond_b
    :goto_3
    if-nez v3, :cond_c

    invoke-static/range {p0 .. p0}, Lorg/android/agoo/e;->f(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 445
    const-string v3, "ElectionService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "application[list==null]&&["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":registered]--->["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":20160215]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 448
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 445
    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-wide/32 v20, 0x1339ed7

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v4, v15, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    new-instance v3, Lorg/android/agoo/impl/a$a;

    invoke-direct {v3}, Lorg/android/agoo/impl/a$a;-><init>()V

    .line 451
    invoke-static/range {p0 .. p0}, Lorg/android/agoo/impl/a;->b(Landroid/content/Context;)I

    move-result v5

    .line 452
    invoke-virtual {v3, v5}, Lorg/android/agoo/impl/a$a;->a(I)V

    .line 453
    const-wide/32 v20, 0x1339ed7

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lorg/android/agoo/impl/a$a;->b(J)V

    .line 454
    invoke-static/range {p0 .. p0}, Lorg/android/agoo/impl/a;->c(Landroid/content/Context;)J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lorg/android/agoo/impl/a$a;->a(J)V

    .line 455
    invoke-virtual {v7, v15, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 457
    :cond_c
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    if-gtz v3, :cond_14

    .line 458
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v3, v5, :cond_14

    sget-boolean v3, Lorg/android/agoo/impl/a;->i:Z

    if-nez v3, :cond_14

    .line 459
    sget-object v3, Lorg/android/agoo/impl/a;->e:Ljava/util/Map;

    const-string v5, "electionFailed"

    const-string v6, "[application list==null || 0 >= list.size()]"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 488
    sget-object v7, Lorg/android/agoo/impl/a;->d:Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object v6, v10

    move-wide/from16 v8, v16

    move-object v10, v4

    invoke-static/range {v5 .. v13}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lorg/android/agoo/impl/a$d;Lorg/android/agoo/impl/a$d;Ljava/lang/String;)V

    .line 491
    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 391
    :cond_d
    :try_start_c
    iget-object v13, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 393
    :try_start_d
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_e

    .line 394
    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_f

    .line 395
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v20, ",application[pack="

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v20, "][disabled]"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v2

    .line 397
    :try_start_e
    const-string v3, "ElectionService"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "application[pack:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v20, "][disabled]"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object v3, v2

    .line 399
    goto/16 :goto_1

    .line 402
    :catch_2
    move-exception v2

    move-object v2, v3

    :goto_4
    move-object v3, v2

    goto/16 :goto_1

    .line 405
    :cond_f
    :try_start_f
    invoke-virtual {v5, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 407
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v20, ",application[pack="

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v20, "][settingsString==null][disabled];"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 410
    const-string v2, "ElectionService"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "application[pack:"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v20, "][settingsString==null][disabled]"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_1

    .line 488
    :catchall_0
    move-exception v2

    move-object v13, v3

    :goto_5
    sget-object v7, Lorg/android/agoo/impl/a;->d:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object v6, v10

    move-wide/from16 v8, v16

    move-object v10, v4

    invoke-static/range {v5 .. v13}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lorg/android/agoo/impl/a$d;Lorg/android/agoo/impl/a$d;Ljava/lang/String;)V

    .line 490
    if-eqz v14, :cond_10

    .line 491
    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_10
    throw v2

    .line 417
    :cond_11
    :try_start_10
    move-object/from16 v0, p0

    invoke-static {v0, v13, v2, v9}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lorg/android/agoo/impl/a$a;

    move-result-object v20

    .line 420
    if-eqz v20, :cond_12

    .line 421
    const-string v2, "ElectionService"

    new-instance v21, Ljava/lang/StringBuilder;

    const-string v22, "application[pack:"

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "]--->[agooVersion:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    .line 423
    invoke-virtual/range {v20 .. v20}, Lorg/android/agoo/impl/a$a;->c()J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "][enabled]"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 421
    move-object/from16 v0, v21

    invoke-static {v2, v0}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    move-object/from16 v0, v20

    invoke-virtual {v7, v13, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 428
    invoke-virtual/range {v20 .. v20}, Lorg/android/agoo/impl/a$a;->c()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 427
    invoke-interface {v4, v13, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 430
    :cond_12
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",clientAppInfo = null,[pack="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v20, "][settingsString=="

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "]"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v3

    goto/16 :goto_1

    :cond_13
    move-object v2, v6

    move-object v13, v3

    move-object v3, v5

    .line 440
    goto/16 :goto_3

    .line 468
    :cond_14
    :try_start_11
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x17

    if-ge v3, v5, :cond_15

    sget-boolean v3, Lorg/android/agoo/impl/a;->i:Z

    if-nez v3, :cond_15

    .line 470
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 471
    const-string v5, "ElectionService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "resetAgooPacks--->["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-static {v8, v3}, Lcom/umeng/message/proguard/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 474
    move-object/from16 v0, v18

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 481
    :cond_15
    :goto_6
    :try_start_12
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/util/Map;)Lorg/android/agoo/impl/a$d;

    move-result-object v11

    .line 482
    if-eqz v11, :cond_16

    invoke-virtual {v11}, Lorg/android/agoo/impl/a$d;->b()Z

    move-result v2

    if-nez v2, :cond_17

    .line 483
    :cond_16
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lorg/android/agoo/impl/a;->b(Landroid/content/Context;Ljava/util/Map;)Lorg/android/agoo/impl/a$d;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    move-result-object v12

    .line 488
    :cond_17
    sget-object v7, Lorg/android/agoo/impl/a;->d:Ljava/lang/String;

    move-object/from16 v5, p0

    move-object v6, v10

    move-wide/from16 v8, v16

    move-object v10, v4

    invoke-static/range {v5 .. v13}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lorg/android/agoo/impl/a$d;Lorg/android/agoo/impl/a$d;Ljava/lang/String;)V

    .line 491
    invoke-interface {v14}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 485
    :catch_3
    move-exception v2

    move-object v3, v9

    .line 486
    :goto_7
    :try_start_13
    const-string v5, "ElectionService"

    const-string v6, "Throwable t"

    invoke-static {v5, v6, v2}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 488
    sget-object v7, Lorg/android/agoo/impl/a;->d:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object v6, v10

    move-wide/from16 v8, v16

    move-object v10, v4

    invoke-static/range {v5 .. v13}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lorg/android/agoo/impl/a$d;Lorg/android/agoo/impl/a$d;Ljava/lang/String;)V

    .line 490
    if-eqz v3, :cond_2

    .line 491
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_0

    .line 488
    :catchall_1
    move-exception v2

    move-object v14, v9

    goto/16 :goto_5

    :catchall_2
    move-exception v2

    goto/16 :goto_5

    :catchall_3
    move-exception v3

    move-object v13, v2

    move-object v2, v3

    goto/16 :goto_5

    :catchall_4
    move-exception v2

    move-object v14, v3

    goto/16 :goto_5

    .line 485
    :catch_4
    move-exception v2

    move-object v3, v14

    goto :goto_7

    :catch_5
    move-exception v2

    goto :goto_6

    .line 438
    :catch_6
    move-exception v2

    goto/16 :goto_2

    :catch_7
    move-exception v2

    move-object v3, v5

    goto/16 :goto_2

    .line 402
    :catch_8
    move-exception v3

    goto/16 :goto_4
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lorg/android/agoo/impl/a$d;Lorg/android/agoo/impl/a$d;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/android/agoo/impl/a$d;",
            "Lorg/android/agoo/impl/a$d;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 501
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 503
    if-eqz p6, :cond_0

    :try_start_0
    invoke-virtual/range {p6 .. p6}, Lorg/android/agoo/impl/a$d;->b()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    if-eqz p7, :cond_2

    .line 504
    invoke-virtual/range {p7 .. p7}, Lorg/android/agoo/impl/a$d;->b()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 505
    :cond_1
    const-string v6, "y"

    move-object v7, v6

    .line 509
    :goto_0
    invoke-static {p0}, Lorg/android/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 510
    if-eqz p6, :cond_3

    invoke-virtual/range {p6 .. p6}, Lorg/android/agoo/impl/a$d;->b()Z

    move-result v6

    if-nez v6, :cond_3

    .line 511
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "remoteRet="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p6 .. p6}, Lorg/android/agoo/impl/a$d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-->remoteFailed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 512
    invoke-virtual/range {p6 .. p6}, Lorg/android/agoo/impl/a$d;->b()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-->remoteSudoPack="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 513
    invoke-virtual/range {p6 .. p6}, Lorg/android/agoo/impl/a$d;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-->source="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 514
    invoke-virtual/range {p6 .. p6}, Lorg/android/agoo/impl/a$d;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    move-object v5, v4

    .line 521
    :goto_1
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 522
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .line 524
    :goto_2
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 525
    sget-object v2, Lorg/android/agoo/impl/a;->e:Ljava/util/Map;

    const-string v3, "electionFailed"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v3, v2

    .line 527
    :goto_3
    sget-object v2, Lorg/android/agoo/impl/a;->e:Ljava/util/Map;

    const-string v9, "lock"

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 528
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 529
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "utdid="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 530
    const-string v10, "-->"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 531
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "deviceId="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    const-string v8, "-->"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 533
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "appkey="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4136
    invoke-static {p0}, Lorg/android/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 533
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 534
    const-string v8, "-->"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "startTime="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p3 .. p4}, Lcom/umeng/message/proguard/o;->a(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 536
    const-string v8, "-->"

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "ret="

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    const-string v7, "-->"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 539
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "fail_reasons="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    const-string v7, "-->"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "currentPackage="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    const-string v7, "-->"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "packsMap="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    const-string v4, "-->"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 545
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "lastsudo="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    const-string v4, "-->"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "currentsudo="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 548
    const-string v4, "-->"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 549
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "finishtime="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/umeng/message/proguard/o;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 549
    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 551
    const-string v4, "-->"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "errorMapString="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 553
    const-string v3, "-->"

    invoke-virtual {v9, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "lock="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 555
    const-string v2, "-->"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 556
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "errorStr="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 557
    const-string v2, "-->"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    const-string v2, "sdkVersion=20160215"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 559
    const-string v2, "-->"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "remoteInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    const-string v2, "-->"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "localInfo="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    const-string v2, "-->"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 564
    const-string v2, "election"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 565
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 566
    invoke-static {p0, v2}, Lcom/umeng/message/proguard/bk;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 570
    :goto_4
    return-void

    .line 507
    :cond_2
    const-string v6, "n"

    move-object v7, v6

    goto/16 :goto_0

    .line 515
    :cond_3
    if-eqz p7, :cond_6

    invoke-virtual/range {p7 .. p7}, Lorg/android/agoo/impl/a$d;->b()Z

    move-result v6

    if-nez v6, :cond_6

    .line 516
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "LocalRet="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p7 .. p7}, Lorg/android/agoo/impl/a$d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-->localFailed="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 517
    invoke-virtual/range {p7 .. p7}, Lorg/android/agoo/impl/a$d;->b()Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-->localSudoPack="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 518
    invoke-virtual/range {p7 .. p7}, Lorg/android/agoo/impl/a$d;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-->source="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 519
    invoke-virtual/range {p7 .. p7}, Lorg/android/agoo/impl/a$d;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v6, v5

    move-object v5, v4

    goto/16 :goto_1

    .line 568
    :catch_0
    move-exception v2

    .line 569
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/umeng/message/proguard/bk;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move-object v3, v2

    goto/16 :goto_3

    :cond_5
    move-object v4, v3

    goto/16 :goto_2

    :cond_6
    move-object v6, v5

    move-object v5, v4

    goto/16 :goto_1
.end method

.method private static final a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;JLjava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v11, 0x20

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 743
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    invoke-static {p0}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 748
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 749
    const-string v2, "ElectionService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "noticeElectionResult[lastSudoPack:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    :cond_2
    const-string v2, "ElectionService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "noticeElectionResult[sudoPack:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][timeout:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p3

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "][electionSource:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    sput-object p2, Lorg/android/agoo/impl/a;->d:Ljava/lang/String;

    .line 13970
    :try_start_0
    const-string v2, "org.agoo.android.sudo.%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 13971
    invoke-static {p0}, Lorg/android/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 13970
    invoke-static {v2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 13972
    invoke-static {p0}, Lorg/android/agoo/impl/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 13973
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 13974
    invoke-static {v6, p2}, Lcom/umeng/message/proguard/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 13976
    const-string v8, "ElectionService"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "setCurrentSudo,password="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ",data="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ",key="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 13979
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 13978
    invoke-static {v6, v2, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :cond_3
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 773
    const-string v6, "election_result"

    invoke-virtual {v2, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 774
    const-string v6, "election_source"

    move-object/from16 v0, p5

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    const-string v6, "election_timeout"

    move-wide/from16 v0, p3

    invoke-virtual {v2, v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 776
    const-string v6, "org.agoo.android.intent.action.ELECTION_RESULT_V4"

    .line 777
    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 778
    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 779
    invoke-static {p0}, Lorg/android/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 780
    invoke-virtual {v2, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    sget-object v6, Lorg/android/agoo/impl/a;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 782
    const-string v6, "eventId"

    sget-object v7, Lorg/android/agoo/impl/a;->c:Ljava/lang/String;

    .line 783
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 786
    :cond_4
    sput-object p0, Lorg/android/agoo/impl/a;->f:Landroid/content/Context;

    .line 787
    invoke-static {p0, v4}, Lorg/android/a;->a(Landroid/content/Context;Z)V

    .line 788
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 789
    invoke-static {p2, v2}, Lorg/android/agoo/impl/a;->a(Ljava/lang/String;Landroid/content/Intent;)V

    .line 791
    const-string v2, "ElectionService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "lastSudoPack="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string v6, "ElectionService"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v2, "!TextUtils.isEmpty(lastSudoPack)="

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 795
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 792
    invoke-static {v6, v2}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const-string v2, "ElectionService"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "!TextUtils.equals(currentSudoPack, lastSudoPack)="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 797
    invoke-static {p2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 796
    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 800
    invoke-static {p2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 802
    const-string v2, "ElectionService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "noticeElectionResult[lastSudoPack:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]stop"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 805
    const-string v3, "election_result"

    .line 806
    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 807
    const-string v3, "election_source"

    move-object/from16 v0, p5

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    const-string v3, "election_timeout"

    move-wide/from16 v0, p3

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 809
    const-string v3, "org.agoo.android.intent.action.ELECTION_RESULT_V4"

    .line 810
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    invoke-virtual {v2, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 812
    invoke-static {p0}, Lorg/android/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 813
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 815
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 816
    invoke-static {v5, v2}, Lorg/android/agoo/impl/a;->a(Ljava/lang/String;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 13981
    :catch_0
    move-exception v2

    .line 13982
    const-string v6, "ElectionService"

    const-string v7, "setCurrentSudo"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 13983
    invoke-static {}, Lorg/android/agoo/f/b;->a()Lorg/android/agoo/f/b;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "set_CurrentSudo"

    aput-object v8, v7, v4

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "exp="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13984
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v3

    .line 13983
    invoke-virtual {v6, p0}, Lorg/android/agoo/f/b;->b(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 795
    goto/16 :goto_2

    :cond_6
    move v3, v4

    .line 797
    goto/16 :goto_3
.end method

.method private static a(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 853
    :try_start_0
    sget-object v0, Lorg/android/agoo/impl/a;->h:Landroid/os/Handler;

    new-instance v1, Lorg/android/agoo/impl/a$e;

    invoke-direct {v1, p0, p1}, Lorg/android/agoo/impl/a$e;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    :goto_0
    return-void

    .line 854
    :catch_0
    move-exception v0

    .line 855
    const-string v1, "ElectionService"

    const-string v2, "noticeElectionBindService error >>"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)I
    .locals 4

    .prologue
    .line 69
    const/4 v0, -0x1

    .line 71
    if-eqz p0, :cond_0

    .line 72
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 73
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 75
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 76
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 83
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static final b(Landroid/content/pm/PackageInfo;)J
    .locals 5

    .prologue
    .line 144
    const-wide/16 v0, -0x1

    .line 146
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 147
    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 151
    iget-wide v0, p0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    :goto_0
    return-wide v0

    .line 154
    :catch_0
    move-exception v2

    .line 155
    const-string v3, "ElectionService"

    const-string v4, "registerApp"

    invoke-static {v3, v4, v2}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lorg/android/agoo/impl/a;->h:Landroid/os/Handler;

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/util/Map;)Lorg/android/agoo/impl/a$d;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lorg/android/agoo/impl/a$d;"
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 697
    new-instance v7, Lorg/android/agoo/impl/a$d;

    invoke-direct {v7}, Lorg/android/agoo/impl/a$d;-><init>()V

    .line 698
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 699
    const-string v0, "ElectionService"

    const-string v1, "localElection failed [null == packMap || 0 >= packMap.size()]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    const-string v0, "localElection"

    invoke-virtual {v7, v0}, Lorg/android/agoo/impl/a$d;->b(Ljava/lang/String;)V

    .line 702
    const-string v0, "[null == packMap || 0 >= packMap.size()"

    invoke-virtual {v7, v0}, Lorg/android/agoo/impl/a$d;->a(Ljava/lang/String;)V

    .line 703
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lorg/android/agoo/impl/a$d;->a(Z)V

    move-object v0, v7

    .line 737
    :goto_0
    return-object v0

    .line 707
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 708
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 710
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-wide v2, v4

    .line 713
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 714
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 715
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 716
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 717
    cmp-long v0, v8, v2

    if-lez v0, :cond_2

    .line 719
    invoke-interface {v10}, Ljava/util/List;->clear()V

    move-wide v2, v8

    .line 721
    :cond_2
    cmp-long v0, v8, v2

    if-nez v0, :cond_1

    .line 722
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 725
    :cond_3
    sget-object v0, Lorg/android/agoo/impl/a;->b:Ljava/util/Random;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 726
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    .line 727
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 728
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 729
    const-string v1, "localElection"

    invoke-virtual {v7, v1}, Lorg/android/agoo/impl/a$d;->b(Ljava/lang/String;)V

    .line 730
    invoke-virtual {v7, v0}, Lorg/android/agoo/impl/a$d;->c(Ljava/lang/String;)V

    .line 731
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lorg/android/agoo/impl/a$d;->a(Z)V

    .line 732
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 733
    const-string v0, "ElectionService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sudoPack==currentPack[:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    :goto_2
    const-string v6, "local"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Lorg/android/agoo/impl/a;->a(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;JLjava/lang/String;)V

    move-object v0, v7

    .line 737
    goto/16 :goto_0

    :cond_4
    move-object v3, v0

    goto :goto_2
.end method

.method static b(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 220
    if-eqz p0, :cond_1

    .line 221
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 3245
    :try_start_1
    invoke-static {p0}, Lorg/android/agoo/impl/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 3246
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3247
    invoke-static {p0}, Lorg/android/a;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 3248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3249
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    .line 223
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 225
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 226
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    const-string v2, "ElectionService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unRegisterApp["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 231
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 241
    :cond_1
    :goto_1
    return-void

    .line 3253
    :cond_2
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 3254
    if-eqz v3, :cond_0

    .line 3257
    const-string v4, "org.agoo.android.packs_v1.%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 3258
    invoke-static {v3, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3260
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3263
    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Lcom/umeng/message/proguard/q;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 3265
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3268
    const-string v4, "ElectionService"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "unRegister old appInfo["

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3269
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3270
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 3271
    const-string v1, "ElectionService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "unRegister save["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "]"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3273
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3272
    invoke-static {v0, v1}, Lcom/umeng/message/proguard/q;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3275
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 3274
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 3277
    :catch_0
    move-exception v0

    .line 3278
    :try_start_4
    const-string v1, "ElectionService"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3279
    invoke-static {}, Lorg/android/agoo/f/b;->a()Lorg/android/agoo/f/b;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "get_CurrentSudo"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "exp="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3280
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 3279
    invoke-virtual {v1, p0}, Lorg/android/agoo/f/b;->b(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 238
    :catch_1
    move-exception v0

    .line 239
    const-string v1, "ElectionService"

    const-string v2, "unRegisterApp"

    invoke-static {v1, v2, v0}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method private static final b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 998
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1005
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    .line 1004
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1007
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 1016
    :goto_0
    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 1023
    :goto_1
    if-nez v2, :cond_0

    .line 1024
    :try_start_3
    const-string v1, "ElectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkPackage[pack:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][clientApplicationInfo == null][disabled]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    :goto_2
    return v0

    :catch_0
    move-exception v2

    move-object v2, v1

    goto :goto_1

    .line 1029
    :cond_0
    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_2

    .line 1030
    const-string v1, "ElectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkPackage[pack:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][disabled]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 1046
    :catch_1
    move-exception v0

    .line 1047
    const-string v1, "ElectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkSudoPack error,e="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    :cond_1
    const/4 v0, 0x1

    goto :goto_2

    .line 1036
    :cond_2
    const/4 v2, 0x0

    :try_start_4
    invoke-virtual {v3, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v1

    .line 1041
    :goto_3
    if-nez v1, :cond_1

    .line 1042
    :try_start_5
    const-string v1, "ElectionService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkPackage[pack:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "][packageInfo == null][disabled]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/message/proguard/bn;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_3

    :catch_3
    move-exception v2

    goto :goto_0
.end method

.method private static final c(Landroid/content/Context;)J
    .locals 5

    .prologue
    .line 123
    const-wide/16 v0, -0x1

    .line 125
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 126
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 128
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 130
    const/16 v4, 0x9

    if-lt v3, v4, :cond_0

    .line 134
    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_0
    :goto_0
    return-wide v0

    .line 137
    :catch_0
    move-exception v2

    .line 138
    const-string v3, "ElectionService"

    const-string v4, "registerApp"

    invoke-static {v3, v4, v2}, Lcom/umeng/message/proguard/bn;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static final d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 959
    invoke-static {p0}, Lcom/umeng/message/proguard/bk;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 960
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 961
    const-string v0, "ElectionService"

    const-string v1, "getPassword[utdid==null]"

    invoke-static {v0, v1}, Lcom/umeng/message/proguard/bn;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    const-string v0, "17984173941739471471917341"

    .line 964
    :cond_0
    return-object v0
.end method
