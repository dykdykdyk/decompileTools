.class public final Lio/fabric/sdk/android/services/b/l;
.super Ljava/lang/Object;
.source "CommonUtils.java"


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/lang/Boolean;

.field private static final c:[C

.field private static d:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-object v0, Lio/fabric/sdk/android/services/b/l;->b:Ljava/lang/Boolean;

    .line 91
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lio/fabric/sdk/android/services/b/l;->c:[C

    .line 104
    const-wide/16 v0, -0x1

    sput-wide v0, Lio/fabric/sdk/android/services/b/l;->d:J

    .line 672
    new-instance v0, Lio/fabric/sdk/android/services/b/m;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/b/m;-><init>()V

    sput-object v0, Lio/fabric/sdk/android/services/b/l;->a:Ljava/util/Comparator;

    return-void

    .line 91
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 146
    invoke-static {}, Lio/fabric/sdk/android/services/b/n;->a()Lio/fabric/sdk/android/services/b/n;

    move-result-object v0

    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/n;->ordinal()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 524
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1773
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 1774
    if-lez v0, :cond_0

    .line 1775
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 525
    :goto_0
    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 1777
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Z)I
    .locals 6

    .prologue
    const-wide v4, 0x4058c00000000000L    # 99.0

    .line 605
    invoke-static {p0}, Lio/fabric/sdk/android/services/b/l;->c(Landroid/content/Context;)F

    move-result v0

    .line 607
    if-nez p1, :cond_0

    .line 608
    const/4 v0, 0x1

    .line 619
    :goto_0
    return v0

    .line 611
    :cond_0
    if-eqz p1, :cond_1

    float-to-double v2, v0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_1

    .line 612
    const/4 v0, 0x3

    goto :goto_0

    .line 615
    :cond_1
    if-eqz p1, :cond_2

    float-to-double v0, v0

    cmpg-double v0, v0, v4

    if-gez v0, :cond_2

    .line 616
    const/4 v0, 0x2

    goto :goto_0

    .line 619
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 4

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    int-to-long v2, p2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;)Landroid/app/ActivityManager$RunningAppProcessInfo;
    .locals 4

    .prologue
    .line 247
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 249
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 251
    const/4 v1, 0x0

    .line 254
    if-eqz v0, :cond_1

    .line 255
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 256
    iget-object v3, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 262
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 107
    const-string v0, "com.crashlytics.prefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 116
    .line 117
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 124
    const-string v3, "\\s*:\\s*"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 125
    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v1

    .line 126
    array-length v3, v1

    if-le v3, v5, :cond_0

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    const/4 v3, 0x1

    aget-object v0, v1, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    :cond_1
    const-string v1, "Failed to close system file reader."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 138
    :cond_2
    :goto_0
    return-object v0

    .line 132
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 133
    :goto_1
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v3

    const-string v4, "Fabric"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error parsing "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, v1}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 135
    const-string v1, "Failed to close system file reader."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_2
    const-string v1, "Failed to close system file reader."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 132
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    const-string v1, "\\A"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 288
    const-string v0, "SHA-1"

    .line 1339
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1, v0}, Lio/fabric/sdk/android/services/b/l;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    return-object v0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    .prologue
    .line 633
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [C

    .line 635
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 636
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    .line 637
    mul-int/lit8 v3, v0, 0x2

    sget-object v4, Lio/fabric/sdk/android/services/b/l;->c:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v1, v3

    .line 638
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lio/fabric/sdk/android/services/b/l;->c:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    aput-char v2, v1, v3

    .line 635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 640
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 323
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 333
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 335
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not create hashing algorithm: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", returning empty string."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 327
    const-string v0, ""

    goto :goto_0
.end method

.method public static varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 353
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 355
    :goto_0
    if-gtz v0, :cond_1

    aget-object v3, p0, v1

    .line 357
    if-eqz v3, :cond_0

    .line 359
    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 367
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 369
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 372
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 435
    invoke-static {p0}, Lio/fabric/sdk/android/services/b/l;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Fabric"

    invoke-interface {v0, v1, p1}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_0
    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .locals 1

    .prologue
    .line 857
    if-eqz p0, :cond_0

    .line 859
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 865
    :cond_0
    :goto_0
    return-void

    .line 861
    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 706
    if-eqz p0, :cond_0

    .line 708
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 709
    :catch_0
    move-exception v0

    .line 710
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Fabric"

    invoke-interface {v1, v2, p1, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/Flushable;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 716
    if-eqz p0, :cond_0

    .line 718
    :try_start_0
    invoke-interface {p0}, Ljava/io/Flushable;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 719
    :catch_0
    move-exception v0

    .line 720
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Fabric"

    invoke-interface {v1, v2, p1, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 788
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 789
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 791
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 502
    if-eqz p0, :cond_0

    .line 503
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 505
    if-eqz v0, :cond_0

    .line 506
    const-string v1, "bool"

    invoke-static {p0, p1, v1}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 508
    if-lez v1, :cond_1

    .line 509
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    .line 520
    :cond_0
    :goto_0
    return p2

    .line 512
    :cond_1
    const-string v0, "string"

    invoke-static {p0, p1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 514
    if-lez v0, :cond_0

    .line 515
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    goto :goto_0
.end method

.method public static declared-synchronized b()J
    .locals 9

    .prologue
    .line 201
    const-class v4, Lio/fabric/sdk/android/services/b/l;

    monitor-enter v4

    :try_start_0
    sget-wide v0, Lio/fabric/sdk/android/services/b/l;->d:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 202
    const-wide/16 v2, 0x0

    .line 203
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/meminfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "MemTotal"

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 206
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 209
    :try_start_1
    const-string v0, "KB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const-string v0, "KB"

    const/16 v5, 0x400

    invoke-static {v1, v0, v5}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/lang/String;Ljava/lang/String;I)J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    .line 228
    :goto_0
    :try_start_2
    sput-wide v0, Lio/fabric/sdk/android/services/b/l;->d:J

    .line 230
    :cond_0
    sget-wide v0, Lio/fabric/sdk/android/services/b/l;->d:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-wide v0

    .line 211
    :cond_1
    :try_start_3
    const-string v0, "MB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    const-string v0, "MB"

    const/high16 v5, 0x100000

    invoke-static {v1, v0, v5}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0

    .line 215
    :cond_2
    const-string v0, "GB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    const-string v0, "GB"

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v1, v0, v5}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v0

    goto :goto_0

    .line 220
    :cond_3
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v5, "Fabric"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unexpected meminfo format while computing RAM: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-wide v0, v2

    .line 226
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v5

    const-string v6, "Fabric"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unexpected meminfo format while computing RAM: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v6, v1, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    move-wide v0, v2

    goto :goto_0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public static b(Landroid/content/Context;)J
    .locals 2

    .prologue
    .line 386
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 387
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 388
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method public static b(Ljava/lang/String;)J
    .locals 6

    .prologue
    .line 399
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v2, v1

    .line 401
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v4, v2

    .line 402
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    .line 403
    sub-long v0, v4, v0

    return-wide v0
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 301
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 303
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 307
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 308
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Could not calculate hash for app icon."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 316
    const-string v0, ""

    :goto_1
    return-object v0

    .line 311
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 445
    invoke-static {p0}, Lio/fabric/sdk/android/services/b/l;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Fabric"

    invoke-interface {v0, v1, p1}, Lio/fabric/sdk/android/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)F
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 408
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 409
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 411
    const-string v1, "level"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 412
    const-string v2, "scale"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 414
    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    return v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 798
    const-string v0, "D"

    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 455
    invoke-static {p0}, Lio/fabric/sdk/android/services/b/l;->m(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Fabric"

    invoke-interface {v0, v1, p1}, Lio/fabric/sdk/android/r;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 727
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 690
    const-string v0, "string"

    invoke-static {p0, p1, v0}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 692
    if-lez v0, :cond_0

    .line 693
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 696
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 418
    invoke-static {p0}, Lio/fabric/sdk/android/services/b/l;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 426
    :goto_0
    return v0

    .line 423
    :cond_0
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 425
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 534
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 536
    const-string v1, "sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "google_sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 545
    invoke-static {p0}, Lio/fabric/sdk/android/services/b/l;->e(Landroid/content/Context;)Z

    move-result v1

    .line 546
    sget-object v2, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 547
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    const-string v3, "test-keys"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 565
    :cond_0
    :goto_0
    return v0

    .line 552
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/app/Superuser.apk"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 561
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/xbin/su"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 562
    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 581
    .line 582
    invoke-static {p0}, Lio/fabric/sdk/android/services/b/l;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 586
    :goto_0
    invoke-static {p0}, Lio/fabric/sdk/android/services/b/l;->f(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 587
    or-int/lit8 v0, v0, 0x2

    .line 2569
    :cond_0
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/Debug;->waitingForDebugger()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v2, v1

    .line 590
    :cond_2
    if-eqz v2, :cond_3

    .line 591
    or-int/lit8 v0, v0, 0x4

    .line 594
    :cond_3
    return v0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 665
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 817
    .line 820
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p0}, Lio/fabric/sdk/android/services/b/l;->j(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 3296
    :try_start_1
    invoke-static {v2}, Lio/fabric/sdk/android/services/b/l;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 822
    invoke-static {v1}, Lio/fabric/sdk/android/services/b/l;->c(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v3

    if-eqz v3, :cond_0

    .line 826
    :goto_0
    const-string v1, "Failed to close icon input stream."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    .line 829
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v1

    .line 822
    goto :goto_0

    .line 823
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 824
    :goto_2
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v3

    const-string v4, "Fabric"

    const-string v5, "Could not calculate hash for app icon."

    invoke-interface {v3, v4, v5, v1}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 826
    const-string v1, "Failed to close icon input stream."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    const-string v1, "Failed to close icon input stream."

    invoke-static {v2, v1}, Lio/fabric/sdk/android/services/b/l;->a(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3

    .line 823
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static j(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 833
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    return v0
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 840
    const/4 v0, 0x0

    .line 842
    const-string v1, "io.fabric.android.build_id"

    const-string v2, "string"

    invoke-static {p0, v1, v2}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 844
    if-nez v1, :cond_0

    .line 845
    const-string v1, "com.crashlytics.android.build_id"

    const-string v2, "string"

    invoke-static {p0, v1, v2}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 848
    :cond_0
    if-eqz v1, :cond_1

    .line 849
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 850
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Fabric"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Build ID is: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :cond_1
    return-object v0
.end method

.method public static l(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 925
    const-string v0, "android.permission.ACCESS_NETWORK_STATE"

    .line 3871
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 3872
    if-nez v0, :cond_0

    move v0, v1

    .line 925
    :goto_0
    if-eqz v0, :cond_2

    .line 926
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 928
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 929
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 933
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 3872
    goto :goto_0

    :cond_1
    move v0, v2

    .line 931
    goto :goto_1

    :cond_2
    move v0, v1

    .line 933
    goto :goto_1
.end method

.method private static m(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 473
    sget-object v0, Lio/fabric/sdk/android/services/b/l;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 474
    const-string v0, "com.crashlytics.Trace"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lio/fabric/sdk/android/services/b/l;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/fabric/sdk/android/services/b/l;->b:Ljava/lang/Boolean;

    .line 478
    :cond_0
    sget-object v0, Lio/fabric/sdk/android/services/b/l;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
