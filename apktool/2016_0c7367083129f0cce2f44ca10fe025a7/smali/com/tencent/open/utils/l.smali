.class public final Lcom/tencent/open/utils/l;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/tencent/open/utils/l;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/lang/String;


# instance fields
.field public a:Lorg/json/JSONObject;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:I

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/utils/l;->b:Ljava/util/Map;

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/open/utils/l;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/tencent/open/utils/l;->d:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/tencent/open/utils/l;->e:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/tencent/open/utils/l;->a:Lorg/json/JSONObject;

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/open/utils/l;->f:J

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/open/utils/l;->g:I

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/open/utils/l;->h:Z

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/open/utils/l;->d:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/tencent/open/utils/l;->e:Ljava/lang/String;

    .line 1088
    const-string v0, "com.tencent.open.config.json"

    invoke-direct {p0, v0}, Lcom/tencent/open/utils/l;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1090
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/open/utils/l;->a:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    invoke-direct {p0}, Lcom/tencent/open/utils/l;->b()V

    .line 82
    return-void

    .line 1092
    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/tencent/open/utils/l;->a:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method static synthetic a(Lcom/tencent/open/utils/l;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/open/utils/l;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/open/utils/l;
    .locals 4

    .prologue
    .line 54
    sget-object v1, Lcom/tencent/open/utils/l;->b:Ljava/util/Map;

    monitor-enter v1

    .line 55
    :try_start_0
    const-string v0, "openSDK_LOG.OpenConfig"

    const-string v2, "getInstance begin"

    invoke-static {v0, v2}, Lcom/tencent/open/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    sput-object p1, Lcom/tencent/open/utils/l;->c:Ljava/lang/String;

    .line 59
    :cond_0
    if-nez p1, :cond_1

    .line 60
    sget-object v0, Lcom/tencent/open/utils/l;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 61
    sget-object p1, Lcom/tencent/open/utils/l;->c:Ljava/lang/String;

    .line 66
    :cond_1
    :goto_0
    sget-object v0, Lcom/tencent/open/utils/l;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/open/utils/l;

    .line 67
    if-nez v0, :cond_2

    .line 68
    new-instance v0, Lcom/tencent/open/utils/l;

    invoke-direct {v0, p0, p1}, Lcom/tencent/open/utils/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 69
    sget-object v2, Lcom/tencent/open/utils/l;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_2
    const-string v2, "openSDK_LOG.OpenConfig"

    const-string v3, "getInstance end"

    invoke-static {v2, v3}, Lcom/tencent/open/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    monitor-exit v1

    return-object v0

    .line 63
    :cond_3
    const-string p1, "0"

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/tencent/open/utils/l;Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    .line 27
    .line 1220
    const-string v0, "cgi back, do update"

    invoke-virtual {p0, v0}, Lcom/tencent/open/utils/l;->b(Ljava/lang/String;)V

    .line 1221
    iput-object p1, p0, Lcom/tencent/open/utils/l;->a:Lorg/json/JSONObject;

    .line 1222
    const-string v0, "com.tencent.open.config.json"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2154
    :try_start_0
    iget-object v2, p0, Lcom/tencent/open/utils/l;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/open/utils/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2159
    :cond_0
    iget-object v2, p0, Lcom/tencent/open/utils/l;->d:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    .line 2162
    new-instance v2, Ljava/io/OutputStreamWriter;

    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 2163
    invoke-virtual {v2, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 2164
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 2165
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/open/utils/l;->f:J

    .line 27
    return-void

    .line 2167
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/tencent/open/utils/l;)I
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/open/utils/l;->g:I

    return v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 175
    iget v0, p0, Lcom/tencent/open/utils/l;->g:I

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "update thread is running, return"

    invoke-virtual {p0, v0}, Lcom/tencent/open/utils/l;->b(Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void

    .line 180
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/open/utils/l;->g:I

    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 182
    const-string v1, "appid"

    iget-object v2, p0, Lcom/tencent/open/utils/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v1, "appid_for_getting_config"

    iget-object v2, p0, Lcom/tencent/open/utils/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v1, "status_os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v1, "status_machine"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v1, "status_version"

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "sdkv"

    const-string v2, "2.9.4.lite"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v1, "sdkp"

    const-string v2, "a"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v1, Lcom/tencent/open/utils/m;

    invoke-direct {v1, p0, v0}, Lcom/tencent/open/utils/m;-><init>(Lcom/tencent/open/utils/l;Landroid/os/Bundle;)V

    invoke-virtual {v1}, Lcom/tencent/open/utils/m;->start()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 106
    const-string v1, ""

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/tencent/open/utils/l;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/open/utils/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    iget-object v2, p0, Lcom/tencent/open/utils/l;->d:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 124
    :goto_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 125
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 128
    :goto_2
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 129
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 133
    :catch_0
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 137
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-object v0, v1

    .line 142
    :goto_3
    return-object v0

    :cond_0
    move-object v0, p1

    .line 112
    goto :goto_0

    :catch_1
    move-exception v0

    .line 118
    :try_start_4
    iget-object v0, p0, Lcom/tencent/open/utils/l;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v0

    goto :goto_1

    .line 120
    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 121
    goto :goto_3

    .line 131
    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v1

    .line 136
    :try_start_6
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 137
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-object v0, v1

    .line 140
    goto :goto_3

    .line 139
    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 141
    goto :goto_3

    .line 139
    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 141
    goto :goto_3

    .line 135
    :catchall_0
    move-exception v1

    .line 136
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 137
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 140
    :goto_4
    throw v1

    .line 139
    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "get "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/open/utils/l;->b(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Lcom/tencent/open/utils/l;->a()V

    .line 252
    iget-object v0, p0, Lcom/tencent/open/utils/l;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final a()V
    .locals 6

    .prologue
    .line 230
    iget-object v0, p0, Lcom/tencent/open/utils/l;->a:Lorg/json/JSONObject;

    const-string v1, "Common_frequency"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 231
    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x1

    .line 234
    :cond_0
    const v1, 0x36ee80

    mul-int/2addr v0, v1

    int-to-long v0, v0

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 237
    iget-wide v4, p0, Lcom/tencent/open/utils/l;->f:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, v0

    if-ltz v0, :cond_1

    .line 239
    invoke-direct {p0}, Lcom/tencent/open/utils/l;->b()V

    .line 241
    :cond_1
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/tencent/open/utils/l;->h:Z

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "openSDK_LOG.OpenConfig"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; appid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/open/utils/l;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/open/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_0
    return-void
.end method
