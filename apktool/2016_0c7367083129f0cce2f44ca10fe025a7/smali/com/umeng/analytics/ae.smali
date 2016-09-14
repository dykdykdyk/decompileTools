.class public final Lcom/umeng/analytics/ae;
.super Ljava/lang/Object;
.source "StoreHelper.java"


# instance fields
.field public a:Ljava/io/File;

.field public b:Ljava/io/FilenameFilter;

.field private final c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 333
    const-string v0, ".um"

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/ae;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    const/16 v0, 0xa

    iput v0, p0, Lcom/umeng/analytics/ae;->c:I

    .line 425
    new-instance v0, Lcom/umeng/analytics/ag;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/ag;-><init>(Lcom/umeng/analytics/ae;)V

    iput-object v0, p0, Lcom/umeng/analytics/ae;->b:Ljava/io/FilenameFilter;

    .line 337
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/analytics/ae;->a:Ljava/io/File;

    .line 338
    iget-object v0, p0, Lcom/umeng/analytics/ae;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/ae;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/ae;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 341
    :cond_1
    return-void
.end method
