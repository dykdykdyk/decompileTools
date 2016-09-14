.class final Lcom/crashlytics/android/core/aw;
.super Ljava/lang/Object;
.source "DialogStringResolver.java"


# instance fields
.field final a:Lio/fabric/sdk/android/services/e/o;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/fabric/sdk/android/services/e/o;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/crashlytics/android/core/aw;->b:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/crashlytics/android/core/aw;->a:Lio/fabric/sdk/android/services/e/o;

    .line 42
    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/crashlytics/android/core/aw;->b:Landroid/content/Context;

    invoke-static {v0, p1}, Lio/fabric/sdk/android/services/b/l;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1113
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1104
    :goto_0
    if-eqz v1, :cond_2

    :goto_1
    return-object p2

    .line 1113
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object p2, v0

    .line 93
    goto :goto_1
.end method
