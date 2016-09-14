.class public Lcom/umeng/message/b/a;
.super Ljava/lang/Object;
.source "TagManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/umeng/message/b/a;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/umeng/message/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/message/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/message/b/a;->c:Landroid/content/Context;

    .line 59
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/message/b/a;
    .locals 3

    .prologue
    .line 62
    const-class v1, Lcom/umeng/message/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/message/b/a;->b:Lcom/umeng/message/b/a;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/umeng/message/b/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/umeng/message/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/message/b/a;->b:Lcom/umeng/message/b/a;

    .line 66
    :cond_0
    sget-object v0, Lcom/umeng/message/b/a;->b:Lcom/umeng/message/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
