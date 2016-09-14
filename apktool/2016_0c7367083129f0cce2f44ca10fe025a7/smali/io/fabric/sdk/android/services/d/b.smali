.class public final Lio/fabric/sdk/android/services/d/b;
.super Ljava/lang/Object;
.source "FileStoreImpl.java"

# interfaces
.implements Lio/fabric/sdk/android/services/d/a;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/fabric/sdk/android/o;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1116
    iget-object v0, p1, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 38
    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get directory before context has been set. Call Fabric.with() first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2116
    :cond_0
    iget-object v0, p1, Lio/fabric/sdk/android/o;->r:Landroid/content/Context;

    .line 43
    iput-object v0, p0, Lio/fabric/sdk/android/services/d/b;->a:Landroid/content/Context;

    .line 44
    invoke-virtual {p1}, Lio/fabric/sdk/android/o;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/d/b;->b:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Android/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/fabric/sdk/android/services/d/b;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/fabric/sdk/android/services/d/b;->c:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lio/fabric/sdk/android/services/d/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 3106
    if-eqz v0, :cond_2

    .line 3107
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3108
    :cond_0
    :goto_0
    return-object v0

    .line 3110
    :cond_1
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Couldn\'t create file"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    :goto_1
    const/4 v0, 0x0

    .line 82
    goto :goto_0

    .line 3113
    :cond_2
    invoke-static {}, Lio/fabric/sdk/android/f;->b()Lio/fabric/sdk/android/r;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Null File"

    invoke-interface {v0, v1, v2}, Lio/fabric/sdk/android/r;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
