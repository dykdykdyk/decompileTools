.class final Lcom/crashlytics/android/core/ao;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/crashlytics/android/core/h;

.field private final b:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/h;Ljava/io/File;)V
    .locals 0

    .prologue
    .line 1288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1289
    iput-object p1, p0, Lcom/crashlytics/android/core/ao;->a:Lcom/crashlytics/android/core/h;

    .line 1290
    iput-object p2, p0, Lcom/crashlytics/android/core/ao;->b:Ljava/io/File;

    .line 1291
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/crashlytics/android/core/ao;->a:Lcom/crashlytics/android/core/h;

    .line 2116
    iget-object v0, v0, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 1295
    invoke-static {v0}, Lio/fabric/sdk/android/services/b/l;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1310
    :cond_0
    :goto_0
    return-void

    .line 1299
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    const-string v2, "Attempting to send crash report at time of crash..."

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3055
    invoke-static {}, Lio/fabric/sdk/android/services/e/r;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object v0

    .line 1301
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/e/q;->a()Lio/fabric/sdk/android/services/e/v;

    move-result-object v0

    .line 1302
    iget-object v1, p0, Lcom/crashlytics/android/core/ao;->a:Lcom/crashlytics/android/core/h;

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/core/h;->a(Lio/fabric/sdk/android/services/e/v;)Lcom/crashlytics/android/core/ar;

    move-result-object v0

    .line 1306
    if-eqz v0, :cond_0

    .line 1307
    new-instance v1, Lcom/crashlytics/android/core/by;

    iget-object v2, p0, Lcom/crashlytics/android/core/ao;->a:Lcom/crashlytics/android/core/h;

    .line 3715
    iget-object v2, v2, Lcom/crashlytics/android/core/h;->j:Ljava/lang/String;

    .line 1307
    invoke-direct {v1, v2, v0}, Lcom/crashlytics/android/core/by;-><init>(Ljava/lang/String;Lcom/crashlytics/android/core/ar;)V

    new-instance v0, Lcom/crashlytics/android/core/cc;

    iget-object v2, p0, Lcom/crashlytics/android/core/ao;->b:Ljava/io/File;

    invoke-static {}, Lcom/crashlytics/android/core/ab;->c()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/crashlytics/android/core/cc;-><init>(Ljava/io/File;Ljava/util/Map;)V

    invoke-virtual {v1, v0}, Lcom/crashlytics/android/core/by;->a(Lcom/crashlytics/android/core/bx;)Z

    goto :goto_0
.end method
