.class final Lcom/crashlytics/android/a/c;
.super Ljava/lang/Object;
.source "AnswersEventsHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/services/e/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/crashlytics/android/a/b;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/a/b;Lio/fabric/sdk/android/services/e/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/crashlytics/android/a/c;->c:Lcom/crashlytics/android/a/b;

    iput-object p2, p0, Lcom/crashlytics/android/a/c;->a:Lio/fabric/sdk/android/services/e/b;

    iput-object p3, p0, Lcom/crashlytics/android/a/c;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/a/c;->c:Lcom/crashlytics/android/a/b;

    iget-object v0, v0, Lcom/crashlytics/android/a/b;->g:Lcom/crashlytics/android/a/aa;

    iget-object v1, p0, Lcom/crashlytics/android/a/c;->a:Lio/fabric/sdk/android/services/e/b;

    iget-object v2, p0, Lcom/crashlytics/android/a/c;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/crashlytics/android/a/aa;->a(Lio/fabric/sdk/android/services/e/b;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "Answers"

    const-string v3, "Failed to set analytics settings data"

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
