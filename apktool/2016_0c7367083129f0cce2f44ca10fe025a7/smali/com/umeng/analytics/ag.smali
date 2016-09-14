.class final Lcom/umeng/analytics/ag;
.super Ljava/lang/Object;
.source "StoreHelper.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Lcom/umeng/analytics/ae;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/ae;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/umeng/analytics/ag;->a:Lcom/umeng/analytics/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 429
    const-string v0, "um"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
