.class public final Lcom/nut/blehunter/b;
.super Ljava/lang/Object;
.source "CustomUncaughtExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private b:Ljava/lang/String;

.field private c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/nut/blehunter/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 23
    iput-object p1, p0, Lcom/nut/blehunter/b;->c:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/nut/blehunter/b;->b:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 29
    invoke-static {p2}, Lcom/nut/blehunter/p;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/nut/blehunter/b;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/nut/blehunter/b;->b:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v0, v3}, Lcom/nut/blehunter/p;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 1036
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1037
    const-string v3, "com.nutspace.app.SEND_LOG"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1038
    const-string v3, "log"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    const-string v0, "file_path"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1041
    iget-object v0, p0, Lcom/nut/blehunter/b;->c:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    iget-object v0, p0, Lcom/nut/blehunter/b;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method
