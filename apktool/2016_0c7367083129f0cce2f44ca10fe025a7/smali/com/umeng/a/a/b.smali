.class public Lcom/umeng/a/a/b;
.super Ljava/lang/Object;
.source "UmengMessageDeviceConfig.java"


# static fields
.field protected static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/umeng/a/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 709
    :try_start_0
    const-class v0, Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 710
    if-eqz v0, :cond_0

    .line 711
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 712
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 717
    :goto_0
    return v0

    .line 715
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 717
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 218
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 221
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x400

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 222
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 224
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 234
    :goto_0
    if-eqz v0, :cond_0

    .line 235
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 238
    :cond_0
    return-object v0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    :try_start_2
    sget-object v2, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    const-string v3, "Could not read from file /proc/cpuinfo"

    invoke-static {v2, v3, v0}, Lcom/umeng/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    .line 232
    goto :goto_0

    .line 230
    :catch_1
    move-exception v0

    .line 231
    sget-object v2, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    const-string v3, "Could not open file /proc/cpuinfo"

    invoke-static {v2, v3, v0}, Lcom/umeng/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 128
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 129
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 596
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 598
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 597
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 600
    if-eqz v0, :cond_0

    .line 601
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 602
    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 611
    :goto_0
    return-object v0

    .line 607
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 609
    :cond_0
    sget-object v0, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    const-string v1, "Could not read meta-data %s from AndroidManifest.xml."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 308
    if-nez v0, :cond_0

    .line 309
    const-string v0, ""

    .line 311
    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 145
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "Unknown"

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 250
    const-string v0, "phone"

    .line 251
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 253
    if-nez v0, :cond_0

    .line 254
    sget-object v1, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    const-string v2, "No IMEI."

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_0
    const-string v1, ""

    .line 259
    :try_start_0
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcom/umeng/a/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 266
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 267
    sget-object v0, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    const-string v1, "No IMEI."

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    invoke-static {p0}, Lcom/umeng/a/a/b;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 270
    sget-object v0, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    const-string v1, "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead."

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    sget-object v1, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDeviceId: Secure.ANDROID_ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    sget-object v0, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    const-string v1, "Failed to take Secure.ANDROID_ID as IMEI. Try to use Serial_number instead."

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-static {}, Lcom/umeng/a/a/b;->b()Ljava/lang/String;

    move-result-object v0

    .line 279
    sget-object v1, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getDeviceId: Serial_number: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_1
    return-object v0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    sget-object v2, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    const-string v3, "No IMEI."

    invoke-static {v2, v3, v0}, Lcom/umeng/a/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 295
    if-nez v0, :cond_0

    .line 296
    const-string v0, ""

    .line 298
    :cond_0
    return-object v0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    invoke-static {p0}, Lcom/umeng/a/a/b;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/message/proguard/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 383
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v0, "Unknown"

    aput-object v0, v1, v2

    const-string v0, "Unknown"

    aput-object v0, v1, v3

    .line 385
    :try_start_0
    const-string v0, "connectivity"

    .line 386
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 387
    if-nez v0, :cond_0

    move-object v0, v1

    .line 407
    :goto_0
    return-object v0

    .line 390
    :cond_0
    const/4 v2, 0x1

    .line 391
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_1

    .line 393
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    .line 394
    const/4 v0, 0x0

    const-string v2, "Wi-Fi"

    aput-object v2, v1, v0

    move-object v0, v1

    .line 395
    goto :goto_0

    .line 397
    :cond_1
    const/4 v2, 0x0

    .line 398
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_2

    .line 400
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_2

    .line 401
    const/4 v2, 0x0

    const-string v3, "2G/3G"

    aput-object v3, v1, v2

    .line 402
    const/4 v2, 0x1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 403
    goto :goto_0

    :catch_0
    move-exception v0

    :cond_2
    move-object v0, v1

    .line 407
    goto :goto_0
.end method

