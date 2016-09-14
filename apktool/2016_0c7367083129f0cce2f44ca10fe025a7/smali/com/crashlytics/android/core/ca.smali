.class final Lcom/crashlytics/android/core/ca;
.super Lio/fabric/sdk/android/services/b/k;
.source "ReportUploader.java"


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/by;

.field private final b:F


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/by;F)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/crashlytics/android/core/ca;->a:Lcom/crashlytics/android/core/by;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/b/k;-><init>()V

    .line 146
    iput p2, p0, Lcom/crashlytics/android/core/ca;->b:F

    .line 147
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    .line 152
    .line 1162
    :try_start_0
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "CrashlyticsCore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting report processing in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/crashlytics/android/core/ca;->b:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " second(s)..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    iget v0, p0, Lcom/crashlytics/android/core/ca;->b:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1167
    :try_start_1
    iget v0, p0, Lcom/crashlytics/android/core/ca;->b:F

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1174
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/crashlytics/android/core/h;->f()Lcom/crashlytics/android/core/h;

    move-result-object v0

    .line 1745
    iget-object v2, v0, Lcom/crashlytics/android/core/h;->e:Lcom/crashlytics/android/core/ab;

    .line 1176
    iget-object v1, p0, Lcom/crashlytics/android/core/ca;->a:Lcom/crashlytics/android/core/by;

    invoke-virtual {v1}, Lcom/crashlytics/android/core/by;->a()Ljava/util/List;

    move-result-object v1

    .line 2284
    iget-object v2, v2, Lcom/crashlytics/android/core/ab;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 1178
    if-nez v2, :cond_1

    .line 1183
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 3055
    invoke-static {}, Lio/fabric/sdk/android/services/e/r;->a()Lio/fabric/sdk/android/services/e/q;

    move-result-object v2

    .line 2919
    new-instance v3, Lcom/crashlytics/android/core/n;

    invoke-direct {v3, v0}, Lcom/crashlytics/android/core/n;-><init>(Lcom/crashlytics/android/core/h;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lio/fabric/sdk/android/services/e/q;->a(Lio/fabric/sdk/android/services/e/s;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1183
    if-nez v0, :cond_2

    .line 1185
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v2, "CrashlyticsCore"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "User declined to send. Removing "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Report(s)."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/core/bx;

    .line 1188
    invoke-interface {v0}, Lcom/crashlytics/android/core/bx;->f()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v2, "CrashlyticsCore"

    const-string v3, "An unexpected error occurred while attempting to upload crash reports."

    invoke-interface {v1, v2, v3, v0}, Lio/fabric/sdk/android/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->a:Lcom/crashlytics/android/core/by;

    invoke-static {v0}, Lcom/crashlytics/android/core/by;->a(Lcom/crashlytics/android/core/by;)Ljava/lang/Thread;

    .line 159
    return-void

    .line 1169
    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    .line 1193
    :cond_2
    const/4 v0, 0x0

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    .line 1194
    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1195
    invoke-static {}, Lcom/crashlytics/android/core/h;->f()Lcom/crashlytics/android/core/h;

    move-result-object v2

    .line 3745
    iget-object v2, v2, Lcom/crashlytics/android/core/h;->e:Lcom/crashlytics/android/core/ab;

    .line 4284
    iget-object v2, v2, Lcom/crashlytics/android/core/ab;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 1195
    if-nez v2, :cond_1

    .line 1208
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v2

    const-string v3, "CrashlyticsCore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Attempting to send "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " report(s)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/core/bx;

    .line 1211
    iget-object v3, p0, Lcom/crashlytics/android/core/ca;->a:Lcom/crashlytics/android/core/by;

    invoke-virtual {v3, v0}, Lcom/crashlytics/android/core/by;->a(Lcom/crashlytics/android/core/bx;)Z

    goto :goto_3

    .line 1215
    :cond_4
    iget-object v0, p0, Lcom/crashlytics/android/core/ca;->a:Lcom/crashlytics/android/core/by;

    invoke-virtual {v0}, Lcom/crashlytics/android/core/by;->a()Ljava/util/List;

    move-result-object v0

    .line 1216
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1217
    invoke-static {}, Lcom/crashlytics/android/core/by;->b()[S

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    invoke-static {}, Lcom/crashlytics/android/core/by;->b()[S

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget-short v1, v3, v1

    int-to-long v4, v1

    .line 1219
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v1

    const-string v3, "CrashlyticsCore"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Report submisson: scheduling delayed retry in "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " seconds"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v3, v6}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1223
    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    :try_start_4
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move v1, v2

    .line 1227
    goto/16 :goto_2

    .line 1225
    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1
.end method
