.class final Lcom/crashlytics/android/core/af;
.super Ljava/lang/Object;
.source "CrashlyticsUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/crashlytics/android/core/ab;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/core/ab;)V
    .locals 0

    .prologue
    .line 703
    iput-object p1, p0, Lcom/crashlytics/android/core/af;->a:Lcom/crashlytics/android/core/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const/4 v0, 0x0

    .line 706
    iget-object v2, p0, Lcom/crashlytics/android/core/af;->a:Lcom/crashlytics/android/core/ab;

    iget-object v1, p0, Lcom/crashlytics/android/core/af;->a:Lcom/crashlytics/android/core/ab;

    sget-object v3, Lcom/crashlytics/android/core/d;->a:Ljava/io/FilenameFilter;

    invoke-static {v1, v3}, Lcom/crashlytics/android/core/ab;->a(Lcom/crashlytics/android/core/ab;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    .line 1718
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1723
    array-length v5, v3

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v3, v1

    .line 1724
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v7

    const-string v8, "CrashlyticsCore"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Found invalid session part file: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    invoke-static {v6}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1723
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1729
    :cond_0
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1733
    iget-object v1, v2, Lcom/crashlytics/android/core/ab;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1734
    iget-object v1, v2, Lcom/crashlytics/android/core/ab;->g:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 1737
    :cond_1
    new-instance v1, Lcom/crashlytics/android/core/ag;

    invoke-direct {v1, v2, v4}, Lcom/crashlytics/android/core/ag;-><init>(Lcom/crashlytics/android/core/ab;Ljava/util/Set;)V

    .line 1747
    invoke-virtual {v2, v1}, Lcom/crashlytics/android/core/ab;->a(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v1, v0

    .line 1748
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v5

    const-string v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Moving session file: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    new-instance v5, Ljava/io/File;

    iget-object v6, v2, Lcom/crashlytics/android/core/ab;->g:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1750
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v5

    const-string v6, "CrashlyticsCore"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Could not move session file. Deleting "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 1747
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1756
    :cond_3
    invoke-virtual {v2}, Lcom/crashlytics/android/core/ab;->a()V

    .line 708
    :cond_4
    return-void
.end method