.method public static g(Landroid/content/Context;)I
    .locals 3

    .prologue
    .line 507
    :try_start_0
    invoke-static {p0}, Lcom/umeng/a/a/b;->q(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 508
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :goto_0
    return v0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    sget-object v1, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    const-string v2, "error in getTimeZone"

    invoke-static {v1, v2, v0}, Lcom/umeng/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 516
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;)[Ljava/lang/String;
    .locals 4

    .prologue
    .line 527
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 530
    :try_start_0
    invoke-static {p0}, Lcom/umeng/a/a/b;->q(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v1

    .line 532
    if-eqz v1, :cond_0

    .line 533
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 534
    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 537
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    const/4 v1, 0x0

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    .line 539
    :cond_1
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 540
    const/4 v1, 0x1

    const-string v2, "Unknown"

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_2
    :goto_0
    return-object v0

    .line 543
    :catch_0
    move-exception v1

    .line 544
    sget-object v2, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    const-string v3, "error in getLocaleInfo"

    invoke-static {v2, v3, v1}, Lcom/umeng/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static i(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    const-string v0, "UMENG_APPKEY"

    invoke-static {p0, v0}, Lcom/umeng/a/a/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 621
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-gt v0, v1, :cond_3

    .line 623
    :try_start_0
    const-string v0, "wifi"

    .line 624
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 625
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v1}, Lcom/umeng/a/a/b;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 626
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 627
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 666
    :cond_0
    :goto_0
    return-object v0

    .line 629
    :cond_1
    sget-object v0, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    const-string v1, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0, v1}, Lcom/umeng/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :cond_2
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 632
    :catch_0
    move-exception v0

    .line 633
    sget-object v1, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not get mac address."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/a/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 636
    :cond_3
    const-string v1, ""

    .line 637
    const-string v0, ""

    .line 639
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "cat /sys/class/net/wlan0/address"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 640
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 641
    new-instance v2, Ljava/io/LineNumberReader;

    invoke-direct {v2, v3}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 643
    :cond_4
    if-eqz v1, :cond_5

    .line 644
    invoke-virtual {v2}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 645
    if-eqz v1, :cond_4

    .line 646
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 653
    :cond_5
    :goto_2
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 655
    :try_start_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/net/eth0/address"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 656
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 657
    invoke-static {v0}, Lcom/umeng/message/proguard/ad;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    .line 651
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 660
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static k(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, -0x1

    .line 677
    :try_start_0
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 678
    const-string v0, "window"

    .line 679
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    check-cast v0, Landroid/view/WindowManager;

    .line 680
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 682
    const/4 v0, 0x0

    .line 684
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x2000

    if-nez v1, :cond_2

    .line 685
    const-string v0, "noncompatWidthPixels"

    invoke-static {v3, v0}, Lcom/umeng/a/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 686
    const-string v0, "noncompatHeightPixels"

    invoke-static {v3, v0}, Lcom/umeng/a/a/b;->a(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 689
    :goto_0
    if-eq v1, v2, :cond_0

    if-ne v0, v2, :cond_1

    .line 690
    :cond_0
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 691
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 694
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 695
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 696
    const-string v1, "*"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 697
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 699
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 703
    :goto_1
    return-object v0

    .line 700
    :catch_0
    move-exception v0

    .line 701
    sget-object v1, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    const-string v2, "read resolution fail"

    invoke-static {v1, v2, v0}, Lcom/umeng/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 703
    const-string v0, "Unknown"

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 729
    :try_start_0
    const-string v0, "phone"

    .line 730
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 731
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 735
    :goto_0
    return-object v0

    .line 732
    :catch_0
    move-exception v0

    .line 733
    sget-object v1, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    const-string v2, "read carrier fail"

    invoke-static {v1, v2, v0}, Lcom/umeng/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 735
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public static m(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 804
    const-string v1, "Unknown"

    .line 806
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 808
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 807
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 810
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 811
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "UMENG_CHANNEL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 812
    if-eqz v0, :cond_1

    .line 813
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    if-eqz v0, :cond_0

    .line 827
    :goto_0
    return-object v0

    .line 817
    :cond_0
    sget-object v0, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    const-string v2, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml."

    invoke-static {v0, v2}, Lcom/umeng/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v1

    .line 826
    goto :goto_0

    .line 822
    :catch_0
    move-exception v0

    .line 823
    sget-object v2, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    const-string v3, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml."

    invoke-static {v2, v3}, Lcom/umeng/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public static n(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 837
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static o(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 847
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 848
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 867
    :try_start_0
    invoke-static {p0}, Lcom/c/a/c/c;->a(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 871
    :goto_0
    return-object v0

    .line 868
    :catch_0
    move-exception v0

    .line 869
    sget-object v1, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fail to get utdid. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/umeng/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string v0, ""

    goto :goto_0
.end method

.method private static q(Landroid/content/Context;)Ljava/util/Locale;
    .locals 3

    .prologue
    .line 558
    const/4 v0, 0x0

    .line 560
    :try_start_0
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 561
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 564
    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    if-nez v0, :cond_0

    .line 571
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 574
    :cond_0
    return-object v0

    .line 567
    :catch_0
    move-exception v1

    sget-object v1, Lcom/umeng/a/a/b;->a:Ljava/lang/String;

    const-string v2, "fail to read user config locale"

    invoke-static {v1, v2}, Lcom/umeng/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
