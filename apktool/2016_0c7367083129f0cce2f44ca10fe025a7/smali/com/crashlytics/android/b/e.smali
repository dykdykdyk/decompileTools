.class public final Lcom/crashlytics/android/b/e;
.super Lio/fabric/sdk/android/o;
.source "Beta.java"

# interfaces
.implements Lio/fabric/sdk/android/services/b/s;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/o",
        "<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/fabric/sdk/android/services/b/s;"
    }
.end annotation


# instance fields
.field private final a:Lio/fabric/sdk/android/services/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/fabric/sdk/android/services/a/b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/crashlytics/android/b/j;

.field private c:Lcom/crashlytics/android/b/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lio/fabric/sdk/android/o;-><init>()V

    .line 39
    new-instance v0, Lio/fabric/sdk/android/services/a/b;

    invoke-direct {v0}, Lio/fabric/sdk/android/services/a/b;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/b/e;->a:Lio/fabric/sdk/android/services/a/b;

    .line 40
    new-instance v0, Lcom/crashlytics/android/b/j;

    invoke-direct {v0}, Lcom/crashlytics/android/b/j;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/b/e;->b:Lcom/crashlytics/android/b/j;

    return-void
.end method

.method private a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 143
    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/b/e;->a:Lio/fabric/sdk/android/services/a/b;

    iget-object v2, p0, Lcom/crashlytics/android/b/e;->b:Lcom/crashlytics/android/b/j;

    invoke-virtual {v0, p1, v2}, Lio/fabric/sdk/android/services/a/b;->a(Landroid/content/Context;Lio/fabric/sdk/android/services/a/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 152
    :cond_0
    :goto_0
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "Beta"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "Beta device token present: "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-object v0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Failed to load the Beta device token"

    invoke-interface {v2, v3, v4, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0

    .line 152
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static b(Landroid/content/Context;)Lcom/crashlytics/android/b/f;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 168
    .line 172
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "crashlytics-build.properties"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 174
    if-eqz v3, :cond_2

    .line 5035
    :try_start_1
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 5036
    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 6026
    const-string v1, "version_code"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6027
    const-string v1, "version_name"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 6028
    const-string v1, "build_id"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 6029
    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6031
    new-instance v1, Lcom/crashlytics/android/b/f;

    invoke-direct {v1, v4, v5, v6, v0}, Lcom/crashlytics/android/b/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 177
    :try_start_2
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v2, "Beta"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/crashlytics/android/b/f;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " build properties: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/crashlytics/android/b/f;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/crashlytics/android/b/f;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/crashlytics/android/b/f;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v1

    .line 184
    :goto_0
    if-eqz v3, :cond_0

    .line 186
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 193
    :cond_0
    :goto_1
    return-object v0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Error closing Beta build properties asset"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 181
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 182
    :goto_2
    :try_start_4
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v3

    const-string v4, "Beta"

    const-string v5, "Error reading Beta build properties"

    invoke-interface {v3, v4, v5, v1}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 184
    if-eqz v2, :cond_0

    .line 186
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 187
    :catch_2
    move-exception v1

    .line 188
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Error closing Beta build properties asset"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 184
    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_3
    if-eqz v3, :cond_1

    .line 186
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 189
    :cond_1
    :goto_4
    throw v0

    .line 187
    :catch_3
    move-exception v1

    .line 188
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "Beta"

    const-string v4, "Error closing Beta build properties asset"

    invoke-interface {v2, v3, v4, v1}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 184
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v2

    goto :goto_3

    .line 181
    :catch_4
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    move-object v2, v3

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v2, v3

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "1.2.2.142"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    const-string v0, "com.crashlytics.sdk.android:beta"

    return-object v0
.end method

.method protected final b_()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 53
    .line 1116
    iget-object v0, p0, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 54
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2097
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2123
    iget-object v0, p0, Lio/fabric/sdk/android/o;->p:Lio/fabric/sdk/android/f;

    .line 2496
    iget-object v1, v0, Lio/fabric/sdk/android/f;->d:Lio/fabric/sdk/android/a;

    .line 3123
    iget-object v0, p0, Lio/fabric/sdk/android/o;->p:Lio/fabric/sdk/android/f;

    .line 3500
    iget-object v2, v0, Lio/fabric/sdk/android/f;->c:Ljava/util/concurrent/ExecutorService;

    .line 2104
    new-instance v0, Lcom/crashlytics/android/b/b;

    invoke-direct {v0, v1, v2}, Lcom/crashlytics/android/b/b;-><init>(Lio/fabric/sdk/android/a;Ljava/util/concurrent/ExecutorService;)V

    .line 54
    :goto_0
    iput-object v0, p0, Lcom/crashlytics/android/b/e;->c:Lcom/crashlytics/android/b/l;

    .line 55
    const/4 v0, 0x1

    return v0

    .line 2107
    :cond_0
    new-instance v0, Lcom/crashlytics/android/b/k;

    invoke-direct {v0}, Lcom/crashlytics/android/b/k;-><init>()V

    goto :goto_0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 30
    .line 6060
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Beta"

    const-string v3, "Beta kit initializing..."

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6116
    iget-object v1, p0, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 7109
    iget-object v3, p0, Lio/fabric/sdk/android/o;->t:Lio/fabric/sdk/android/services/b/x;

    .line 6064
    invoke-virtual {v3}, Lio/fabric/sdk/android/services/b/x;->e()Ljava/lang/String;

    .line 6065
    invoke-direct {p0, v1}, Lcom/crashlytics/android/b/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 6067
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6068
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Beta"

    const-string v3, "A Beta device token was not found for this app"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6069
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0

    .line 6072
    :cond_0
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v4, "Beta"

    const-string v5, "Beta device token is present, checking for app updates."

    invoke-interface {v2, v4, v5}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 8055
    invoke-static {}, Lio/fabric/sdk/android/services/e/r;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object v2

    .line 7158
    invoke-virtual {v2}, Lio/fabric/sdk/android/services/e/q;->a()Lio/fabric/sdk/android/services/e/v;

    move-result-object v2

    .line 7160
    if-eqz v2, :cond_3

    .line 7161
    iget-object v4, v2, Lio/fabric/sdk/android/services/e/v;->f:Lio/fabric/sdk/android/services/e/f;

    .line 6075
    :goto_1
    invoke-static {v1}, Lcom/crashlytics/android/b/e;->b(Landroid/content/Context;)Lcom/crashlytics/android/b/f;

    move-result-object v5

    .line 8137
    if-eqz v4, :cond_1

    iget-object v2, v4, Lio/fabric/sdk/android/services/e/f;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz v5, :cond_1

    move v0, v9

    .line 6077
    :cond_1
    if-eqz v0, :cond_2

    .line 6078
    iget-object v0, p0, Lcom/crashlytics/android/b/e;->c:Lcom/crashlytics/android/b/l;

    new-instance v6, Lio/fabric/sdk/android/services/d/d;

    invoke-direct {v6, p0}, Lio/fabric/sdk/android/services/d/d;-><init>(Lio/fabric/sdk/android/o;)V

    new-instance v7, Lio/fabric/sdk/android/services/b/ah;

    invoke-direct {v7}, Lio/fabric/sdk/android/services/b/ah;-><init>()V

    new-instance v8, Lio/fabric/sdk/android/services/network/b;

    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    invoke-direct {v8, v2}, Lio/fabric/sdk/android/services/network/b;-><init>(Lio/fabric/sdk/android/r;)V

    move-object v2, p0

    invoke-interface/range {v0 .. v8}, Lcom/crashlytics/android/b/l;->a(Landroid/content/Context;Lcom/crashlytics/android/b/e;Lio/fabric/sdk/android/services/b/x;Lio/fabric/sdk/android/services/e/f;Lcom/crashlytics/android/b/f;Lio/fabric/sdk/android/services/d/c;Lio/fabric/sdk/android/services/b/q;Lio/fabric/sdk/android/services/network/l;)V

    .line 6089
    :cond_2
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 7164
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public final e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lio/fabric/sdk/android/services/b/y;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 113
    .line 4109
    iget-object v0, p0, Lio/fabric/sdk/android/o;->t:Lio/fabric/sdk/android/services/b/x;

    .line 113
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/b/x;->e()Ljava/lang/String;

    .line 4116
    iget-object v0, p0, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 114
    invoke-direct {p0, v0}, Lcom/crashlytics/android/b/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 119
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    sget-object v2, Lio/fabric/sdk/android/services/b/y;->c:Lio/fabric/sdk/android/services/b/y;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_0
    return-object v1
.end method
