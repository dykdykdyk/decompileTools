.class final Lu/aly/dc;
.super Ljava/lang/Object;
.source "UMCCDBHelper.java"


# static fields
.field private static final a:Lu/aly/db;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 24
    new-instance v0, Lu/aly/db;

    invoke-static {}, Lu/aly/db;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lu/aly/db;->a()Landroid/content/Context;

    move-result-object v2

    .line 1101
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/data/data/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/databases/cc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    const-string v3, "cc.db"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lu/aly/db;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;B)V

    sput-object v0, Lu/aly/dc;->a:Lu/aly/db;

    return-void
.end method

.method static synthetic a()Lu/aly/db;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lu/aly/dc;->a:Lu/aly/db;

    return-object v0
.end method
